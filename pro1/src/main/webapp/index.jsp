<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-1.8.3.js" type="text/javascript"></script>
    <script type="text/javascript">
       $(function(){
    	  $.get("/pro1/ServletDemo1",function(data){
    		  alert(data);
    	  });
       });
    </script>
</head>
<body>

</body>
</html>
