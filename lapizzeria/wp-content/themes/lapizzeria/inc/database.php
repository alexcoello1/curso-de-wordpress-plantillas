<?php
//inicializa la creacion de la tabla nuevas
function lapizzeria_database(){
    //WPDB nos da los metodos para trabajas con tablas
    global $wpdb;
    // agregamos una versiòn
    global $lapizzeria_dbversion;
    $lapizzeria_dbversion = '1.0';
    // optenemos el prefijo de la tabla
    $tabla = $wpdb->prefix . 'reservaciones';
    //obtenemos el collation de la instalacion
    $charset_collate = $wpdb->get_charset_collate();
    //Agregamos la estructura de la BD 
    $sql =" CREATE TABLE $tabla (
        id mediumint(9) NOT NULL AUTO_INCREMENT,
        nombre varchar(50) NOT NULL,
        fecha datetime NOT NULL,
        correo varchar(50) DEFAULT '' NOT NULL,
        telefono varchar(10)   NOT NULL,
        mensaje longtext NOT NULL,
        PRIMARY KEY (id)
    )$charset_collate;";
    //Se necesita dbDelta para ejecutar el SQL y esta en la siguiente direccion
    require_once(ABSPATH . 'wp-admin/includes/upgrade.php');
    dbDelta($sql);
    //agregamos la versión de la BD para cmprobarla con futuras actualizaciones
    add_option('lapizzeria_dbversion',$lapizzeria_dbversion);

//actualizar en caso necesario 
$version_actual =   get_option('lapizzeria_dbversion');
//comparamos las 2 versiones
if($lapizzeria_dbversion != $version_actual){
    $tabla  =   $wpdb->prefix . 'reservaciones';
//aqui realizarias las actualizaciones
    $sql =" CREATE TABLE $tabla (
        id mediumint(9) NOT NULL AUTO_INCREMENT,
        nombre varchar(50) NOT NULL,
        fecha datetime NOT NULL,
        correo varchar(50) DEFAULT '' NOT NULL,
        telefono varchar(10)   NOT NULL,
        mensaje longtext NOT NULL,
        PRIMARY KEY (id)
    )$charset_collate;";
    require_once(ABSPATH . 'wp-admin/includes/upgrade.php');
    dbDelta($sql);
    //actualizamos a la versión actual en caso de que asi sea
    update_option('lapizzeria_dbversion',$lapizzeria_dbversion);
    }
}

add_action ('after_setup_theme','lapizzeria_database');
//Función para comprobar que la vesión instalada es igual quie la base de datos nueva.
function lapizzeria_revisar(){
    global $lapizzeria_dbversion;
    if(get_site_option('lapizzeria_dbversion') != $lapizzeria_dbversion){
        lapizzeria_database();
    }
}
add_action('plugin_loaded','lapizzeriadb_revisar');

?>