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
  
                                        
        <% } %>
        <% } %>
        
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
        