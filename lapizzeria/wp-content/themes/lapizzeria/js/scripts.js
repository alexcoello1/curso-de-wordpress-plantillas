var map;
      function initMap() {
          var latLng = {
              lat: parseFloat(opciones.latitud),
              lng: parseFloat(opciones.longitud)
          };

        map = new google.maps.Map(document.getElementById('mapa'), {
          center: latLng,
          zoom: 19
        });
        var market = new google.maps.Market({
            position: latLng,
            map: map,
            title: 'La Pizzeria'
        });
      }



$=jQuery.noConflict();
$(document).ready(function(){
    //Ocultar y mostrar menu
    $('.mobile-menu a').on('click',function(){
        $('nav.menu-sitio').toggle('slow');
    });
    //Reaccion a risize en la pantalla
    var breakpoint=768;
    $(window).resize(function(){
        ajustarCajas();
        if($(document).width()>=breakpoint){
            $('nav.menu-sitio').show();
        }else{
        $('nav.menu-sitio').hide();
        }
        });
        //Ajustar cajas seguntamaño de imagen
        ajustarCajas();

        //ajustar mapa

        var mapa = $('#mapa');
            if(mapa.length > 0){
                if($(document).width() >=breakpoint){
                    ajustarMapa(0);
                }else{
                    ajustarMapa(300);
                }
            }
        
            $(window).resize(function(){
                if($(document).width()>=breakpoint){
                    ajustarMapa(0);
                }else{
                    ajustarMapa(300);
                }
            });

        //Fluidbox
        jQuery('.gallery a').each(function() {
            jQuery(this).attr({'data-fluidbox' : ''});
        });

        if(jQuery('[data-fluidbox]').length > 0) {
           jQuery('[data-fluidbox]').fluidbox();
        }
    });
    
    function ajustarCajas(){
    var imagenes =   $('.imagen-caja');
    if(imagenes.length>0){
        var altura=imagenes[0].height;
        var cajas =$ ('div.contenido_caja');
        $ (cajas) .each(function(i,elementos){
            $(elementos)  .css({'height':altura + 'px'});
        });
    }
}

function ajustarMapa(altura){
    if(altura == 0){
        var ubicacionSection = $('.ubicacion-reservacion');
        var ubicacionAltura = ubicacionSection.height();
        $('#mapa').css({'height':ubicacionAltura});
    }else{
        $('#mapa').css({'height':altura});
    }
}