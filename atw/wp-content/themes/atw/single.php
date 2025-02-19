<?php get_header(); ?>

	<main role="main">
	<!-- section -->
	<section class="clear">

	<?php if (have_posts()): while (have_posts()) : the_post(); ?>
		<!-- post title -->
			
		<h1><span><?php the_title(); ?></span></h1>
		
		<!-- /post title -->
		<!-- article -->
		<article id="post-<?php the_ID(); ?>" <?php post_class(); ?>>

			<!-- post thumbnail -->
			<?php if ( has_post_thumbnail()) : // Check if Thumbnail exists ?>
				<div class="foto">
					<?php the_post_thumbnail('blogPrincipal'); // Fullsize image for the single post ?>
				</div>
			<?php endif; ?>
			<!-- /post thumbnail -->

			
			<div class="grid1-3">
			<!-- post details -->
			<span class="date">Escrito el:<?php the_time('F j, Y'); ?></span><br>
			<span class="author"><?php _e( 'publicado por:', 'html5blank' ); ?> <?php the_author_posts_link(); ?></span>
			<p><?php _e( 'Categoria: ', 'html5blank' ); the_category(', '); // Separated by commas ?></p>
			<span class="comments"><?php if (comments_open( get_the_ID() ) ) comments_popup_link( __( 'Leave your thoughts', 'html5blank' ), __( '1 Comment', 'html5blank' ), __( '% Comments', 'html5blank' )); ?></span>
			<!-- /post details -->
			<!-- Go to www.addthis.com/dashboard to customize your tools --> 
			<p class="compartir">compartir</p>
			<div class="addthis_inline_share_toolbox"></div> 
			</div>
				<div class="grid2-3">
			<?php the_content(); // Dynamic Content ?>
			<?php comments_template(); ?>
			<?php edit_post_link(); // Always handy to have Edit Post Links available ?>
				</div>

			

			

		</article>
		<!-- /article -->

	<?php endwhile; ?>

	<?php else: ?>

		<!-- article -->
		<article>

			<h1><?php _e( 'Sorry, nothing to display.', 'html5blank' ); ?></h1>

		</article>
		<!-- /article -->

	<?php endif; ?>

	</section>
	<!-- /section -->
	</main>

<?php //get_sidebar(); ?>

<?php get_footer(); ?>
