<%@page import="beans.Klijent"%>
<%@page import="java.util.ArrayList"%>
<%@page import="beans.Hotel"%>
<%@page import="beans.Sobe"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <!-- Theme Made By www.w3schools.com -->
  <title>Naslovna stranica</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <link href="https://fonts.googleapis.com/css?family=Montserrat" rel="stylesheet" type="text/css">
  <link href="https://fonts.googleapis.com/css?family=Lato" rel="stylesheet" type="text/css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
  <link rel="stylesheet" type="text/css" href="css/stil.css">
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60">
    <%@page import="beans.Klijent"%>

<%@page import="java.util.ArrayList"%>
<%@page import="beans.Hotel"%>
<%@page import="beans.Sobe"%>

<% HttpSession sesija = request.getSession();
    Klijent klijent = (Klijent)sesija.getAttribute("klijent");
    %>
    
    <nav class="navbar navbar-default navbar-fixed-top">
  <div class="container">
    <div class="navbar-header">
      <button type="button" class="navbar-toggle" data-toggle="collapse" data-target="#myNavbar">
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>
        <span class="icon-bar"></span>                        
      </button>
      <a class="navbar-brand" href="#myPage">JCH</a>
    </div>
    <div class="collapse navbar-collapse" id="myNavbar">
      <ul class="nav navbar-nav navbar-right">
        
          
         <!-- Header desktop -->
		
         <li><a href="index.jsp">
             </a></li>
					

					
					
								<li><a href="index.jsp">Pocetna</a></li>
                                       <% if(klijent != null)
                                       {
                                           if(klijent.getUloga().equals("klijent")){
      %>
                                                                <li><a href="index.jsp#portfolio">Ponuda hotela</a></li>
                                                                <li><a href="mojeRezervacije.jsp">Moje rezervacije</a></li>
                                        <%}}%>
                    <!--                    <li><a href="#features">Features</a></li>
                                        <li><a href="#portfolio">Delivery</a></li>
                                        <li><a href="#ourPakeg">News</a></li>-->
                    <% if(sesija.getAttribute("idK")== null)
                    {%>
                                        <li><a href="index.jsp#portfolio">Ponuda hotela</a></li>
                                        <li><a href="registracija.jsp">Registruj se</a></li> 
                                        <li><a href="login.jsp">Prijavi se</a></li>
                                        
                                               <% }
else{
                                        if(klijent.getUloga().equals("admin"))
{
                                               %>
                                               <li><a href="klijent.jsp">Izmena Klijenta</a></li>
                                              <li><a href="sviHoteli.jsp">Izmena Hotela</a></li>
                                               <li><a href="sveSobe.jsp">Izmena Soba</a></li>

 <%}
 if(klijent.getUloga().equals("menadzer"))
{
                                               %>
                                               <li><a href="pregledRezervacije.jsp">Pregled rezervacija</a></li>
 <%}
if(klijent.getUloga().equals("menadzer"))
{
                                               %>
                                               <li><a href="sviHoteli.jsp">Izmena Hotela</a></li>
 <%}  
  if(klijent.getUloga().equals("menadzer"))
{
                                               %>
                                               <li><a href="sveSobe.jsp">Izmena soba</a></li>
  
                                        
        <% } } %>
        
    <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" href="#"><img style="width:20px;height:20xp;" src="images/user.png"> <%=sesija.getAttribute("ime")%>
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="Izlog">Izloguj se</a></li>
        </ul>
      </li>       
      
      			 
          
          
          
          
          
        
          
          
          
      </ul>
    </div>
  </div>
</nav>
        


<div class="jumbotron text-center">
    
  <h1>Jacob's Chain Hotels</h1> 
  <p>Proverite zasto smo najbolji!</p> 
  <form action="ObradaH" method="POST">
       
    <div class="input-group">
        <input type="text" class="form-control" name="imeH" size="50" placeholder="Unesite naziv hotela za pretragu">
      <div class="input-group-btn">
          <button type="submit" class="btn btn-danger" >Pretrazi</button>
      </div>
    </div>
      <% String msg = (String)request.getAttribute("msg");
        if(msg != null)
        {%>
            <div style="margin-top:150px;" class="alert alert-success">
  <strong><%= msg %></strong>
</div>
       <% }
       msg = null;
    %>
  </form>
</div>
  
  

<!-- Container (About Section) -->
<div id="about" class="container-fluid">
  <div class="row">
    <div class="col-sm-8">
      <h2>Informacije o lancu hotela</h2><br>
      
      <p>Jacob's Chain Hotels,nastao je 1990 godine kao drustvo sa ogranicenom odgovornoscu.U posedu imovine nalazio se samo jedan hotel,da bi ubrzo nakon 5 godina,poslovanje prosirili na jos dva hotela u skladu sa napretkom naseg poslovanja.Zelimo da obezbedimo da se nasi klijenti osecaju zadovoljno,pridrzavajauci se strogo formalnih pravila poslovanja.</p>
    </div>
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-signal logo"></span>
    </div>
  </div>
</div>

<div class="container-fluid bg-grey">
  <div class="row">
    <div class="col-sm-4">
      <span class="glyphicon glyphicon-globe logo slideanim"></span>
    </div>
    <div class="col-sm-8">
      <h2>Nase vrednosti</h2><br>
      <h4><strong>Misija</strong> U Jacob's Chain Hotels lancu hotela zivot se ne zaustavlja kada posao pocne. Zelimo da se osecate komforno, da povecate produktivnost, da opustite svoje telo i da se osecate inspirisano, u cilju da vam da poboljsanje vremena zastoja i vreme  rada. Ponekad je sampanjac jednako vazan kao i  sastanak.</h4><br>
      <p><strong>VIZIJA:</strong>Na osnovu dugogodisnjeg iskustva i komentara klijenata,koji su pre svega zadovoljni resili smo da prosirimo nase poslovanje na jos mesta sa razlicitim destinacijama gradova i tako upotpunimo zadovoljstvo klijenata,i obezbedimo im vise mogucnosti</p>
    </div>
  </div>
</div>



<!-- Container (Portfolio Section) -->
<div id="portfolio" class="container-fluid text-center bg-grey">
  <h2>Ponuda hotela</h2><br>
  <h4>Hoteli koje nudimo</h4>
  <div class="row text-center slideanim">
    <div class="col-sm-4">
      <div class="thumbnail">
          <p> <a href="prviHotel.jsp"> <img src="css/slika.jpg" alt="resident"></a></p>
        <p><strong>Luxury Resident</strong></p>
        <p>Francuska</p>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
          <p> <a href="drugiHotel.jsp">  <img src="css/slika2.jpg" alt="continental" width="400" height="300"></a></p>
        <p><strong>Continental</strong></p>
        <p>Spanija</p>
      </div>
    </div>
    <div class="col-sm-4">
      <div class="thumbnail">
          <p><a href="treciHotel.jsp"> <img src="css/slika3.jpg" alt="Palace" width="400" height="300"></a></p>
        <p><strong>Palace</strong></p>
        <p>Crna gora</p>
      </div>
    </div>
  </div><br>
  
  



<!-- Container (Contact Section) -->
<div id="contact" class="container-fluid bg-grey">
  <h2 class="text-center">KONTAKTIRAJTE NAS</h2>
  <div class="row">
    <div class="col-sm-5">
      <p>Kontaktirajte nas a mi cemo Vam odgovoriti u najkracem roku</p>
      <p><span class="glyphicon glyphicon-map-marker"></span>Aljehinova 6</p>
      <p><span class="glyphicon glyphicon-phone"></span>+381 653318425</p>
      <p><span class="glyphicon glyphicon-envelope"></span>jch@gmail.com</p>
    </div>
    
    </div>
  </div>
</div>





<script>
$(document).ready(function(){
  // Add smooth scrolling to all links in navbar + footer link
  $(".navbar a, footer a[href='#myPage']").on('click', function(event) {
    // Make sure this.hash has a value before overriding default behavior
    if (this.hash !== "") {
      // Prevent default anchor click behavior
      event.preventDefault();

      // Store hash
      var hash = this.hash;

      // Using jQuery's animate() method to add smooth page scroll
      // The optional number (900) specifies the number of milliseconds it takes to scroll to the specified area
      $('html, body').animate({
        scrollTop: $(hash).offset().top
      }, 900, function(){
   
        // Add hash (#) to URL when done scrolling (default click behavior)
        window.location.hash = hash;
      });
    } // End if
  });
  
  $(window).scroll(function() {
    $(".slideanim").each(function(){
      var pos = $(this).offset().top;

      var winTop = $(window).scrollTop();
        if (pos < winTop + 600) {
          $(this).addClass("slide");
        }
    });
  });
})
</script>

</body>
</html>

