<footer>
    <?php 
        $args=array(
            'theme_location'=>'header-menu',
            'container'=>'nav',
            'after' =>'<span class="separador">|</span>'
        );
        wp_nav_menu($args);
    ?>
       <div class="ubicacion">
       <p> <?php echo esc_html( get_option('lapizzeria_direccion'));?></p>
            <p>Teleléfono: <?php echo esc_html( get_option('lapizzeria_telefono'));?></p>

        </div>
        <p class="copyright">Todos los derechos reservados<?php echo date('y');?></p>
</footer>
<?php wp_footer(); ?>
</body>
</html>