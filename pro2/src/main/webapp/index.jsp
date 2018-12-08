<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <script src="js/jquery-1.8.3.js" type="text/javascript"></script>
    
    <!-- show('{username:zs}') -->
    <script type="text/javascript">
    	$(function(){
		  	  /* $.get("http://localhost:8080/pro1/ServletDemo1",function(data){
		  		  alert(data);
		  	  }); */
		  	  var script =  document.createElement("script");
		  	  script.src="http://localhost:8080/pro1/ServletDemo1?backcall=show";
		  	  document.head.appendChild(script);  

    		/* $.getJSON("http://localhost:8080/pro1/ServletDemo1?callback=?", function(data){
    			  alert(data);
    		}); */
		  	  
     	});
    
    	  function show(data){
    		alert(data);
    	 }  
    	
    </script>
</head>
<body>
	
</body>
<!-- <script type="text/javascript" src="http://localhost:8080/pro1/ServletDemo1?callback=show"></script> -->

</html>
