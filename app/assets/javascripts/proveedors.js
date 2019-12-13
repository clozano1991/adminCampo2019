$(document).ready(function(){
//----------------view agregando un nuevo empleado-----------------
    
//----------------view index empleado empleado-----------------
    // Cuando se hace click en el basurero para borrar un empleado
    $(".imagenBorrarProveedor").each(function(){ 
       mostrarModalBorrarProveedor($(this));
    });


}); 


//----------------funciones index empleado -----------------

function mostrarModalBorrarProveedor(imagenBorrarProveedor){
	$(imagenBorrarProveedor).click(function(){
       $("#modal_borrar_proveedor_"+imagenBorrarProveedor.attr("data-id")).modal("show");
	});
}