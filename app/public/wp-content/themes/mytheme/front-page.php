<?php get_header();?>

<section class="page-wrap home">
	<div class="topper">
		<div class="topper-image-wrapper full-width">
			<div class="image" style="background-image: url('<?php if(has_post_thumbnail()):?><?php echo the_post_thumbnail_url();?><?php endif?>')">
				<div class="overlay"></div>
				<div class="bottom-gradient"></div>
			</div>
		</div>		
		<div class="container">
			<div class="text-overlay">
				<h1 class="page-title split-words underline yellow"><?php the_field('title');?></h1>
			</div>			
		</div>
	</div>

	<?php get_template_part('includes/section', 'signupform');?>

	<div class="container">
		<?php get_template_part('includes/section', 'content');?>

		<?php get_search_form();?>
	</div>
</section>
<?php get_footer();?>