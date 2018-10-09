<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<script src="https://code.jquery.com/jquery-3.3.1.js"
	integrity="sha256-2Kok7MbOyxpgUVvAk/HJ2jigOSYS2auK4Pfzbm7uH60="
	crossorigin="anonymous"></script>
<script>
	$(document).ready(function(){
		$("#id").change(function(){
			
			$.ajax({
				url:'validateEmail',
				data:{id:$("#id").val()
					},
				success:function(responseText){
				$("#errMsg").text(responseText);
				
				if(responseText !=""){
					$("#id").focus();
				}
				}
			});
			
		});
		
	});
</script>
</head>
<body>
	<form action="registerUser" method="post">
		<pre>
			Id: <input type="text" name="id" id="id"/><span id="errMsg"></span>
			Name: <input type="text" name="name" />
			Email: <input type="text" name="email" />
			<input type="submit" name="register" />
		</pre>
	</form>

	<br />${result}

</body>
</html>