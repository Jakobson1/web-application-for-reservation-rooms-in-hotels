<%@include file="navig.jsp"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<style>
    body{
        background-image: url(images/bg.jpg);
        padding-top: 100px;
    }
</style>
<!------ Include the above in your HEAD tag ---------->

<script src="http://ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js"></script>
<script src="http://getbootstrap.com/dist/js/bootstrap.min.js"></script>

<div class="container" >
	<div class="row">
		
        
        <div class="col-md-12">
        <h4>Prikaz svih klijenata</h4>
        <div class="table-responsive">

                
              <table id="mytable" class="table table-bordred table-striped">
                   
                   <thead>
                   
                   <th><input type="checkbox" id="checkall" /></th>
                   
                   <th>KlijentID</th>
                    <th>Korisnicko</th>
                     <th>Ime</th>
                     <th>Prezime</th>
                     <th>Sifra</th>
                     <th>Mail</th>
                     <th>Drzava</th>
                     <th>Uloga</th>
                      <th>Edit</th>
                      
                   </thead>
                                  
    <tbody>
    <%
        try{
                Class.forName("com.mysql.jdbc.Driver");
                Connection veza = DriverManager.getConnection("jdbc:mysql://localhost:3306/projekat","root","");
                Statement stmt = veza.createStatement(); 
                
                ResultSet rezultat = stmt.executeQuery("SELECT * FROM klijent");
                while(rezultat.next()){%>
                    
                
            <tr>
                <td> </td>
                <td><%= rezultat.getString("KlijentID")%></td>
                <td><%= rezultat.getString("korisnicko")%></td>
                <td><%= rezultat.getString("ime")%></td>
                <td><%= rezultat.getString("prezime")%></td>
                <td><%= rezultat.getString("sifra")%></td>
                <td><%= rezultat.getString("mail")%></td>
                <td><%= rezultat.getString("drzava")%></td>
                <td><%= rezultat.getString("uloga")%></td>

                <td class="text-center"><form action="izmeniKlijenta.jsp" method="post">
                         <input type="hidden" name="KlijentID" value="<%=rezultat.getString("KlijentID")%>">
                        <button class='btn btn-info btn-xs' href="#"><span class="glyphicon glyphicon-edit"></span> Izmeni</button>
                    </form></td>
                    <td>
                        <form action="ObrisiKlijent" method="post" >
                            <input type="hidden" name="KlijentID" value="<%=rezultat.getString("KlijentID")%>">
                            <button class="btn btn-danger btn-xs"><span class="glyphicon glyphicon-remove"></span> Obrisi</button></form></td>
            </tr>
                        <%}
                
            }
        catch(Exception ex)
        {
            
        }
        %>
   
    
    

    
   
    
   
    
    </tbody>
        
</table>
<a class="btn btn-success" href="DodajKlijenta.jsp">Dodaj novog</a>
<div class="clearfix"></div>
<ul class="pagination pull-right">
  <li class="disabled"><a href="#"><span class="glyphicon glyphicon-chevron-left"></span></a></li>
  <li class="active"><a href="#">1</a></li>
  <li><a href="#">2</a></li>
  <li><a href="#">3</a></li>
  <li><a href="#">4</a></li>
  <li><a href="#">5</a></li>
  <li><a href="#"><span class="glyphicon glyphicon-chevron-right"></span></a></li>
</ul>
                
            </div>
            
        </div>
	</div>
</div>


<div class="modal fade" id="edit" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
      <div class="modal-dialog">
    <div class="modal-content">
          <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        <h4 class="modal-title custom_align" id="Heading">Edit Your Detail</h4>
      </div>
          <div class="modal-body">
          <div class="form-group">
        <input class="form-control " type="text" placeholder="Mohsin">
        </div>
        <div class="form-group">
        
        <input class="form-control " type="text" placeholder="Irshad">
        </div>
        <div class="form-group">
        <textarea rows="2" class="form-control" placeholder="CB 106/107 Street # 11 Wah Cantt Islamabad Pakistan"></textarea>
    
        
        </div>
      </div>
          <div class="modal-footer ">
        <button type="button" class="btn btn-warning btn-lg" style="width: 100%;"><span class="glyphicon glyphicon-ok-sign"></span> Update</button>
      </div>
        </div>
    <!-- /.modal-content --> 
  </div>
      <!-- /.modal-dialog --> 
    </div>
    
    
    
    <div class="modal fade" id="delete" tabindex="-1" role="dialog" aria-labelledby="edit" aria-hidden="true">
      <div class="modal-dialog">
    <div class="modal-content">
          <div class="modal-header">
        <button type="button" class="close" data-dismiss="modal" aria-hidden="true"><span class="glyphicon glyphicon-remove" aria-hidden="true"></span></button>
        <h4 class="modal-title custom_align" id="Heading">Delete this entry</h4>
      </div>
          <div class="modal-body">
       
       <div class="alert alert-danger"><span class="glyphicon glyphicon-warning-sign"></span> Are you sure you want to delete this Record?</div>
       
      </div>
        <div class="modal-footer ">
        <button type="button" class="btn btn-success" ><span class="glyphicon glyphicon-ok-sign"></span> Yes</button>
        <button type="button" class="btn btn-default" data-dismiss="modal"><span class="glyphicon glyphicon-remove"></span> No</button>
      </div>
        </div>
    <!-- /.modal-content --> 
  </div>
      <!-- /.modal-dialog --> 
    </div>