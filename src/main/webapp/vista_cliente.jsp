<%-- 
    Document   : vista_cliente
    Created on : 07-06-2023, 21:18:59
    Author     : Carolina
--%>

<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
    <title>Tienda y Cliente</title>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
</head>
<body>
    <header>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="index.html">Tu Sitio Web de Marketing Digital - Usuario </a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav ml-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="index.html">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="quienessomos.html">Quienes Somos</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="servicios.html">Servicios</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="tienda.html">Tienda</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="contacto.jsp">Contacto</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">Usuario: Carolina Cerón</a>
                    </li>
                </ul>
            </div>
        </nav>
    </header>

    <div class="container-fluid">
        <div class="row">
            <div class="col-md-3">
                <!-- Menú lateral -->
                <div class="list-group">
                    <a href="#tienda" class="list-group-item list-group-item-action" data-toggle="collapse">Tienda</a>
                    <div class="collapse" id="tienda">
                        <a href="#verTienda" class="list-group-item list-group-item-action" data-toggle="tab">Ver Tienda</a>
                        <a href="#modificarTienda" class="list-group-item list-group-item-action" data-toggle="tab">Modificar Tienda</a>
                        <a href="#eliminarTienda" class="list-group-item list-group-item-action" data-toggle="tab">Eliminar Tienda</a>
                        <a href="#agregarTienda" class="list-group-item list-group-item-action" data-toggle="tab">Agregar Tienda</a>
                    </div>
                    <a href="#cliente" class="list-group-item list-group-item-action" data-toggle="collapse">Cliente</a>
                    <div class="collapse" id="cliente">
                        <a href="#verCliente" class="list-group-item list-group-item-action" data-toggle="tab">Ver Cliente</a>
                        <a href="#modificarCliente" class="list-group-item list-group-item-action" data-toggle="tab">Modificar Cliente</a>
                        <a href="#eliminarCliente" class="list-group-item list-group-item-action" data-toggle="tab">Eliminar Cliente</a>
                        <a href="#agregarCliente" class="list-group-item list-group-item-action" data-toggle="tab">Agregar Cliente</a>
                    </div>
                </div>
            </div>
            <div class="col-md-9">
                <!-- Contenido de las pestañas -->
                <div class="tab-content">
                    <!-- Contenido de la opción "Ver Tienda" -->
                    <div class="tab-pane fade" id="verTienda">
                        <h3>Ver Tienda</h3>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Nombre</th>
                                    <th>Email</th>
                                    <th>Teléfono</th>
                                    <th>País</th>
                                    <th>ID</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- Filas de la tabla -->
                                <tr>
                                    <td>Tienda 1</td>
                                    <td>tienda1@example.com</td>
                                    <td>123456789</td>
                                    <td>País 1</td>
                                    <td>1</td>
                                    <td>
                                        <button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modificarTiendaModal">Modificar</button>
                                        <button class="btn btn-danger btn-sm" data-toggle="modal" data-target="#eliminarTiendaModal">Eliminar</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Tienda 2</td>
                                    <td>tienda2@example.com</td>
                                    <td>987654321</td>
                                    <td>País 2</td>
                                    <td>2</td>
                                    <td>
                                        <button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modificarTiendaModal">Modificar</button>
                                        <button class="btn btn-danger btn-sm" data-toggle="modal" data-target="#eliminarTiendaModal">Eliminar</button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- Contenido de la opción "Modificar Tienda" -->
                    <div class="tab-pane fade" id="modificarTienda">
                        <h3>Modificar Tienda</h3>
                        <!-- Formulario para modificar la tienda -->
                        <form>
                            <div class="form-group">
                                <label for="nombreMod">Nombre:</label>
                                <input type="text" class="form-control" id="nombreMod">
                            </div>
                            <div class="form-group">
                                <label for="emailMod">Email:</label>
                                <input type="email" class="form-control" id="emailMod">
                            </div>
                            <div class="form-group">
                                <label for="telefonoMod">Teléfono:</label>
                                <input type="text" class="form-control" id="telefonoMod">
                            </div>
                            <div class="form-group">
                                <label for="paisMod">País:</label>
                                <input type="text" class="form-control" id="paisMod">
                            </div>
                            <div class="form-group">
                                <label for="idMod">ID:</label>
                                <input type="text" class="form-control" id="idMod" disabled>
                            </div>
                            <button type="submit" class="btn btn-primary">Guardar Cambios</button>
                        </form>
                    </div>
                    <!-- Contenido de la opción "Eliminar Tienda" -->
                    <div class="tab-pane fade" id="eliminarTienda">
                        <h3>Eliminar Tienda</h3>
                        <!-- Formulario para eliminar la tienda -->
                        <form>
                            <div class="form-group">
                                <label for="idEliminar">ID de la tienda a eliminar:</label>
                                <input type="text" class="form-control" id="idEliminar">
                            </div>
                            <button type="submit" class="btn btn-danger">Eliminar Tienda</button>
                        </form>
                    </div>
                    <!-- Contenido de la opción "Agregar Tienda" -->
                    <div class="tab-pane fade" id="agregarTienda">
                        <h3>Agregar Tienda</h3>
                        <!-- Formulario para agregar una nueva tienda -->
                        <form>
                            <div class="form-group">
                                <label for="nombreAgregar">Nombre:</label>
                                <input type="text" class="form-control" id="nombreAgregar">
                            </div>
                            <div class="form-group">
                                <label for="emailAgregar">Email:</label>
                                <input type="email" class="form-control" id="emailAgregar">
                            </div>
                            <div class="form-group">
                                <label for="telefonoAgregar">Teléfono:</label>
                                <input type="text" class="form-control" id="telefonoAgregar">
                            </div>
                            <div class="form-group">
                                <label for="paisAgregar">País:</label>
                                <input type="text" class="form-control" id="paisAgregar">
                            </div>
                            <button type="submit" class="btn btn-primary">Agregar Tienda</button>
                        </form>
                    </div>
                    <!-- Contenido de la opción "Ver Cliente" -->
                    <div class="tab-pane fade" id="verCliente">
                        <h3>Ver Cliente</h3>
                        <table class="table">
                            <thead>
                                <tr>
                                    <th>Nombre</th>
                                    <th>Email</th>
                                    <th>Teléfono</th>
                                    <th>País</th>
                                    <th>ID</th>
                                    <th>Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <!-- Filas de la tabla -->
                                <tr>
                                    <td>Cliente 1</td>
                                    <td>cliente1@example.com</td>
                                    <td>123456789</td>
                                    <td>País 1</td>
                                    <td>1</td>
                                    <td>
                                        <button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modificarClienteModal">Modificar</button>
                                        <button class="btn btn-danger btn-sm" data-toggle="modal" data-target="#eliminarClienteModal">Eliminar</button>
                                    </td>
                                </tr>
                                <tr>
                                    <td>Cliente 2</td>
                                    <td>cliente2@example.com</td>
                                    <td>987654321</td>
                                    <td>País 2</td>
                                    <td>2</td>
                                    <td>
                                        <button class="btn btn-primary btn-sm" data-toggle="modal" data-target="#modificarClienteModal">Modificar</button>
                                        <button class="btn btn-danger btn-sm" data-toggle="modal" data-target="#eliminarClienteModal">Eliminar</button>
                                    </td>
                                </tr>
                            </tbody>
                        </table>
                    </div>
                    <!-- Contenido de la opción "Modificar Cliente" -->
                    <div class="tab-pane fade" id="modificarCliente">
                        <h3>Modificar Cliente</h3>
                        <!-- Formulario para modificar el cliente -->
                        <form>
                            <div class="form-group">
                                <label for="nombreModCliente">Nombre:</label>
                                <input type="text" class="form-control" id="nombreModCliente">
                            </div>
                            <div class="form-group">
                                <label for="emailModCliente">Email:</label>
                                <input type="email" class="form-control" id="emailModCliente">
                            </div>
                            <div class="form-group">
                                <label for="telefonoModCliente">Teléfono:</label>
                                <input type="text" class="form-control" id="telefonoModCliente">
                            </div>
                            <div class="form-group">
                                <label for="paisModCliente">País:</label>
                                <input type="text" class="form-control" id="paisModCliente">
                            </div>
                            <div class="form-group">
                                <label for="idModCliente">ID:</label>
                                <input type="text" class="form-control" id="idModCliente" disabled>
                            </div>
                            <button type="submit" class="btn btn-primary">Guardar Cambios</button>
                        </form>
                    </div>
                    <!-- Contenido de la opción "Eliminar Cliente" -->
                    <div class="tab-pane fade" id="eliminarCliente">
                        <h3>Eliminar Cliente</h3>
                        <!-- Formulario para eliminar el cliente -->
                        <form>
                            <div class="form-group">
                                <label for="idEliminarCliente">ID del cliente a eliminar:</label>
                                <input type="text" class="form-control" id="idEliminarCliente">
                            </div>
                            <button type="submit" class="btn btn-danger">Eliminar Cliente</button>
                        </form>
                    </div>
                    <!-- Contenido de la opción "Agregar Cliente" -->
                    <div class="tab-pane fade" id="agregarCliente">
                        <h3>Agregar Cliente</h3>
                        <!-- Formulario para agregar un nuevo cliente -->
                        <form>
                            <div class="form-group">
                                <label for="nombreAgregarCliente">Nombre:</label>
                                <input type="text" class="form-control" id="nombreAgregarCliente">
                            </div>
                            <div class="form-group">
                                <label for="emailAgregarCliente">Email:</label>
                                <input type="email" class="form-control" id="emailAgregarCliente">
                            </div>
                            <div class="form-group">
                                <label for="telefonoAgregarCliente">Teléfono:</label>
                                <input type="text" class="form-control" id="telefonoAgregarCliente">
                            </div>
                            <div class="form-group">
                                <label for="paisAgregarCliente">País:</label>
                                <input type="text" class="form-control" id="paisAgregarCliente">
                            </div>
                            <button type="submit" class="btn btn-primary">Agregar Cliente</button>
                        </form>
                    </div>
                </div>
            </div>
        </div>
    </div>

    <!-- Scripts de Bootstrap -->
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/@popperjs/core@1.16.1/dist/umd/popper.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</body>
</html>

