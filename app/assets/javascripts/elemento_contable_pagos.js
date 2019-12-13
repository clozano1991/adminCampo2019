$(document).ready(function(){
    //----------------view index elemento_contable_pagos-----------------
    // boton agregando 
    $('#botonAgregarElementoContablePago').click(function(){
        mostrandoModalAgregandoElementoContablePago()
    });
    // Cuando se hace click en el lapiz para editar
    $(".imagenEditarElementoContablePago").each(function(){ 
       mostrarModalEditarElementoContablePago($(this));
    });
    // Cuando se hace click en el basurero para borrar
    $(".imagenBorrarElementoContablePago").each(function(){ 
       mostrarModalBorrarElementoContablePago($(this));
    });
}); 
 
// --------------------------------------funciones--------------------------------
//--------------------------------------------------------------------------------
function mostrandoModalAgregandoElementoContablePago(){
    $("#agregarElementoContablePagoModal").modal("show");
}

function mostrarModalEditarElementoContablePago(imagenEditarlementoContablePago){
    $(imagenEditarlementoContablePago).click(function(){
       $("#modal_editar_elemento_contable_pago_"+imagenEditarlementoContablePago.attr("data-idElementoContablePago")).modal("show");
    });
}


// cuando se hace click en el basurero para borrar 
function mostrarModalBorrarElementoContablePago(imagenBorrarElementoContablePago){
    $(imagenBorrarElementoContablePago).click(function(){
       $("#modal_borrar_elemento_contable_pago_"+imagenBorrarElementoContablePago.attr("data-idElementoContablePago")).modal("show");
    });
}