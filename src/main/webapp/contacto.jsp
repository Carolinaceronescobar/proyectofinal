<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
  <title>Contacto - Marketing Digital</title>
  <link rel="stylesheet" type="text/css" href="css/estilo.css">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css">
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
          <button onclick="location.href='login.jsp'">Iniciar sesión</button>
            <ul>
              <li><a href="index.html">Inicio</a></li>
              <li><a href="quienessomos.html">Quienes Somos</a></li>
              <li><a href="servicios.html">Servicios</a></li>
              <li><a href="tienda.html">Tienda</a></li>
              <li><a href="contacto.html">Contacto</a></li>

            </ul>
          </nav>
        </div>
      </div>
    </div>
  </header>

  <section id="banner">
    <h2>Destaca tu negocio con nuestro marketing digital</h2>
    <a href="contacto.html" class="cta-button">Contactanos</a>

  <section id="contacto">
    <div class="container">
      <h2>Contacto</h2>

      <form action="enviar.php" method="POST">
        <div class="form-group">
          <label for="nombre"> Nombre:</label>
          <input type="text" id="nombre" name="nombre" required>
        </div>

        <div class="form-group">
          <label for="email">Email:</label>
          <input type="email" id="email" name="email" required>
        </div>

        <div class="form-group">
          <label for="mensaje">Mensaje:</label>
          <textarea id="mensaje" name="mensaje" required></textarea>
        </div>

        <button type="submit">Enviar Mensaje</button>
      </form>
    </div>
  </section>

  <!-- Resto del contenido de la página -->

  <footer>
    <p>&copy; 2023 Carolina Cerón Escobar. Todos los derechos reservados.</p>
  </footer>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.min.js"></script>
</body>
</html>
