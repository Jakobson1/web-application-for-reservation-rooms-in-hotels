<%@include file="navig.jsp"%>

<!DOCTYPE html>
<html lang="en">

<head>
	<meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<!-- The above 3 meta tags *must* come first in the head; any other head content must come *after* these tags -->

	<title>Stranica za rezervaciju soba</title>

	<!-- Google font -->
	<link href="https://fonts.googleapis.com/css?family=Montserrat:400,700,900" rel="stylesheet">

	<!-- Bootstrap -->
	<link type="text/css" rel="stylesheet" href="css/rez/bootstrap.min.css" />

	<!-- Custom stlylesheet -->
	<link type="text/css" rel="stylesheet" href="css/rez/style.css" />

	<!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
	<!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
	<!--[if lt IE 9]>
		  <script src="https://oss.maxcdn.com/html5shiv/3.7.3/html5shiv.min.js"></script>
		  <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
		<![endif]-->

      
</head>

<body>
    <% String msg = (String)request.getAttribute("msg");
        if(msg != null)
        {%>
            <div style="margin-top:150px;" class="alert alert-success">
  <strong><%= msg %></strong>
  <%} %>
  
  <%
        request.getSession().getAttribute("klijent");
        %>
        
	<div id="booking" class="section">
		<div class="section-center">
			<div class="container">
				<div class="row">
					<div class="col-md-5">
						<div class="booking-cta">
							<h1>Napravite Vasu Rezervaciju!</h1>
							<p>Ako ste vec dosli do ovog koraka,zadovoljni smo vasim izborom,necete pogresiti</p>
						</div>
					</div>
					<div class="col-md-6 col-md-offset-1">
						<div class="booking-form">
							<form action="RezervacijaSoba" method="POST">
								<div class="row">
									
									
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<input class="form-control" type="tel" name="imeSobe">
											<span class="form-label">Ime sobe</span>
										</div>
									</div>
									
                                                                    <div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<input class="form-control" type="text" name="brojOsoba">
											<span class="form-label">Broj osoba</span>
										</div>
									</div>
                                                                    
								</div>
								<div class="row">
									<div class="col-md-6">
										<div class="form-group">
											<input class="form-control" type="date" required name="datumOd">
											<span class="form-label">Datum od</span>
										</div>
									</div>
									<div class="col-md-6">
										<div class="form-group">
											<input class="form-control" type="date" required name="datumDo">
											<span class="form-label">Datum do</span>
										</div>
									</div>
								</div>
								<div class="form-btn">
                                                                    <button class="submit-btn" style="background-color: #08c;">Rezervisi</button>
								</div>
							</form>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script src="js/jquery.min.js"></script>
	<script>
		$('.form-control').each(function () {
			floatedLabel($(this));
		});

		$('.form-control').on('input', function () {
			floatedLabel($(this));
		});

		function floatedLabel(input) {
			var $field = input.closest('.form-group');
			if (input.val()) {
				$field.addClass('input-not-empty');
			} else {
				$field.removeClass('input-not-empty');
			}
		}
	</script>

</body><!-- This templates was made by Colorlib (https://colorlib.com) -->

</html>