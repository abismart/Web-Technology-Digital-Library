<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*" %> 
<%
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","koushik");
		if(request.getParameter("btn_add6")!=null)
	{
		 String id=request.getParameter("id");
		 session.putValue("id",id);
		 String password1=request.getParameter("password1");
		 Statement st= con.createStatement(); 
		 ResultSet rs=st.executeQuery("select * from admin where id='"+id+"' and password1='"+password1+"'"); 
		 		 if((!(id.equals(null) || id.equals("")) && !(password1.equals(null) || password1.equals(""))))
			 {
              try{
				  if(rs.next())
{ 
id = rs.getString("id");
password1 = rs.getString("password1");
if(id.equals(id) && password1.equals(password1))
{
session.setAttribute("id",id); 
response.sendRedirect("afterlogin.jsp"); 
} 
}
else
response.sendRedirect("j.html");
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
getServletContext().getRequestDispatcher("/j.html").include(request, response);
}
%>
</body>
</html>