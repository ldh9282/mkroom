<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>file upload-test</title>
<script src="https://code.jquery.com/jquery-3.6.2.min.js"></script>


</head>
<body>


<input id="file-input" type="file" name="files" multiple>

<br><br>
<button id="upload-button">업로드</button>
<button id="download-button">다운로드</button>

<script type="text/javascript">
$(document).ready(function() {
	
	$("#upload-button").on("click", function(e) {
		e.preventDefualt();
		var formData = new FormData();
		var files = $('#file-input')[0].files
		for (var i=0; i < files.length; i++) {
			
			formData.append('files', $('#file-input')[0].files[0])
		}
		
		$.ajax({
			url: '${pageContext.request.contextPath}/files/upload'
			type: 'POST'
			processData: false, 
		    contentType: false,
		    data: formData,
		    dataType: 'text',
		    success: function(response, status) {
		    	console.log("response: " + response);
		    	console.log("status: " + status);
		    }
		});
	
	});
	
	$("#download-button").on("click", function() {
		$.ajax({
			url: '${pageContext.request.contextPath}/files/download',
			type: 'GET',
			success: function(response) {
				
			}
		});
	});
});

</script>

</body>
</html>