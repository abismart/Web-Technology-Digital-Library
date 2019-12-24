<!DOCTYPE html>
<html lang="en">
<head>
  <title>Subjects</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <style type="text/css">
  body{
      color: white;
        width: 100%;
        height: 100%;
        background-color: black;
        position: absolute;
        overflow-x: hidden;
        background-image: url(a.c69341b7c2a85ad036d4);
        background-size: cover !important;
        font-family:"Palatino Linotype", "Book Antiqua", Palatino, serif;
    } 
    a{
  text-decoration: none;
}

/*scrollbar*/
/* width */
::-webkit-scrollbar {
  width: 10px;
}

/* Track */
::-webkit-scrollbar-track {
  box-shadow: inset 0 0 5px grey; 
  border-radius: 10px;
}
 
/* Handle */
::-webkit-scrollbar-thumb {
  background:darkgrey; 
  border-radius: 10px;
}

/* Handle on hover */
::-webkit-scrollbar-thumb:hover {
  background:black; 
  cursor:pointer;
}
    .c{
      width:200px;
      height:200px;
      box-sizing: border-box;
      border-radius: 8px;
      background-color: rgba(0,0,0,0.20);
      box-shadow: 0 0 16px rgb(255,255,255);
    }
    .c:hover{
      background-image: url(img1.jpg);
      background-size: cover;
    }
	 .d{
      width:200px;
      height:200px;
      box-sizing: border-box;
      border-radius: 8px;
      background-color: rgba(0,0,0,0.20);
      box-shadow: 0 0 16px rgb(255,255,255);
    }
    .d:hover{
      background-image: url(img2.jpg);
      background-size: cover;
    }
	 .e{
      width:200px;
      height:200px;
      box-sizing: border-box;
      border-radius: 8px;
      background-color: rgba(0,0,0,0.20);
      box-shadow: 0 0 16px rgb(255,255,255);
    }
    .e:hover{
      background-image: url(img5.jpg);
      background-size: cover;
    }
	 .ff{
      width:200px;
      height:200px;
      box-sizing: border-box;
      border-radius: 8px;
      background-color: rgba(0,0,0,0.20);
      box-shadow: 0 0 16px rgb(255,255,255);
    }
    .ff:hover{
      background-image: url(download.jpg);
      background-size: cover;
    }
	 .gg{
      width:200px;
      height:200px;
      box-sizing: border-box;
      border-radius: 8px;
      background-color: rgba(0,0,0,0.20);
      box-shadow: 0 0 16px rgb(255,255,255);
    }
    .gg:hover{
      background-image: url(img9.png);
      background-size: cover;
    }
	 .hh{
      width:200px;
      height:200px;
      box-sizing: border-box;
      border-radius: 8px;
      background-color: rgba(0,0,0,0.20);
      box-shadow: 0 0 16px rgb(255,255,255);
    }
    .hh:hover{
      background-image: url(img8.jpg);
      background-size: cover;
    }
    .container{
      margin-left:150px;
      padding: 30px;
    }
    h1{
      margin-left: -140px;
    }
 .r2{
  margin-top: 100px;
 }
 h4{
      color: tomato;
    }
    h4:hover{
      color: transparent;
    }
  </style>
</head>
<body>
<div class="alert alert-success alert-dismissible">
    <button type="button" class="close" data-dismiss="alert">&times;</button>
    <strong><center><h1>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*,java.util.*"%>
<%
try{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection con=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521:xe","system","koushik");
	if(request.getParameter("btn_add1")!=null)
	{
     String userid=request.getParameter("email"); 
     session.putValue("email",userid); 
     String password=request.getParameter("pwd"); 
     Statement st= con.createStatement(); 
     ResultSet rs=st.executeQuery("select * from signup where email='"+userid+"' and password='"+password+"'"); 
     try{
     rs.next();
     if(rs.getString("password").equals(password)&&rs.getString("email").equals(userid)) 
      { 
       out.println("Welcome " +userid); 
      } 
     else{
     out.println("Invalid password or username.");
       }
       }
catch (Exception e) {
e.printStackTrace();
out.println("Invalid Password");
}
	}
}
	catch(Exception e)
	{
		out.println(e);
	}
%>
</h1>
</center>
</strong>
  </div>
<div class="container">
    <center><h1><font color="tomato">DOWNLOAD YOUR SUBJECTS</font></h1></center> 
    <div class="row">
      <div class="col-md-4" >
        <div class="c">
          <a href="02_Computeranization And Embedded Systems, Hamacher-2012.pdf" target="_blank">
            <center><h4 style="padding:80px;margin-left:-70px;"><font>COMPUTER ARCHITECTURE</font></h4></center>  
          </a>
        </div>
      </div>
      <div class="col-md-4" >
         <div class="d">
          <a href="Abraham-Silberschatz-Operating-System-Concepts---9th2012.12.pdf" target="_blank">
            <center><h4 style="padding:80px;margin-left:-70px;"><font>OPERATING SYSTEMS</font></h4></center>  
          </a>
        </div>
      </div>
      <div class="col-md-4" >
         <div class="e">
          <a href="notes.pdf" target="_blank">
              <center><h4 style="padding:80px;margin-left:-70px;"><font>DISCRETE MATHEMATICS</font></h4></center>  
          </a>
        </div>
      </div>
    </div>
    <div class="row r2">
      <div class="col-md-4" >
         <div class="ff">
          <a href="prentice-hall-internet-and-world-wide-web-how-to-program-5th-edition-0132151006.pdf" target="_blank">
              <center><h4 style="padding:80px;margin-left:-70px;"><font>WEB TECHNOLOGY</font></h4></center>  
          </a>
        </div>
      </div>
      <div class="col-md-4" >
         <div class="gg">
          <a href="Introduction to Algorithms.pdf" target="_blank">
                <center><h4 style="padding:80px;margin-left:-70px;"><font>ALGORITHMICS</font></h4></center>  
          </a>
        </div>
      </div>
      <div class="col-md-4" >
         <div class="hh">
          <a href="SOMERVILLE.pdf" target="_blank">
              <center><h4 style="padding:80px;margin-left:-70px;"><font>SOFTWARE ENGINEERING</font></h4></center>  
          </a>
        </div>
      </div>
    </div>
  </div>
</body>
</html>