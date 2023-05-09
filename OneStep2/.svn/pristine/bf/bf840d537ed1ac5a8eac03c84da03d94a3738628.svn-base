$(document).ready(function(){
    // For file attachment
    var arr = [];
    var arr1 = [];
	var children = "";
	var children1 = "";
	var count = 0;
	var count1 = 0;
	var count2 = 0;
	var count21 = 0;
	$('#file-upload').change(function(e) {
		count2++
		if(count2 > 1){
			count++;
		}
        var file = $('#file-upload')[0].files[0].name;
		arr.push(file);
			children = '<label>' + arr[count] + '<span title="Remove Attachment" class="delete-label bs-tooltip"><i class="las la-times"></i></span></label>';
        // console.log(children);
        $(".attached-files").css({
            'display': 'block',
        });
        $(".attached-files").append(children);
         // If no file was selected, empty the preview <img>
         if(!e.target.files.length){
            return imgElement.src = '';
         } 
         // Set the <img>'s src to a reference URL to the selected file
         return imgElement.src = URL.createObjectURL(e.target.files.item(0))
	});
	
	$('#file-upload1').change(function(e) {
		count21++
		if(count21 > 1){
			count1++;
		}
        var file = $('#file-upload1')[0].files[0].name;
		arr1.push(file);
			children1 = '<label>' + arr1[count1] + '<span title="Remove Attachment" class="delete-label bs-tooltip"><i class="las la-times"></i></span></label>';
        // console.log(children1);
        $(".attached-files1").css({
            'display': 'block',
        });
        $(".attached-files1").append(children1);
         // If no file was selected, empty the preview <img>
         if(!e.target.files.length){
            return imgElement1.src = '';
         } 
         // Set the <img>'s src to a reference URL to the selected file
         return imgElement1.src = URL.createObjectURL(e.target.files.item(0))
	});
	
	
	$('.attached-files').on('click', '.delete-label',  function(event) {
        $(this).parent().remove();
        imgElement.src = '';
        $(".attached-files").css({
            'display': 'none',
        });
    });
    
	$('.attached-files1').on('click', '.delete-label',  function(event) {
        $(this).parent().remove();
        imgElement1.src = '';
        $(".attached-files1").css({
            'display': 'none',
        });
    });
    
    const imgElement = document.getElementById('image-preview');
    const imgElement1 = document.getElementById('image-preview1');
});