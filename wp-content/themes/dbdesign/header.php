<!DOCTYPE html>
<html lang="en">
	<head>
		<meta charset="utf-8">
		<meta name="viewport" content="width=device-width, initial-scale=1">
		<title>WP Multi-Step Form DEMO</title>		
		<?php wp_head(); ?>		
		<!--[if IE]>
			<script src="http://html5shiv.googlecode.com/svn/trunk/html5.js"></script>
		<![endif]-->
	</head>
	<body>
		<nav class="navbar navbar-default navbar-fixed-top">
	      <div class="container">
	        <div class="navbar-header">
	          <button type="button" class="navbar-toggle collapsed" data-toggle="collapse" data-target="#navbar" aria-expanded="false" aria-controls="navbar">
	            <span class="sr-only">Toggle navigation</span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	            <span class="icon-bar"></span>
	          </button>
	          <a class="navbar-brand" href="/">WP Multi-Step Form</a>
	        </div>
	        <div id="navbar" class="collapse navbar-collapse">
	          <ul class="nav navbar-nav">
	            <li class="<?php if( is_page('db-design') ){ echo 'active'; } ?>"><a href="/db-design/">Form</a></li>
	            <li class="<?php if( is_page('reporting') ){ echo 'active'; } ?>"><a href="/reporting/">Form Reporting</a></li>	            
	          </ul>
	          <ul class="nav navbar-nav navbar-right">	          	 
	          	<?php if( is_user_logged_in() ): ?>
	          		<li><a href="<?php echo wp_logout_url( get_permalink() ); ?>">Logout</a></li>
	          		<li class="<?php if( is_page('profile') ){ echo 'active'; }?>"><a href="/profile/">Edit Profile</a></li>
	          	<?php else: ?>
	          		<li><a href="<?php echo wp_login_url( get_permalink() ); ?>">Login</a></li>
	          	<?php endif; ?>
	          </ul>
	        </div><!--/.nav-collapse -->
	      </div>
    </nav>
		
