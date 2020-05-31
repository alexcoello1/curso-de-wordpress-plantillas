<?php
// tablas personalizadas y otras funciones
require get_template_directory() . '/inc/database.php';
//Funciones para las reservaciones
require get_template_directory() . '/inc/reservaciones.php';

//crear opciones para el template
require get_template_directory() . '/inc/opciones.php';

function lapizzeria_setup(){
    add_theme_support('post-thumbnails');
	add_image_size('nosotros',437, 291, true);
	add_image_size('especialidades',768, 515, true);
	add_image_size('especialidades_portrait',435,526,true);
	
	update_option('thumbnail_size_w',253);
}	update_option('thumbnail_size_h',164);
add_action('after_setup_theme','lapizzeria_setup');
function lapizzeria_styles(){

// registrar los estilos.
wp_register_style('normalize', get_template_directory_uri(). '/css/normalize.css', array(), '8.0.1');
wp_register_style('fontawesome', get_template_directory_uri(). '/css/font-awesome.css', array('normalize'), '4.7');
wp_register_style('fluidboxcss', get_template_directory_uri(). '/css/fluidbox.min.css', array('normalize'), '4.7');
wp_register_style('google_font','https://fonts.googleapis.com/css?family=Open+Sans|Raleway:400,700,900',array(),'1.0');
wp_register_style('style', get_template_directory_uri(). '/style.css', array('normalize'), '1.0');

//llamar a los estilos.
wp_enqueue_style( 'normalize');
wp_enqueue_style( 'fontawesome');
wp_enqueue_style( 'style');
wp_enqueue_style('fluidboxcss');

//Registrando JS
$apikey = esc_html(get_option('lapizzeria_gmap_apikey'));
wp_register_script('maps','https://maps.googleapis.com/maps/api/js?key='.$apikey.'&callback=initMap',array(),'0.0.0',true);
wp_register_script('scripts', get_template_directory_uri() . '/js/scripts.js',array(),'1.0.0',true);
wp_register_script('fluidbox', get_template_directory_uri() . '/js/jquery.fluidbox.min.js',array(),'1.0.0',true);


wp_enqueue_script('jquery');
wp_enqueue_script('maps');
wp_enqueue_script('scripts');
wp_enqueue_script('fluidbox');

//pasar variable de php a javascript
wp_localize_script(
	'script',
	'opciones',
	array(
		'latitud' =>get_option('lapizerria_gmap_latitud'),
		'longitud' => get_option('lapizzeria_gmap_longitud'),
		'zoom' => get_option('lapizzeria_gmap_zoom'),
	)
);


}



add_action('wp_enqueue_scripts', 'lapizzeria_styles');

//agregar async y defer
function agregar_async_defer($tag, $handle){
	if('maps'!==$handle)
	return $tag;
	return str_replace('src','async="async" defer="defer" src', $tag);
} 
add_filter('script_loader_tag','agregar_async_defer', 10, 2);


// Creación de menus
function lapizzeria_menus(){
    register_nav_menus(array(
        'header-menu'=> __('Header Menu', 'lapizzeria'),
        'social-menu'=> __('Social Menu', 'la pizzeria')
    ));
}
add_action( 'init','lapizzeria_menus');
//custom postype
add_action( 'init', 'lapizzeria_especialidades' );
function lapizzeria_especialidades() {
	$labels = array(
		'name'               => _x( 'Pizzas', 'lapizzeria' ),
		'singular_name'      => _x( 'Pizzas', 'post type singular name', 'lapizzeria' ),
		'menu_name'          => _x( 'Pizzas', 'admin menu', 'lapizzeria' ),
		'name_admin_bar'     => _x( 'Pizzas', 'add new on admin bar', 'lapizzeria' ),
		'add_new'            => _x( 'Add New', 'book', 'lapizzeria' ),
		'add_new_item'       => __( 'Add New Pizza', 'lapizzeria' ),
		'new_item'           => __( 'New Pizzas', 'lapizzeria' ),
		'edit_item'          => __( 'Edit Pizzas', 'lapizzeria' ),
		'view_item'          => __( 'View Pizzas', 'lapizzeria' ),
		'all_items'          => __( 'All Pizzas', 'lapizzeria' ),
		'search_items'       => __( 'Search Pizzas', 'lapizzeria' ),
		'parent_item_colon'  => __( 'Parent Pizzas:', 'lapizzeria' ),
		'not_found'          => __( 'No Pizzases found.', 'lapizzeria' ),
		'not_found_in_trash' => __( 'No Pizzases found in Trash.', 'lapizzeria' )
	);

	$args = array(
		'labels'             => $labels,
    'description'        => __( 'Description.', 'lapizzeria' ),
		'public'             => true,
		'publicly_queryable' => true,
		'show_ui'            => true,
		'show_in_menu'       => true,
		'query_var'          => true,
		'rewrite'            => array( 'slug' => 'especialidades' ),
		'capability_type'    => 'post',
		'has_archive'        => true,
		'hierarchical'       => false,
		'menu_position'      => 6,
		'supports'           => array( 'title', 'editor', 'thumbnail' ),
    'taxonomies'          => array( 'category' ),
	);

	register_post_type( 'especialidades', $args );
}
//widgets

function lapizzeria_widgets(){
	register_sidebar( array(
		'name'		=>	'Blog Sidebar',
		'id'		=>	'blog_sidebar',
		'before_widget'	=> '<div class="widget">',
		'after_widget'=>	'</div>',
		'before_title'	=>	'<h3>',
		'after_title'	=>	'</h3>'
	));
}
add_action('widgets_init','lapizzeria_widgets');

//** ADVANCED CUSTOM FIELDS */
define('ACF_LITE',true);
include_once('advanced-custom-fields/acf.php');
if( function_exists('acf_add_local_field_group') ):

	acf_add_local_field_group(array(
		'key' => 'group_5c6f6e5040925',
		'title' => 'Especialidades',
		'fields' => array(
			array(
				'key' => 'field_5c6f6e89c785b',
				'label' => 'precio',
				'name' => 'precio',
				'type' => 'text',
				'instructions' => 'Añada un precio del platillo',
				'required' => 0,
				'conditional_logic' => 0,
				'wrapper' => array(
					'width' => '',
					'class' => '',
					'id' => '',
				),
				'default_value' => '',
				'placeholder' => '',
				'prepend' => '',
				'append' => '',
				'maxlength' => '',
			),
		),
		'location' => array(
			array(
				array(
					'param' => 'post_type',
					'operator' => '==',
					'value' => 'especialidades',
				),
			),
		),
		'menu_order' => 0,
		'position' => 'normal',
		'style' => 'default',
		'label_placement' => 'top',
		'instruction_placement' => 'label',
		'hide_on_screen' => '',
		'active' => true,
		'description' => '',
	));
	
	acf_add_local_field_group(array(
		'key' => 'group_5c89bb4fd283d',
		'title' => 'inicio',
		'fields' => array(
			array(
				'key' => 'field_5c89bb7a30be3',
				'label' => 'contenidos',
				'name' => 'contenidos',
				'type' => 'wysiwyg',
				'instructions' => 'Agregue la descripción.',
				'required' => 0,
				'conditional_logic' => 0,
				'wrapper' => array(
					'width' => '',
					'class' => '',
					'id' => '',
				),
				'default_value' => '',
				'tabs' => 'all',
				'toolbar' => 'full',
				'media_upload' => 1,
				'delay' => 0,
			),
			array(
				'key' => 'field_5c89bbc030be4',
				'label' => 'imagen',
				'name' => 'imagen',
				'type' => 'image',
				'instructions' => '',
				'required' => 0,
				'conditional_logic' => 0,
				'wrapper' => array(
					'width' => '',
					'class' => '',
					'id' => '',
				),
				'return_format' => 'url',
				'preview_size' => 'thumbnail',
				'library' => 'all',
				'min_width' => '',
				'min_height' => '',
				'min_size' => '',
				'max_width' => '',
				'max_height' => '',
				'max_size' => '',
				'mime_types' => '',
			),
		),
		'location' => array(
			array(
				array(
					'param' => 'page',
					'operator' => '==',
					'value' => '14',
				),
			),
		),
		'menu_order' => 0,
		'position' => 'normal',
		'style' => 'default',
		'label_placement' => 'top',
		'instruction_placement' => 'label',
		'hide_on_screen' => '',
		'active' => true,
		'description' => '',
	));
	
	acf_add_local_field_group(array(
		'key' => 'group_5c6b5d82a6563',
		'title' => 'Sobre Nosotros',
		'fields' => array(
			array(
				'key' => 'field_5c6b5dc1ca79d',
				'label' => 'Imagen1',
				'name' => 'Imagen_1',
				'type' => 'image',
				'instructions' => 'suba imagen',
				'required' => 0,
				'conditional_logic' => 0,
				'wrapper' => array(
					'width' => '',
					'class' => '',
					'id' => '',
				),
				'return_format' => 'id',
				'preview_size' => 'thumbnail',
				'library' => 'all',
				'min_width' => '',
				'min_height' => '',
				'min_size' => '',
				'max_width' => '',
				'max_height' => '',
				'max_size' => '',
				'mime_types' => '',
			),
			array(
				'key' => 'field_5c6b5f5aca7a0',
				'label' => 'Descripcion1',
				'name' => 'descripcion1',
				'type' => 'wysiwyg',
				'instructions' => 'Agrega una descripcion',
				'required' => 0,
				'conditional_logic' => 0,
				'wrapper' => array(
					'width' => '',
					'class' => '',
					'id' => '',
				),
				'default_value' => '',
				'tabs' => 'all',
				'toolbar' => 'full',
				'media_upload' => 1,
				'delay' => 0,
			),
			array(
				'key' => 'field_5c6b5f14ca79e',
				'label' => 'Imagen2',
				'name' => 'Imagen_2',
				'type' => 'image',
				'instructions' => 'suba imagen',
				'required' => 0,
				'conditional_logic' => 0,
				'wrapper' => array(
					'width' => '',
					'class' => '',
					'id' => '',
				),
				'return_format' => 'id',
				'preview_size' => 'thumbnail',
				'library' => 'all',
				'min_width' => '',
				'min_height' => '',
				'min_size' => '',
				'max_width' => '',
				'max_height' => '',
				'max_size' => '',
				'mime_types' => '',
			),
			array(
				'key' => 'field_5c6b5f95ca7a1',
				'label' => 'Descripcion2',
				'name' => 'descripcion2',
				'type' => 'wysiwyg',
				'instructions' => 'Agrega una descripcion',
				'required' => 0,
				'conditional_logic' => 0,
				'wrapper' => array(
					'width' => '',
					'class' => '',
					'id' => '',
				),
				'default_value' => '',
				'tabs' => 'all',
				'toolbar' => 'full',
				'media_upload' => 1,
				'delay' => 0,
			),
			array(
				'key' => 'field_5c6b5f1cca79f',
				'label' => 'Imagen3',
				'name' => 'Imagen_3',
				'type' => 'image',
				'instructions' => 'suba imagen',
				'required' => 0,
				'conditional_logic' => 0,
				'wrapper' => array(
					'width' => '',
					'class' => '',
					'id' => '',
				),
				'return_format' => 'id',
				'preview_size' => 'thumbnail',
				'library' => 'all',
				'min_width' => '',
				'min_height' => '',
				'min_size' => '',
				'max_width' => '',
				'max_height' => '',
				'max_size' => '',
				'mime_types' => '',
			),
			array(
				'key' => 'field_5c6b5fa1ca7a2',
				'label' => 'Descripcion3',
				'name' => 'descripcion3',
				'type' => 'wysiwyg',
				'instructions' => 'Agrega una descripcion',
				'required' => 0,
				'conditional_logic' => 0,
				'wrapper' => array(
					'width' => '',
					'class' => '',
					'id' => '',
				),
				'default_value' => '',
				'tabs' => 'all',
				'toolbar' => 'full',
				'media_upload' => 1,
				'delay' => 0,
			),
		),
		'location' => array(
			array(
				array(
					'param' => 'page',
					'operator' => '==',
					'value' => '2',
				),
			),
		),
		'menu_order' => 0,
		'position' => 'normal',
		'style' => 'default',
		'label_placement' => 'top',
		'instruction_placement' => 'label',
		'hide_on_screen' => '',
		'active' => true,
		'description' => '',
	));
	
	endif;