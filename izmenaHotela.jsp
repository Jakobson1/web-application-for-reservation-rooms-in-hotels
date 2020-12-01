<%@page import="beans.Hotel"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Stranica za izmenu hotela</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
<!--===============================================================================================-->	
	<link rel="icon" type="image/png" href="images/icons/favicon.ico"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/Linearicons-Free-v1.0.0/icon-font.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animate/animate.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/css-hamburgers/hamburgers.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/animsition/css/animsition.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/select2/select2.min.css">
<!--===============================================================================================-->	
	<link rel="stylesheet" type="text/css" href="vendor/daterangepicker/daterangepicker.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
<!--===============================================================================================-->
</head>
<body>
    <% String msg = (String)request.getAttribute("msg");
        if(msg != null)
        {%>
            <div style="margin-top:150px;" class="alert alert-success">
  <strong><%= msg %></strong>
</div>
       <% }
       msg = null;
    %>
	<%
      try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection veza = DriverManager.getConnection("jdbc:mysql://localhost:3306/projekat","root","");
                Statement stmt = veza.createStatement(); 
                
                ResultSet rezultat = stmt.executeQuery("SELECT * FROM hotel where HotelID = " + request.getParameter("HotelID"));
                if(rezultat.next())
                {
      %>
	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50">
				<span class="login100-form-title p-b-41">
					Izmeni hotel
				</span>
                            <form class="login100-form validate-form p-b-33 p-t-5" action="HotelUpdate" method="POST">

					<div class="wrap-input100 validate-input" data-validate = "Enter username">
                                        <input type="hidden" value="<%=request.getParameter("HotelID")%>" name="HotelID">

						
                                        <input class="input100" type="text" name="ime" placeholder="Ime" value="<%=rezultat.getString("ime")%>">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
                                                <input class="input100" type="text" name="drzava" placeholder="Drzava" value="<%=rezultat.getString("drzava")%>">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
                                                <input class="input100" type="text" name="grad" placeholder="Grad" value="<%=rezultat.getString("grad")%>">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
                                                <input class="input100" type="text" name="adresa" placeholder="Adresa" value="<%=rezultat.getString("adresa")%>">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
                                                <input class="input100" type="text" name="ocena" placeholder="Ocena" value="<%=rezultat.getString("ocena")%>">
                                                <span class="focus-input100" data-placeholder="&#xe82a;"></span>
                                                <input class="input100" type="text" name="slika" placeholder="Slika" value="<%=rezultat.getString("slika")%>">
                                               <span class="focus-input100" data-placeholder="&#xe82a;"></span>

					</div>

					

					<div class="container-login100-form-btn m-t-32">
                                            <button class="login100-form-btn" type="submit">
                                                Izmeni hotel
						</button>
					</div>

				</form>
			</div>
		</div>
	</div>
        
        
<% }
}
      catch(Exception ex)
        {
              
        }%>
        
                
			</div>

	
	
	

	<div id="dropDownSelect1"></div>
	
<!--===============================================================================================-->
	<script src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/bootstrap/js/popper.js"></script>
	<script src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script src="vendor/daterangepicker/moment.min.js"></script>
	<script src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
<script>
         $(function(){
             $("#nav").load("nav.jsp");
         });   
        </script>
</body>
</html>