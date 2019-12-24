<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","koushik");
	if(request.getParameter("btn_add1")!=null)
	{
		 String email=request.getParameter("email");
		 session.putValue("email",email); 
	     String password=request.getParameter("pwd");
		 Statement st= con.createStatement(); 
         ResultSet rs=st.executeQuery("select * from signup where email='"+email+"' and password='"+password+"'"); 
		 if((!(email.equals(null) || email.equals("")) && !(password.equals(null) || password.equals(""))))
			 {
              try{
				  if(rs.next())
{ 
email = rs.getString("email");
password = rs.getString("password");
if(email.equals(email) && password.equals(password))
{
session.setAttribute("email",email); 
response.sendRedirect("a6.jsp"); 
} 
}
else
response.sendRedirect("add.html");
}
catch(SQLException sqe)
{
out.println(sqe);
} 
}
	}
else
{
%>
<center><p style="color:red">Error In Login</p></center>
<% 
getServletContext().getRequestDispatcher("/add.html").include(request, response);
}
%>
</body>
</html>