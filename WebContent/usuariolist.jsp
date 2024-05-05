<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
    <%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Aplicación Gestión de Usuarios</title>
<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.4.1/dist/css/bootstrap.min.css" integrity="sha384-Vkoo8x4CGsO3+Hhxv8T/Q5PaXtkKtu6ug5TOeNV6gBiFeWPGFN9MuhOf23Q9Ifjh" crossorigin="anonymous">
</head>
<body>
	<header>
		<nav class ="navbar navbar-expand-md navbar-dark">
			<div>
				<a ref="#" class="navbar-brand"> Gestión de usuarios </a>
			</div>
			
			<ul class="navbar-nav">
			<li><a href = "<%=request.getContextPath()%>/list"class = "nav-link">Usuarios</a>
			</li>
			
			</ul>
			
		</nav>
	</header>
	
	<div class="row">
    <!--  div class="class="alert alert-success" ngIf="message">{{message}}</div>  -->
    
    <div class="container">
        <h3 class="text-center">Listado de Usuarios</h3>
        <hr>
        <div class="container text-left">
            <a href="<%=request.getContextPath()%>/new" class="btn btn-success">Agregar Nuevo Usuario</a>
            <br>
        </div>
        <table class="table table-bordered">
            <thead>
                <tr>
                    <th>ID</th>
                    <th>Nombre</th>
                    <th>Email</th>
                    <th>Pais</th>
                    <th>Acciones</th>
                </tr>
            </thead>
			<tbody>
            <!-- for (Todo todo : todos) { -->
            <c:forEach var= "usuario" items="${listUsuarios}">
            
           		<tr>
           			<td>
           				<c:out value="${usuario.id}"/>
         			</td>
         			<td>
           				<c:out value="${usuario.nombre}"/>
         			</td>
         			<td>
           				<c:out value="${usuario.email}"/>
         			</td>
         			<td>
           				<c:out value="${usuario.pais}"/>
         			</td>
         			<td><a href="edit?id=<c:out value='${usuario.id}' />">Editar</a> &nbsp;&nbsp;&nbsp;&nbsp; <a href ="delete?id=<c:out value='${usuario.id}' />">Eliminar </a> </td>
         		</tr>
         	</c:forEach>
         	<!-- } -->
         </tbody>
         </table>
         </div>
         </div>
   
    </tbody>

    </table>

    </div>
	
	
	
</body>
</html>