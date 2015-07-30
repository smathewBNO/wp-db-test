<?php get_header(); ?>

	<?php if ( have_posts() ) : while ( have_posts() ) : the_post(); ?>
		
		<div class="container first">
			<div class="page-header">
				<h2 class="content__title"><?php the_title() ;?></h2>
			</div>
			<div class="col-lg-12">
				<?php the_content(); ?>
			</div>
		</div>

	<?php endwhile; else: ?>
		<p>Sorry, no posts to list</p>
	<?php endif; ?>


<?php  get_footer(); ?>