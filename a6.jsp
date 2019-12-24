<%
String email=(String)session.getAttribute("email");
        
        //redirect user to login page if not logged in
        if(email==null){
        	response.sendRedirect("add.html");
        }
		else{
			%><!DOCTYPE html>
<html lang="en">
<head>
  <title>Subjects</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
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
		 font-style: oblique;
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
	   margin-top: -70px;
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
	  .ham {
  cursor: pointer;
  -webkit-tap-highlight-color: transparent;
  transition: transform 400ms;
  -moz-user-select: none;
  -webkit-user-select: none;
  -ms-user-select: none;
  user-select: none;
}
.hamRotate.active {
  transform: rotate(45deg);
}
.hamRotate180.active {
  transform: rotate(180deg);
}
.line {
  fill:none;
  transition: stroke-dasharray 400ms, stroke-dashoffset 400ms;
  stroke:#fff;
  stroke-width:5.5;
  stroke-linecap:round;
}
.ham1 .top {
  stroke-dasharray: 40 139;
}
.ham1 .bottom {
  stroke-dasharray: 40 180;
}
.ham1.active .top {
  stroke-dashoffset: -98px;
}
.ham1.active .bottom {
  stroke-dashoffset: -138px;
}
.nav{
      align-items: center;
      justify-content: center;
      display: none;
      width: 1900px;
      height: 80px;
      background-color:tomato;
      margin-left:-10px;
      margin-top:-80px;
    }
    .container .t{
      padding: 30px;
      margin-left: 120px;
    }
    h2{
      cursor: pointer;
      color: black;
      font: italic bold 32px/50px Georgia, serif;
    }
    h2:hover{
      color: white;
    }
    h2 a:hover{
      color: black;
    }
    h2 a{
      color: white;
    }
    @media only screen and (max-width: 800px) {
      .nav{
        height: 300px;
      }
}
  </style>
  <meta name="viewport" content="width=device-width, initial-scale=1">
  
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body>
 <div class="alert alert-success alert-dismissible">
    <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
    <strong>Welcome! <%
	out.println(email);
	%></strong>
  </div>
  <script>

$(document).ready(function() {
    function disableBack() { window.history.forward() }

    window.onload = disableBack();
    window.onpageshow = function(evt) { if (evt.persisted) disableBack() }
});
</script>
 <svg class="ham hamRotate ham1" id="h" viewBox="0 0 100 100" width="80" onclick="this.classList.toggle('active')">
  <path class="line top" d="m 30,33 h 40 c 0,0 9.044436,-0.654587 9.044436,-8.508902 0,-7.854315 -8.024349,-11.958003 -14.89975,-10.85914 -6.875401,1.098863 -13.637059,4.171617 -13.637059,16.368042 v 40"></path>
  <path class="line middle" d="m 30,50 h 40"></path>
  <path class="line bottom" d="m 30,67 h 40 c 12.796276,0 15.357889,-11.717785 15.357889,-26.851538 0,-15.133752 -4.786586,-27.274118 -16.667516,-27.274118 -11.88093,0 -18.499247,6.994427 -18.435284,17.125656 l 0.252538,40"></path>
</svg>
<div class="nav">   
  <div class="container t">
    <div class="row" style="float:all;margin-left: 100px;">
      <div class="col-md-4"><h2><a href="1.jsp">Profile</a></h2></div>
      <div class="col-md-4"><h2><a href="a1.html">Premium</a></h2></div>
      <div class="col-md-4"><h2><a href="a1.html">Purchase</a></h2></div>
    </div>
  </div>
  </div>
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
      <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.1.0/jquery.min.js"></script>
<script>
$(document).ready(function(){
    $(".nav").hide();
  $("#h").click(function(){
    $(".nav").slideToggle('fast');
  });
});
</script>
  <div class="container">
   <a href="logout.jsp" data-toggle="tooltip" title="LOGOUT" id="log"><i class="fa fa-power-off" style="font-size:48px;color:tomato;float:right;
  margin-top: -10px;"></i></a>
  <script>
$(document).ready(function(){
  $('[data-toggle="tooltip"]').tooltip();   
});
</script>
    <center><h1><font color="tomato">YOUR LIBRARY</font></h1></center> 
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

			
			<%
			
		}
%>
