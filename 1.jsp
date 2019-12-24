<%
String email=(String)session.getAttribute("email");
        
        //redirect user to login page if not logged in
        if(email==null){
        	response.sendRedirect("a6.jsp");
        }
		else{
			%>
			<html>
<body>
<p>Hello World</p>
<form action="a6.jsp">
<button type="submit" value="submit">Back</button>
</form> 
</body>
</html>
	<%
			
		}
%>
