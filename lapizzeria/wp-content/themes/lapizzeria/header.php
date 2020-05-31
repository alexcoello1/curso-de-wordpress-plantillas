<!DOCTYPE <!DOCTYPE html>
<html>
<head>
    <meta charset="utf-8" />
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>LaPizzeria</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <!--soporte para dispositivos apple-->
    <meta name="apple-mobile-web-app-capable" content="yes">
    <meta name="apple-mobile-web-app-title" content="La Pizzeria">
    <link rel="apple-tpuch-icon" href="<?php echo get_template_directory_uri();?>/apple-touch-icon.jpg">
 
    <!--soporte para dispositivos android-->
    <meta name="mobile-web-app-capable" content="yes">
    <meta name="theme-color" content="#a61206">
    <meta name="application-name" content="La Pizzeria">
    <link rel="icon" type="image/png" href="<?php echo get_template_directory_uri();?>/icono.png" size="192x192">
 
    
 <?php wp_head()?>
</head>
<body <?php body_class()?>>
    <header class="encabezado-sitio">
        <div class="contenedor">
            <div class="logo">
                <a href="<?php echo esc_url(home_url('/')); ?>">
                    <img src="<?php echo get_template_directory_uri();?>/img/logo.svg" class="logotipo">
                </a>
            </div>
            <!--cierre de logo --->
            <div class="informacion-encabezado">
                <div class="redes-sociales">
                    <?php $args=array(
                        'theme_location'=>'social-menu',
                        'container'=>'nav',
                        'container_class'=>'sociales',
                        'container_id'=>'sociales',
                        'link_before'=>'<span class="sr-text">',
                        'link_after'=>'</span>'
                    );
                    wp_nav_menu($args);
                ?>
                </div>
                    
            <!-- menu de redes social -->
            <div class="direccion">
            <p> <?php echo esc_html( get_option('lapizzeria_direccion'));?></p>
            <p>Teleléfono: <?php echo esc_html( get_option('lapizzeria_telefono'));?></p>

        </div>
         </div>   <!--contenedor ---> 
    </header>
    <div class="menu-principal">
        <div class="mobile-menu">
                <a href="#" class="mobile"> <i class="fa fa-bars"></i>Menu</a>
        </div>
        <div class="contenedor navegacion">
            <?php
                $args = array(
                    'theme_location' => 'header-menu',
                    'container'=>'nav',
                    'container_class'=>'menu-sitio'
                );
                wp_nav_menu($args);
            ?>
        </div>
                
    </div>
   
        
    