<%@page import="java.sql.*" %>
<%
String id1=(String)session.getAttribute("id");
        
        //redirect user to login page if not logged in
        if(id1==null){
        	response.sendRedirect("j.html");
        }
		else{
try
{	
	Class.forName("oracle.jdbc.driver.OracleDriver");  //load driver 
	
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","koushik");  //create connection 

	if(request.getParameter("delete")!=null)
	{
		int id=Integer.parseInt(request.getParameter("delete"));
		
		PreparedStatement pstmt=null; //create statement
		
		pstmt=con.prepareStatement("delete from signup where id=? "); //sql delete query
		pstmt.setInt(1,id);
		pstmt.executeUpdate(); //execute query
		
		con.close(); //close connection
	}
}
catch(Exception e)
{
	out.println(e);
}
%>	
<html>

	<head>
	
		<title>JSP:Insert, Update, Delete using MySQL</title>
		<style type="text/css">
		
		.main
		{
			width:700px;;
			margin-left:250px;
			padding: 10px;
			border: 5px solid grey;
			
		}
		table
		{
			font-family: arial, sans-serif;
			border-collapse: collapse;
			width: 600px;
		}
		td
		{
			border: 5px solid silver;
			text-align: center;
			padding: 8px;
		}
		</style>
		
		
	</head>	
	
<body>
  <script>

$(document).ready(function() {
    function disableBack() { window.history.forward() }

    window.onload = disableBack();
    window.onpageshow = function(evt) { if (evt.persisted) disableBack() }
});
</script>
		<div class="main">
		
			
		<table>
		
			<tr>
				<th>ID</th>
				<th>Name</th>
				<th>Email</th>
				<th>Password</th>
				<th>College</th>
				<th>Phone</th>
				<th>Update</th>
				<th>Delete</th>
			</tr>
		<%
		
		try
		{	
			Class.forName("oracle.jdbc.driver.OracleDriver");  //load driver 
			
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","koushik");  //creat connection 

			PreparedStatement pstmt=null; //create statement
		
			pstmt=con.prepareStatement("select * from signup"); //sql select query  
			
			ResultSet rs=pstmt.executeQuery(); //execute query and set in resultset object rs.  
		
			while(rs.next())
			{	
		%>
				<tr>
					<td><%=rs.getInt(1)%></td>
					<td><%=rs.getString(2)%></td>
					<td><%=rs.getString(3)%></td>
					<td><%=rs.getString(4)%></td>
					<td><%=rs.getString(5)%></td>
					<td><%=rs.getString(6)%></td>
					
					<td><a href="update.jsp?edit=<%=rs.getInt(1)%> ">Edit</a></td>
					<td><a href="?delete=<%=rs.getInt(1)%> ">Delete</a></td>
					
				</tr>
				
		<%
			}
			
		}
		catch(Exception e)
		{
			out.println(e);
		}
		
		%>
		
		</table>
		
		</div>
		
		<form action="afterlogin.jsp">
				<button type="submit" value="submit">Back</button>
				</form>
				</form>
		
</body>

</html>
<%
		}
		%>
		