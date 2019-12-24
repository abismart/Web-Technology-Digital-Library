<%@ page import="java.sql.*" %>  

<%
try
{	
	Class.forName("oracle.jdbc.driver.OracleDriver");  //load driver 
	
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","koushik"); //create connection 

	if(request.getParameter("btn_add")!=null) //check button click event not null
	{
		String name=request.getParameter("name");
		String email=request.getParameter("mail");
		String psw=request.getParameter("pwd");
		String clg=request.getParameter("college");
		String phone=request.getParameter("phone");
		
		PreparedStatement pstmt=null; //create statement 
		
		pstmt=con.prepareStatement("insert into signup(name,email,password,college,phone)values(?,?,?,?,?)"); //sql insert query 
		pstmt.setString(1,name); 
		pstmt.setString(2,email);
        pstmt.setString(3,psw);
        pstmt.setString(4,clg);
        pstmt.setString(5,phone);		
		pstmt.executeUpdate(); //execute query
		
		con.close();  //close connection 
		
		out.println("Insert Successfully...! Click Back link.");// after insert record successfully message
		
	}	
	
}
catch(Exception e)
{
	out.println(e);
}

%>