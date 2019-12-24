<%
String id=(String)session.getAttribute("id");
        
        //redirect user to login page if not logged in
        if(id==null){
        	response.sendRedirect("j.html");
        }
		else{
			%><html>
<body>
 <script>

$(document).ready(function() {
    function disableBack() { window.history.forward() }

    window.onload = disableBack();
    window.onpageshow = function(evt) { if (evt.persisted) disableBack() }
});
</script>
<form action="index.jsp" autocomplete="off">
<button type="submit" name="delete">delete</button>
<button type="submit" name="btn_update">Update</button>
</form>
<form action="adminlogout.jsp" >
<button type="submit" name="btn_logout">Logout</button>
</button>
</body>
</html>
<%
		}
		%>