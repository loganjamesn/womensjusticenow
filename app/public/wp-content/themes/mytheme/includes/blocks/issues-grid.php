<?php

$className = 'module issues-grid';

if (!empty($block['className'])) {
	$className .= ' ' . $block['className'];
}
if (!empty($block['align'])) {
	$className .= ' align' . $block['align'];
}

?>



<div class="<?php echo esc_attr($className); ?>">
	<?php if (have_rows('pages')) : ?>
		<?php while( have_rows('pages') ): the_row(); ?>

	        <?php $post_object = get_sub_field('linked_page'); ?>
	        <?php if( $post_object ): ?>
	            <?php 
	            $post = $post_object;
	            setup_postdata( $post );
	            ?>

				<div class="single-issue">
					<div class="grid-image-container">
						<div class="grid-image" style="background-image: url('<?php if(has_post_thumbnail($post->ID)):?><?php echo get_the_post_thumbnail_url($post->ID);?><?php endif?>')"></div>
						<div class="overlay"></div>
					</div>
					<a href="<?php echo get_permalink($post->ID); ?>" label="<?php echo get_the_title($post->ID); ?>"></a>
					<div class="wrapper">
						<h3><?php echo get_the_title($post->ID); ?></h3>
						<p class="teaser"><?php the_sub_field('page_teaser');?></p>
						<span class="learn-more"><i class="fa fa-chevron-right"></i> Learn More</span>
					</div>
					<svg id="nextArrow" data-name="Layer 1" xmlns="http://www.w3.org/2000/svg" width="40" height="40" viewBox="0 0 91.84 91.84"><title>arrow-grid</title><path d="M91.84,50A41.86,41.86,0,1,1,79.58,20.42,41.8,41.8,0,0,1,91.84,50ZM4.08,50A46,46,0,1,0,17.56,17.56,45.92,45.92,0,0,0,4.08,50Z" transform="translate(-4.08 -4.08)"></path><path d="M56.22,36.73,67.35,48H27.65a2,2,0,1,0,0,4.08h39.8L56.22,63.27a2.05,2.05,0,0,0,3,2.85l14.6-14.69a2.05,2.05,0,0,0,.2-2.55l-.2-.2v-.1l-14.7-14.7a2,2,0,0,0-2.86,2.86Z" transform="translate(-4.08 -4.08)"></path></svg>			
				</div>

	            <?php wp_reset_postdata(); ?>
	        <?php endif; ?>

		<?php endwhile; ?>
	<?php endif; ?>
</div>