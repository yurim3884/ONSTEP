package kr.or.ddit.company.vo;

import java.util.Date;

import org.springframework.web.multipart.MultipartFile;

import lombok.Data;

@Data
public class CompanyVO {
private int companyId;
private String companyNumber; //법인등록번호
private String companyName;	//법인명
private String companyRepresentative; //회사대표자
private String companyBusiness;	//사업자등록번호
private String companyZip;	//우편번호
private String companyAddr1;	//주소
private String companyAddr2;	//주소
private String companyPhone;	//회사번호
private String companyEmail;	//회사메일
private Date companyEstablishment; //회사설립일자
private String companyEmployees; //직원수
private String companySmall; //기업분류
private String companyMain; //주요사업명
private String companyAverage; //직원 평균근속기간
private String companyPerson;// //직원 평균 급여금액
private String companyCap; //자본금
private String companyTake; //매출액
private String companyProfit; //영업이익
private String companyIncome; //당기순이익
private String companyIntro; //기업소개
private String companyCheck; //승인여부
private String companyLogo;
private MultipartFile logoFile; //기업로고 
}
