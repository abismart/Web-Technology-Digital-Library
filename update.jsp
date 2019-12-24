<%@ page import="java.sql.*" %>
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
	
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","koushik"); // create connection 
	
	if(request.getParameter("btn_update")!=null) //check button click event not null
	{
		int hide; 
		
		String name,email,password,college,phone;
		
		hide=Integer.parseInt(request.getParameter("txt_hide")); //it is hidden id get for update record
		name=request.getParameter("name");  //txt_name
		email=request.getParameter("mail");
	    password=request.getParameter("pwd");
	    college=request.getParameter("college");
	    phone=request.getParameter("phone");	//txt_owner
		
		PreparedStatement pstmt=null; //create statement  
		
		pstmt=con.prepareStatement("update signup set name=?, email=?,password=?,college=?,phone=? where id=?"); //sql update query 
		pstmt.setString(1,name);
		pstmt.setString(2,email);
		pstmt.setString(3,password);
		pstmt.setString(4,college);
		pstmt.setString(5,phone);
		pstmt.setInt(6,hide);
		pstmt.executeUpdate(); //execute query
		
		con.close(); //connection close

		out.println("Update Successfully...! Click Back link."); //after update record successfully message
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
		
	<!--css for div main class and table-->
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
			text-align: left;
			padding: 8px;
		}
		</style>	
		
		<!-- javascript for form validation-->
		<script>
		
			function validate()
			{
				var name = document.myform.name;
				var mail = document.myform.mail;
				var pwd=document.myform.pwd;
				var clg=document.myform.college;
				var phn=document.myform.phone;
				if (name.value == "")
				{
					window.alert("please enter name ?");
					name.focus();
					return false;
				}
				if (mail.value == "")
				{
					window.alert("please enter mail ?");
					mail.focus();
					return false;
				}
				if (pwd.value == "")
				{
					window.alert("please enter password ?");
					pwd.focus();
					return false;
				}
				if (clg.value == "")
				{
					window.alert("please enter college?");
					clg.focus();
					return false;
				}
				if (phn.value == "")
				{
					window.alert("please enter phone number ?");
					phn.focus();
					return false;
				}
			}
			
		</script>
		
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

	<form method="post" name="myform"  onsubmit="return validate();">
	
		<center>
			<h1>Update Record</h1>
		</center>
		
		<table>	
		   <%
		try
		{
			Class.forName("oracle.jdbc.driver.OracleDriver"); //load driver  
		
			Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","koushik"); // create connection  
	
			if(request.getParameter("edit")!=null) 
			{
				int id=Integer.parseInt(request.getParameter("edit"));
		
				String name,email,password,college,phone;
		
				PreparedStatement pstmt=null; // create statement
				
				pstmt=con.prepareStatement("select * from signup where id=?"); // sql select query
				pstmt.setInt(1,id);
				ResultSet rs=pstmt.executeQuery(); // execute query store in resultset object rs.
				
				while(rs.next()) 
				{
					id=rs.getInt(1);
					name=rs.getString(2);
					email=rs.getString(3);
					password=rs.getString(4);
					college=rs.getString(5);
					phone=rs.getString(6);
					
			%>
			<tr>
				<td>Name</td>
				<td><input type="text" name="name" value="<%=name%>"></td>
			</tr>
			
			<tr>
				<td>Email</td>
				<td><input type="email" name="mail" value="<%=email%>"></td>
			</tr>	
				
			<tr>
				<td>Password</td>
				<td><input type="password" name="pwd" value="<%=password%>"></td>
			</tr>	
			<tr>
				<td>College</td>
				<td><input type="text" name="college" value="<%=college%>"></td>
			</tr>	
			<tr>
				<td>Phone</td>
				<td><input type="password" name="phone" value="<%=phone%>"></td>
			</tr>	
			<tr>
				<td><input type="submit" name="btn_update" value="Update"></td>	
			</tr>
				
				<input type="hidden" name="txt_hide" value="<%=id%>">
		<%
				}
			}
		}
		catch(Exception e)
		{
			out.println(e);
		}
		%>	
		</table>
		
		<center>
				<h1><a href="index.jsp">Back</a></h1>
		</center>
		
	</form>

	</div>
	

</body>

</html>
<%
		}
		%>
