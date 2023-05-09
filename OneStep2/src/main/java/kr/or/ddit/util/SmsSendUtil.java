package kr.or.ddit.util;

import java.io.BufferedReader;
import java.io.DataOutputStream;
import java.io.InputStreamReader;
import java.net.HttpURLConnection;
import java.net.URL;

import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

import org.apache.tomcat.util.codec.binary.Base64;

import com.google.gson.JsonArray;
import com.google.gson.JsonObject;

public class SmsSendUtil {
	
	String hostUrl = "https://sens.apigw.ntruss.com";
	String requestUrl = "/sms/v2/services/";
	String requestUrlType = "/messages";
	String serviceId = "ncp:sms:kr:304858872049:project";
	String accessKey = "yyNMxKd1AhbFACU7N50d";
	String secretKey = "4GSv86yYdf0XZU4WelyQ1fkpiBPZgA3S8BVEsB2b";
	
	String sendPhoneNum;
	public SmsSendUtil() {}
	public SmsSendUtil(String serviceId, String accessKey, String secretKey, String sendPhoneNum) {
		this.serviceId = serviceId;
		this.accessKey = accessKey;
		this.secretKey = secretKey;
		this.requestUrl += serviceId + requestUrlType;
		
		this.sendPhoneNum = sendPhoneNum;
	}
	
	public boolean sendSms(String phone, String content) throws Exception {
	    
	    HttpURLConnection conn = setUrlConnect();
	    
	    String body = setJson(phone, content);
	    
	    DataOutputStream dos = new DataOutputStream(conn.getOutputStream());
	    dos.write(body.getBytes());
	    dos.flush();
	    dos.close();
	    
	    BufferedReader br = null;
	    if(conn.getResponseCode() == 202) {
	        br = new BufferedReader(new InputStreamReader(conn.getInputStream()));
	    } else {
	        br = new BufferedReader(new InputStreamReader(conn.getErrorStream()));
	    }
	    
	    String line;
	    while((line = br.readLine()) != null) {
	        System.out.println(line);
	    }
	    
	    br.close();
	    
	    return true;
	}
	
	public String setJson(String phone, String content) {
	    
	    // JSON 을 활용한 body data 생성
	    JsonObject bodyJson = new JsonObject();
	    JsonObject toJson = new JsonObject();
	    JsonArray arrJson = new JsonArray();
	    
	    // 필수 - 메시지 Type (SMS | LMS | MMS) (소문자 가능)
	    bodyJson.addProperty("type", "SMS");
	    
	    // 필수 - 발신번호 (사전 등록된 발신번호만 사용 가능)
	    bodyJson.addProperty("from", sendPhoneNum);
	    
	    // 필수 - 기본 메시지 내용 (SMS : 최대 80byte)
	    bodyJson.addProperty("content", content);
	    
	    // 필수 - messages.to	수신번호 ('-'를 제외한 숫자만 입력 가능)
	    toJson.addProperty("to", phone);			
	    arrJson.add(toJson);
	    
	    // 필수 - messages.XXX
	    bodyJson.add("messages", arrJson);
	    
	    return bodyJson.toString();
	}
	
	public HttpURLConnection setUrlConnect() throws Exception {
		
		String apiUrl = hostUrl + requestUrl;
	    // https://sens.apigw.ntruss.com/sms/v2/services/{ServiceId}/messages
	    URL url = new URL(apiUrl);
	    
	    HttpURLConnection conn = (HttpURLConnection) url.openConnection();
	    conn.setUseCaches(false);
	    conn.setDoOutput(true);
	    conn.setDoInput(true);
	    conn.setRequestMethod("POST");
	    conn.setRequestProperty("Content-Type", "application/json;");
	    String timestamp = Long.toString(System.currentTimeMillis());
	    conn.setRequestProperty("x-ncp-apigw-timestamp", timestamp);
	    conn.setRequestProperty("x-ncp-iam-access-key", accessKey);
	    conn.setRequestProperty("x-ncp-apigw-signature-v2", makeSignature(timestamp));
	    
	    return conn;
	}
	
	public String makeSignature(String timestamp) throws Exception {
	    String space = " ";
	    String newLine = "\n";
	    String method = "POST";

	    String message = new StringBuilder()
	            .append(method)
	            .append(space)
	            .append(requestUrl)
	            .append(newLine)
	            .append(timestamp)
	            .append(newLine)
	            .append(accessKey)
	            .toString();
	    
	    SecretKeySpec signingKey =
	            new SecretKeySpec(secretKey.getBytes("UTF-8"), "HmacSHA256");
	    
	    Mac mac = Mac.getInstance("HmacSHA256");
	    mac.init(signingKey);
	    
	    byte[] rawHmac = mac.doFinal(message.getBytes("UTF-8"));
	    String encodeBase64String = Base64.encodeBase64String(rawHmac);

	    return encodeBase64String;
	}
	
}
