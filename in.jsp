<%@ page import="java.sql.*" %>  
<%
try
{	
	Class.forName("oracle.jdbc.driver.OracleDriver");   
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","koushik"); //create connection 
    if(request.getParameter("btn_add")!=null) 
	{
		String name=request.getParameter("name");
		String email=request.getParameter("mail");
		String psw=request.getParameter("pwd");
		String clg=request.getParameter("college");
		String phone=request.getParameter("phone");
		Statement pstmt=con.createStatement(); 
		int i=pstmt.executeUpdate("insert into signup values('"+name+"','"+email+"','"+psw+"','"+clg+"','"+phone+"')"); 
	   if(i>0)
		{			
		out.println("Insert Successfully...! Click Back link.");
		}
	}	
	
}
catch(Exception e)
{
	out.println(e);
}

%>
