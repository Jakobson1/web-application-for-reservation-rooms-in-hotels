<%-- 
    Document   : prviHotel
    Created on : Feb 11, 2019, 10:36:09 PM
    Author     : Jakobson
--%>
<%@include file="navig.jsp"%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta charset="utf-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<title>Pregled soba</title>
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<meta name="description" content="" />
	<meta name="keywords" content="" />
	<meta name="author" content="" />

  <!-- Facebook and Twitter integration -->
	
	
	<!-- Animate.css -->
	<link rel="stylesheet" href="css/animate.css">
	<!-- Icomoon Icon Fonts-->
	<link rel="stylesheet" href="css/icomoon.css">
	<!-- Bootstrap  -->
	<link rel="stylesheet" href="css/bootstrap.css">

	

	<!-- Owl Carousel -->
	<link rel="stylesheet" href="css/owl.carousel.min.css">
	<link rel="stylesheet" href="css/owl.theme.default.min.css">
	
	<!-- Date Picker -->
	<link rel="stylesheet" href="css/bootstrap-datepicker.css">
	<!-- Flaticons  -->
	<link rel="stylesheet" href="fonts/flaticon/font/flaticon.css">

	<!-- Theme style  -->
	<link rel="stylesheet" href="css/style.css">

	

        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <style>
        .body{
            background-image:url('css/images/sobe/bg.jpg');
        }
    </style>
    </head>
    
    <body>
        <%
        try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection veza = DriverManager.getConnection("jdbc:mysql://localhost:3306/projekat","root","");
                Statement stmt = veza.createStatement(); 
                
                ResultSet rezultat = stmt.executeQuery("SELECT * FROM sobe WHERE ime='Child room'");
                while(rezultat.next()){%>
                
                
                		<h3 style="margin-left: 600px;margin-top: 70px;">Ponuda soba za izabrani hotel</h3>

                <div id="colorlib-rooms" class="colorlib-light-grey">
			<div class="container">
				<div class="row">
					<div class="col-md-4 room-wrap animate-box">
                                            <a href="css/images/sobe/slika4.jpg" class="room image-popup-link"><img width="360" height="300" src="<%=rezultat.getString("slika") %>"/>
</a>
						<div class="desc text-center">
							<span class="rate-star"><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full"></i><i class="icon-star-full"></i></span>
                                                        <h3><a href="rooms-suites.html"><%=rezultat.getString("ime")%></a></h3>
							<p class="price">
								<span class="currency">$</span>
                                                                <span class="price-room"><%= rezultat.getString("cenaNoc")%></span>
								<span class="per">/ po noci</span>
							</p>
							<ul>
                                                            <li><i class="icon-check"></i><%= rezultat.getString("tip")%></li>
								<li><i class="icon-check"></i>Porodicna soba </li>
								<li><i class="icon-check"></i>Besplatan Wi-Fi</li>
							</ul>
						</div>
					</div>
                                
                <% } %>
                <% } catch(Exception ex) {
                    %>
                <% } %>
                 
                    <%
        try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection veza = DriverManager.getConnection("jdbc:mysql://localhost:3306/projekat","root","");
                Statement stmt = veza.createStatement(); 
                
                ResultSet rezultat = stmt.executeQuery("SELECT * FROM sobe WHERE ime='Twins room'");
                while(rezultat.next()){%>
                
                
                		<div class="col-md-4 room-wrap animate-box">
                                    <a href="css/images/sobe/slika5.jpg" class="room image-popup-link"><img width="360" height="300" src="<%=rezultat.getString("slika") %>"/></a>

						<div class="desc text-center">
							<span class="rate-star"><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full"></i></span>
							<h3><a href="rooms-suites.html"><%=rezultat.getString("ime")%></a></h3>
							<p class="price">
								<span class="currency">$</span>
								<span class="price-room"><%=rezultat.getString("cenaNoc")%></span>
								<span class="per">/po noci</span>
							</p>
							<ul>
								<li><i class="icon-check"></i><%=rezultat.getString("tip")%></li>
								<li><i class="icon-check"></i>Soba kao iz snova</li>
								<li><i class="icon-check"></i>Uz doplatu Wi-Fi besplatno koriscene sefa</li>
							</ul>
						</div>
					</div>
                                
                <% } %>
                <% } catch(Exception ex) {
                    %>
                <% } %>
                
                <%
        try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection veza = DriverManager.getConnection("jdbc:mysql://localhost:3306/projekat","root","");
                Statement stmt = veza.createStatement(); 
                
                ResultSet rezultat = stmt.executeQuery("SELECT * FROM sobe WHERE ime='Morthy room'");
                while(rezultat.next()){%>
                
                
                		<div class="col-md-4 room-wrap animate-box">
                                 <a href="css/images/sobe/slika6.jpg" class="room image-popup-link"><img width="360" height="300" src="<%=rezultat.getString("slika") %>"/></a>

						<div class="desc text-center">
							<span class="rate-star"><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full full"></i><i class="icon-star-full"></i></span>
                                                        <h3><a href="rooms-suites.html"> <%=rezultat.getString("ime")%></a></h3>
							<p class="price">
								<span class="currency">$</span>
								<span class="price-room"><%=rezultat.getString("cenaNoc")%></span>
								<span class="per">/po noci</span>
							</p>
							<ul>
								<li><i class="icon-check"></i><%=rezultat.getString("tip")%></li>
								<li><i class="icon-check"></i>Dvokrevetna soba</li>
								<li><i class="icon-check"></i>Klima uredjaj se doplacuje</li>
							</ul>
						</div>
					</div>
                                
                <% } %>
                <% } catch(Exception ex) {
                    %>
                <% } %>
                
                
                                    <p><a class="btn btn-primary btn-book" href="rezervacijaSoba.jsp" style="margin-left: 500px;">Rezervisi sada!</a></p>

                                </div>
                        </div>
                </div>
                
                
        
        
   </body>
</html>
