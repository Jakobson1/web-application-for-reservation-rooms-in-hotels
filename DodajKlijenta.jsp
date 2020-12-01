
<!DOCTYPE html>
<html lang="en">
<head>
	<title>Stranica za dodavanje klijenta</title>
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
	
	<div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50">
				<span class="login100-form-title p-b-41">
					Dodaj novog klijenta
				</span>
				<form class="login100-form validate-form p-b-33 p-t-5" action="DodajKlijenta" method="POST">
                                    <input type="hidden" value="<%=request.getParameter("KlijentID")%>" name="KlijentID">
						<input class="input100" type="text" name="korisnicko" placeholder="Korisnicko">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
                                                <input class="input100" type="text" name="ime" placeholder="Ime">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
                                                <input class="input100" type="text" name="prezime" placeholder="Prezime">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
                                                <input class="input100" type="text" name="sifra" placeholder="Sifra">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
                                                <input class="input100" type="text" name="mail" placeholder="E-mail">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					<input class="input100" type="text" name="drzava" placeholder="Drzava">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>

						<input class="input100" type="text" name="uloga" placeholder="Uloga">
						<span class="focus-input100" data-placeholder="&#xe80f;"></span>
					

					<div class="container-login100-form-btn m-t-32">
                                            <button class="login100-form-btn" type="submit">
                                                    Dodaj novog klijenta
						</button>
					</div>

				</form>
			</div>
		</div>
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