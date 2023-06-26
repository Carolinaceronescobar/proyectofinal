$(document).ready(function() {
    // Código a ejecutar cuando el documento esté listo
  
    // Ejemplo de agregar un producto al carrito al hacer clic en un botón
    $('.btn-agregar-carrito').on('click', function() {
      var productoId = $(this).data('producto-id');
      // Aquí puedes realizar acciones adicionales, como agregar el producto al carrito en la base de datos o mostrar un mensaje de éxito.
      console.log('Producto agregado al carrito:', productoId);
    });
  });
  