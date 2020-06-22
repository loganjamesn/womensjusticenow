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
	
	<div class="welcome-text">
		<div class="container narrow">
			<div class="welcome-heading">
				<h1 class="page-title split-words underline blue"><?php the_field('subheading');?></h1>	
			</div>
			<div class="text">
				<div class="row">
					<div class="col-md-5">
						<button class="red"><a href="/issues/">Our Issues</a></button>
					</div>
					<div class="col-md-7">
						<?php get_template_part('includes/section', 'content');?>		
					</div>
				</div>	
			</div>
		</div>		
	</div>
	<div class="issues">
		<?php get_template_part('includes/section', 'issues');?>	
	</div>
	<div class="module full-width-color pink">
		<div class="container small">
			<button class="yellow solid"><a href="/issues/">Our Issues</a></button>
			<h2><?php the_field('block_quote');?></h2>			
		</div>
	</div>
<!-- 	<div class="share-our-vision">
		<?php get_template_part('includes/section', 'shareourvision');?>	
	</div> -->
</section>
<?php get_footer();?>