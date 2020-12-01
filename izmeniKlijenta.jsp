
<%@page import="beans.Klijent"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
    <!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
    <!doctype html>
<!--[if lt IE 7]>      <html class="no-js lt-ie9 lt-ie8 lt-ie7" lang=""> <![endif]-->
<!--[if IE 7]>         <html class="no-js lt-ie9 lt-ie8" lang=""> <![endif]-->
<!--[if IE 8]>         <html class="no-js lt-ie9" lang=""> <![endif]-->
<!--[if gt IE 8]><!--> <html class="no-js" lang=""> <!--<![endif]-->
    <head>
        <style>
            
        </style>
        <title>Home</title>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
        
        <link href="css/style.css" rel="stylesheet" type="text/css" media="all">
<link href="css/font-awesome.min.css" rel="stylesheet" type="text/css" media="all">
<!-- //css files -->
<!-- online-fonts -->
<link href='//fonts.googleapis.com/css?family=Lato:400,100,100italic,300,300italic,400italic,700,700italic,900,900italic' rel='stylesheet' type='text/css'><link href='//fonts.googleapis.com/css?family=Raleway+Dots' rel='stylesheet' type='text/css'>
<!--===============================================================================================-->
	<link rel="icon" type="image/png" href="images/icons/favicon.png"/>
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/bootstrap/css/bootstrap.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/font-awesome-4.7.0/css/font-awesome.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="fonts/themify/themify-icons.css">
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
	<link rel="stylesheet" type="text/css" href="vendor/slick/slick.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="vendor/lightbox2/css/lightbox.min.css">
<!--===============================================================================================-->
	<link rel="stylesheet" type="text/css" href="css/util.css">
	<link rel="stylesheet" type="text/css" href="css/main.css">
  
    </head>
    <body>
        <!--[if lt IE 8]>
            <p class="browserupgrade">You are using an <strong>outdated</strong> browser. Please <a href="http://browsehappy.com/">upgrade your browser</a> to improve your experience.</p>
        <![endif]-->

        <div id="nav">
        </div>
      <%
      try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection veza = DriverManager.getConnection("jdbc:mysql://localhost:3306/projekat","root","");
                Statement stmt = veza.createStatement(); 
                
                ResultSet rezultat = stmt.executeQuery("SELECT * FROM klijent where KlijentID = " + request.getParameter("KlijentID"));
                if(rezultat.next())
                {
      %>
        <div class="limiter">
		<div class="container-login100" style="background-image: url('images/bg-01.jpg');">
			<div class="wrap-login100 p-t-30 p-b-50">
				<span class="login100-form-title p-b-41">
					Izmeni klijenta
				</span>
                            <form class="login100-form validate-form p-b-33 p-t-5" action="SacuvajKlijent" method="POST">

					<div class="wrap-input100 validate-input" data-validate = "Enter username">
                                        <input type="hidden" value="<%=request.getParameter("KlijentID")%>" name="KlijentID">

						<input class="input100" type="text" name="korisnicko" placeholder="Korisnicko ime" value="<%= rezultat.getString("korisnicko")%>">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
                                                <input class="input100" type="text" name="ime" placeholder="Ime" value="<%= rezultat.getString("ime")%>">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
                                                <input class="input100" type="text" name="prezime" placeholder="Prezime" value="<%= rezultat.getString("prezime")%>">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
                                                <input class="input100" type="text" name="sifra" placeholder="Sifra" value="<%= rezultat.getString("sifra")%>">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
                                                <input class="input100" type="text" name="mail" placeholder="Mail" value="<%= rezultat.getString("mail")%>">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
                                                <input class="input100" type="text" name="drzava" placeholder="Drzava" value="<%= rezultat.getString("drzava")%>">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
                                                <input class="input100" type="text" name="uloga" placeholder="Uloga" value="<%= rezultat.getString("uloga")%>">
						<span class="focus-input100" data-placeholder="&#xe82a;"></span>
					</div>

					

					<div class="container-login100-form-btn m-t-32">
                                            <button class="login100-form-btn" type="submit">
                                                Izmeni klijenta
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


        

       
        <!--===============================================================================================-->
	<script type="text/javascript" src="vendor/jquery/jquery-3.2.1.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/animsition/js/animsition.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/bootstrap/js/popper.js"></script>
	<script type="text/javascript" src="vendor/bootstrap/js/bootstrap.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/select2/select2.min.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/daterangepicker/moment.min.js"></script>
	<script type="text/javascript" src="vendor/daterangepicker/daterangepicker.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/slick/slick.min.js"></script>
	<script type="text/javascript" src="js/slick-custom.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/parallax100/parallax100.js"></script>
	<script type="text/javascript">
        $('.parallax100').parallax100();
	</script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/countdowntime/countdowntime.js"></script>
<!--===============================================================================================-->
	<script type="text/javascript" src="vendor/lightbox2/js/lightbox.min.js"></script>
<!--===============================================================================================-->
	<script src="js/main.js"></script>
         <script>
         $(function(){
             $("#nav").load("nav.jsp");
         });   
        </script>

    </body>
</html>
