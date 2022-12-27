<%-- 
    Document   : socios
    Created on : 20 dic 2022, 11:02:41
    Author     : VANINA
--%>

<%@page import="modelo.SociosDAO"%>
<%@page import="java.util.List"%>
<%@page import="modelo.Socios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Gimnasio</title>  
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8" />
        <!--<meta charset="UTF-8">-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style.css" rel="stylesheet">
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"> 
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </head>
    <body>

        <div class="container">
            <div class="caja-titulo">
            <br>
            <h1>Listado de Socios del Gym</h1>
            </div>
            <div class="caja-titulo">
            <a class="btn btn-primary col-4 m-4" href="SociosController?accion=nuevo">Agregar Socio</a>
            </div>
      
            <div class="row">
       
                <table class="table table-light">
                    <thead>
                    <th>Nro Socio</th>
                    <th>Nombre</th>
                    <th>Apellido</th>
                    <th>Domicilio</th>
                    <th>Localidad</th>
                    <th>Fecha Nac.</th>
                    <th>Mail</th>
                    <th>Teléfono</th>
                    <th>Modificar</th>
                    <th>Eliminar</th>
                    </thead>
                    <%
                    List<Socios> resultado=null;
                    SociosDAO s1=new SociosDAO();
                    resultado=s1.listarSocios();
                    
                                for(int i=0;i<resultado.size();i++)
				{
				String ruta="SociosController?accion=modificar&id="+resultado.get(i).getIdSocio();	
				String rutaE="SociosController?accion=eliminar&id="+resultado.get(i).getIdSocio();
				%>                
                    
                
                    <tr>
                         <td><%=resultado.get(i).getIdSocio()%></td>
                         <td><%=resultado.get(i).getNombre()%></td>
                         <td><%=resultado.get(i).getApellido()%></td>
                         <td><%=resultado.get(i).getDireccion()%></td>
                         <td><%=resultado.get(i).getLocalidad()%></td>
                         <td><%=resultado.get(i).getFnac()%></td>
                         <td><%=resultado.get(i).getTelefono()%></td>
                         <td><%=resultado.get(i).getEmail()%></td>
                         <td class="text-center"><a href=<%=ruta%>> <img src="modif.png" width="20" height="20">  </a></td>
			 <td class="text-center"><a href=<%=rutaE%>><img src="eliminar.png" width="20" height="20">  </a></td>
                    </tr>
                    <%
                        }
                    %>
                    
                </table>
                                
            </div>
        </div>

    </body>
</html>
