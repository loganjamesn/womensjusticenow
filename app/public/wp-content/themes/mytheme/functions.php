<?php

// Load Scripts
function scripts() 
{
	wp_register_style('style', get_template_directory_uri() . '/dist/app.css', [], 1, 'all');
	wp_enqueue_style('style');

	wp_enqueue_script('jquery');
	wp_register_script('app', get_template_directory_uri() . '/dist/app.js', ['jquery'], 1, true);
	wp_enqueue_script('app');
	wp_register_script('lettering', get_template_directory_uri() . '/src/lettering.min.js', ['jquery'], 1, true);
	wp_enqueue_script('lettering');
}
add_action('wp_enqueue_scripts', 'scripts');


// Theme Options 
add_theme_support('menus');
add_theme_support('post-thumbnails');
add_theme_support('widgets');


// Menus 
register_nav_menus(
 array(
 	'top-menu' => 'Top Menu Location',
 	'mobile-menu' => 'Mobile Menu Location',
 )
);

// Custom Image Sizes
add_image_size('blog-large', 800, 400, true);
add_image_size('blog-small', 300, 200, true);


// Register Sidebars
function my_sidebars()
{
	register_sidebar(
		array(
			'name' => 'Page Sidebar',
			'id' => 'page-sidebar',
			'before_title' => '<h4 class="widget-title">',
			'after_title' => '</h4>'

		)
	);
	register_sidebar(
		array(
			'name' => 'Blog Sidebar',
			'id' => 'blog-sidebar',
			'before_title' => '<h4 class="widget-title">',
			'after_title' => '</h4>'

		)
	);
}
add_action('widgets_init', 'my_sidebars');


// Custom Posts
function new_page_type_legislation()
{
	$args = array(
		'labels' => array(
            'name' => 'Legislation',
            'singular_name' => 'Bill',
            'add_new' => 'Add New Bill',
            'add_new_item' => 'Add New Bill',
            'edit_item' => 'Edit this Bill',
            'new_item' => 'New Bill',
            'all_items' => 'All Legislation'
        ),
		'hierarchical' => true,
		'public' => true,
		'has_archive' => true,
		'menu_icon' => 'dashicons-text-page',
        'show_ui' => true,
        'taxonomies'  => array ( 
            'category' 
        ),
		'supports' => array('title', 'editor', 'thumbnail', 'custom-fields')
	);

	register_post_type('legislation', $args);
}
add_action('init', 'new_page_type_legislation');



// Taxonomies
function platform_taxonomy()
{
	$args = array(
		'labels' => array(
			'name' => 'Tag',
			'singular_name' => 'Tags',
		),
		'public' => true,
		'hierarchical' => false, //behaves like a tag-false, category-true
	);

	register_taxonomy('platform', array('legislation'), $args);
}
add_action('init', 'platform_taxonomy');









