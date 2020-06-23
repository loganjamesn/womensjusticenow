<?php

$className = 'module news-feed';

if (!empty($block['className'])) {
	$className .= ' ' . $block['className'];
}
if (!empty($block['align'])) {
	$className .= ' align' . $block['align'];
}

$quantity = get_field('quantity');
$the_query = new WP_Query( 'posts_per_page=' . $quantity );

?>


<div class="<?php echo esc_attr($className); ?>">
	<div class="container">
		<h3><?php echo the_field('title') ?></h3>
		<div class="row mx-lg-n3">
			<?php while ($the_query -> have_posts()) : $the_query -> the_post(); ?>
				
				<?php
					$categories = get_the_category();

					if ( ! empty( $categories ) ) {
					    $category = $categories[0]->name;   
					}
				?>	

				<div class="col-lg-6 px-lg-3 news-item">
					<div class="item-container">
						<a href="<?php the_permalink() ?>"></a>
						<div class="item-icon">
							<?php 
								if(has_category( 'Media' )) { ?>
									<i class="fas fa-external-link-alt"></i>
								<?php } elseif(has_category( 'Blog' )) { ?>
									<i class="far fa-newspaper"></i>
								<?php } elseif(has_category( 'Press Releases' )) { ?>
									<i class="fas fa-newspaper"></i>
								<?php } else { ?>
									<i class="far fa-file-alt"></i>
								<?php }
							?>
							
						</div>
						<div class="vertical-align">
							<p class="above-headline">
								<span class="category">
									<?php
										if ( ! empty( $categories ) ) {
										    echo $category;   
										} else { echo 'News'; }
									?>							
								</span>
								<span class="separator">/</span>
								<span class="date">
									<?php echo get_the_date(); ?>
								</span>
							</p>
							<h2><?php the_title(); ?></h2>
							<p class="excerpt">
								<?php the_excerpt(); ?>
							</p>
							<p class="read-more">
								<i class="fa fa-chevron-right"></i> 
								<span>
									<?php 
										if(has_category( 'Media' )) { 
											the_field('source_label', get_the_ID());
										} else { echo 'Read More'; } 
									?>
								</span>
							</p>							
						</div>
					</div>
				</div>

			<?php endwhile;
			wp_reset_postdata();?>
		</div>
		<div class="more-news text-center">
			<button class="outline blue"><a href="/news/">More News</a></button>
		</div>
	</div>	
</div>