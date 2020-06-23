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


// ACF Custom Blocks
if (function_exists('acf_register_block_type')) {
	add_action('acf/init', 'register_acf_block_types');
}

function register_acf_block_types() {
	
	// Welcome Text Module
	acf_register_block_type(array(
		'name' => 'module-welcome-text',
		'title' => __('Module - Welcome Text'),
		'description' => __('Displays content in a staggered layout.'),
		'render_template' => 'includes/blocks/welcome-text.php',
		'icon' => 'layout',
		'category' => 'layout',
		'keywords' => array('module', 'welcome', 'text'),
	));

	// Issues Grid Module
	acf_register_block_type(array(
		'name' => 'module-issues-grid',
		'title' => __('Module - Issues Grid'),
		'description' => __('Displays the issue pages in a grid.'),
		'render_template' => 'includes/blocks/issues-grid.php',
		'icon' => 'layout',
		'category' => 'layout',
		'keywords' => array('module', 'issue', 'grid'),
	));
	
	// Full Width Color Module
	acf_register_block_type(array(
		'name' => 'module-full-width-color',
		'title' => __('Module - Full Width Color'),
		'description' => __('Full width content block with a colored background.'),
		'render_template' => 'includes/blocks/full-width-color.php',
		'icon' => 'format-aside',
		'category' => 'layout',
		'keywords' => array('module', 'full', 'width', 'color', 'content'),
	));
	
	// Call to Action Form Module
	acf_register_block_type(array(
		'name' => 'module-cta-form',
		'title' => __('Module - Call to Action Form'),
		'description' => __('Full width call to action with image and form.'),
		'render_template' => 'includes/blocks/cta-form.php',
		'icon' => 'align-left',
		'category' => 'layout',
		'keywords' => array('module', 'cta', 'form', 'call to action'),
	));
	
	// Latest News Feed Module
	acf_register_block_type(array(
		'name' => 'module-latest-news-feed',
		'title' => __('Module - Latest News Feed'),
		'description' => __('Displays a grid of latest news posts.'),
		'render_template' => 'includes/blocks/latest-news-feed.php',
		'icon' => 'align-left',
		'category' => 'grid-view',
		'keywords' => array('module', 'latest', 'news', 'posts', 'feed'),
	));
	
	// Actions Grid Module
	acf_register_block_type(array(
		'name' => 'module-actions-grid',
		'title' => __('Module - Action Grid'),
		'description' => __('Displays calls to action in a grid.'),
		'render_template' => 'includes/blocks/actions-grid.php',
		'icon' => 'layout',
		'category' => 'layout',
		'keywords' => array('module', 'action', 'grid'),
	));

}






