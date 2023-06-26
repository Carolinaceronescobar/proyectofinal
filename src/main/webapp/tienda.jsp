<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
  <title>Tienda de Marketing Digital</title>
  <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/css/bootstrap.min.css">
  <link rel="stylesheet" href="css/estilo.css">
  <script src="ruta/a/jquery.min.js"></script>
</head>
<body>
    <header>
      <div class="container">
        <div class="d-flex align-items-center">
          <div>
            <img src="css/logo.png" width="100px" height="100px" alt="Logo" style="float: left;">
          </div>
          <div>
            <h1>Hoy Empresas</h1>
          </div>
          <div class="ms-auto">
            <nav>
              <ul>
                <li><a href="index.html">Inicio</a></li>
                <li><a href="quienessomos.html">Quienes Somos</a></li>
                <li><a href="servicios.html">Servicios</a></li>
                <li><a href="tienda.html">Tienda</a></li>
                <li><a href="contacto.jsp">Contacto</a></li>
              </ul>
            </nav>
          </div>
        </div>
      </div>
    </header>

  <section id="banner">
    <!-- ... Código del banner ... -->
  </section>

  <section id="banner">
      <h2>Destaca tu negocio con nuestro marketing digital</h2>
      <a href="contacto.html" class="cta-button">Contactanos</a>
    </section>

    <section id="tienda">
      <div class="container">
        <h2>Tienda</h2>

        <div class="row">
          <div class="col-md-4">
            <div class="card">
              <img src="css/product1.jpg" class="card-img-top img-fluid" alt="Producto 1">
              <div class="card-body">
                <h5 class="card-title">Nombre del Producto 1</h5>
                <p class="card-text">Descripción del Producto 1</p>
                <p class="card-price">$XX.XX</p>
                <button class="btn btn-primary">Agregar al Carrito</button>
              </div>
            </div>
          </div>

          <div class="col-md-4">
            <div class="card">
              <img src="css/product2.jpg" class="card-img-top img-fluid" alt="Producto 2">
              <div class="card-body">
                <h5 class="card-title">Nombre del Producto 2</h5>
                <p class="card-text">Descripción del Producto 2</p>
                <p class="card-price">$XX.XX</p>
                <button class="btn btn-primary">Agregar al Carrito</button>
              </div>
            </div>
          </div>

  <!-- Resto del contenido de la página -->

  <footer>
      <p>&copy; 2023 Carolina Cerón Escobar. Todos los derechos reservados.</p>
    </footer>

    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.0/js/bootstrap.min.js"></script>
    <script src="script.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
  </body>
  </html>