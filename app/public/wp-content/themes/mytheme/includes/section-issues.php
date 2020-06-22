<div class="module issues-grid">
	<?php

	$args = array(
	    'post_type'      => 'page',
	    'posts_per_page' => -1,
	    'post_parent'    => '10',
	    'order'          => 'ASC',
	    'orderby'        => 'menu_order'
	 );

	$parent = new WP_Query( $args );

	if ( $parent->have_posts() ) : ?>
	    <?php while ( $parent->have_posts() ) : $parent->the_post(); ?>

			<div class="single-issue">
				<div class="grid-image-container">
					<div class="grid-image" style="background-image: url('<?php if(has_post_thumbnail()):?><?php echo the_post_thumbnail_url();?><?php endif?>')"></div>
					<div class="overlay"></div>
				</div>
				<a href="<?php the_permalink(); ?>" label="<?php the_title(); ?>"></a>
				<div class="wrapper">
					<h3><?php the_title(); ?></h3>
					<p class="teaser"><?php the_field('short_description', $post->ID);?></p>
				</div>
				<svg id="nextArrow" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 91.84 91.84"><title>arrow-grid</title><path d="M91.84,50A41.86,41.86,0,1,1,79.58,20.42,41.8,41.8,0,0,1,91.84,50ZM4.08,50A46,46,0,1,0,17.56,17.56,45.92,45.92,0,0,0,4.08,50Z" transform="translate(-4.08 -4.08)"></path><path d="M56.22,36.73,67.35,48H27.65a2,2,0,1,0,0,4.08h39.8L56.22,63.27a2.05,2.05,0,0,0,3,2.85l14.6-14.69a2.05,2.05,0,0,0,.2-2.55l-.2-.2v-.1l-14.7-14.7a2,2,0,0,0-2.86,2.86Z" transform="translate(-4.08 -4.08)"></path></svg>			
			</div>

	    <?php endwhile; ?>
	<?php endif; wp_reset_postdata(); ?>
</div>