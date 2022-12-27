<%-- 
    Document   : modificar
    Created on : 20 dic 2022, 11:03:03
    Author     : VANINA
--%>

<%@page import="modelo.SociosDAO"%>
<%@page import="modelo.Socios"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Modificar Socio</title>
        <meta http-equiv="Content-Type" content="text/html" charset="UTF-8" />
        <!--<meta charset="UTF-8">-->
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link href="style.css" rel="stylesheet">
        <!--<link href="C:\Users\VANINA\Documents\NetBeansProjects\Crud22566\target\Crud22566-1.0-SNAPSHOT/style.css" rel="stylesheet">-->
        <!-- CSS only -->
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"> 
        <!-- JavaScript Bundle with Popper -->
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
    </head>
    <body>
        <div class="container">
            <div class="caja-formulario">
            <br>
            <div class="caja-titulo">
               <h1>Modificar datos Socio</h1>
            </div>
            <%String id=request.getParameter("id");
		int mid;
		mid=Integer.parseInt(id);				
		Socios resultado=null;
		SociosDAO  socio=new SociosDAO();
		resultado=socio.mostrarSocio(mid);				
            %>
            <form class="p-4" method="POST" action="SociosController?accion=actualizar">
            <div class="caja-form1">
              <div class="col-md-6">
                <label>Número Socio</label>
                <input type="text" class="form-control" id="id" name="id" value=<%=resultado.getIdSocio() %> readonly required>
              </div>
            </div>
            <br>
            <div class="caja-form1">
            <div class="col-md-6">
                <label>Nombre</label>
                <input type="text" class="form-control" id="nombre" name="nombre" value=<%=resultado.getNombre() %> required>
            </div>
            <br>
            <div class="col-md-6">
                <label>Apellido</label>
                <input type="text" class="form-control" id="apellido" name="apellido" value=<%=resultado.getApellido() %> required>
            </div>
            </div>
            <br>
            <div class="caja-form1">
            <div class="col-md-6">
                <label>Dirección</label>
                <input type="text" class="form-control" id="direccion"  name="direccion" value=<%=resultado.getDireccion() %> required>
            </div>
            <br>
            <div class="col-md-6">
                <label>Localidad</label>
                <input type="text" class="form-control" id="localidad" name="localidad" value=<%=resultado.getLocalidad() %> required>
            </div>
            </div>
              <br>
              <div class="caja-form1">
              <div class="col-md-6">
                <label>Fecha Nacimiento</label>
                <input type="date" class="form-control" id="fnac" name="fnac" value=<%=resultado.getFnac() %> required>
              </div>
              <br>
              <div class="col-md-6">
                <label>Teléfono</label>
                <input type="text" class="form-control" id="telefono" name="telefono" value=<%=resultado.getTelefono() %> required>
              </div>
            </div>
            <br>
            <div class="caja-form1">
            <div class="col-md-12">
                <label>Email</label>
                <input type="text" class="form-control" id="email" name="email" value=<%=resultado.getEmail() %> required>
              </div>
            </div>
            <br>
            <br>
             <div class="caja-form1">
            <button type="submit" class="btn btn-primary col-md-6">Guardar</button>
            <a class="btn btn-primary col-md-6" href="SociosController?accion=cancelar">Cancelar</a>
            </div>
            </form>
            <br>
            <br>
            </div> <!<!--fondo formulario -->
            </div>
    </body>
</html>
