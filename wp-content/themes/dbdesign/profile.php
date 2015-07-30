<?php 
/*
Template Name: Edit Profile
*/

get_header();

global $current_user, $user_ID, $wpdb;
get_currentuserinfo();
$error = array();
$error_msg = false;

if( $_SERVER['REQUEST_METHOD'] == 'POST' && !empty( $_POST['action'] )  && $_POST['action'] == 'update-user' ){

	$login = $_POST['login'];
	$pw = $_POST['password'];
	$email = $_POST['email'];
	$display_name = $_POST['display_name'];
	$first_name = $_POST['first_name'];
	$last_name = $_POST['last_name'];
	$nickname = $_POST['nickname'];

	//Update Login
	if( !empty($login) ){
		$wpdb->update( $wpdb->users, array('user_login' => $login), array('ID' => $user_ID) );
	}

	//Update Password
	if( !empty($pw) ){
		wp_update_user( array('ID' => $user_ID, 'user_pass' => esc_attr($pw)) );
	}

	//Update Email
	if( !empty($email) ){
		if( !is_email(esc_attr($email)) ){
			$error[] = __('Please enter a valid email address', 'profile');
		} elseif( email_exists(esc_attr($email)) ){
			$error[] = __('Email address already exists, please enter a new email address', 'profile');
		} else{
			wp_update_user( array('ID' => $user_ID, 'user_email' => esc_attr($email)) );
		}
	}

	//Update Display Name
	if( !empty($display_name) ){
		wp_update_user( array('ID' => $user_ID, 'display_name' => esc_attr($display_name)) );
		if( get_the_author_meta('display_name', $user_ID) != $display_name ){
			$error_msg = true;
		}
	}

	//Update First Name
	if( !empty($first_name) ){
		update_user_meta($user_ID, 'first_name', esc_attr($first_name) );
		if( get_user_meta($user_ID, 'first_name', true) != $first_name ){
			$error_msg = true;
		}		
	}

	//Update Last Name
	if( !empty($last_name) ){
		update_user_meta($user_ID, 'last_name', esc_attr($last_name) );
		if( get_user_meta($user_ID, 'last_name', true) != $last_name ){
			$error_msg = true;
		}
	}

	//Update Nickname
	if( !empty($nickname) ){
		update_user_meta($user_ID, 'nickname', esc_attr($nickname) );
		if( get_user_meta($user_ID, 'nickname', true) != $nickname ){
			$error_msg = true;
		}
	}

	if( count($error) == 0 || ($error_msg == false) ){
		do_action('edit_user_profile_update', $user_ID);
		echo '<div class="container" style="padding-top: 60px;">
				<div class="col-lg-6 center-block">
					<p class="bg-success">Profile Updated!</p>
				</div>
			  </div>';
	}

}

?>

<div class="container first">	
	<div class="page-header">
		<h2>User Data</h2>
	</div>
	<form method="POST" action="<?php the_permalink(); ?>" id="update_user_info">
		<div class="form-group">
			<div class="col-lg-3">
				<label for="login">Edit Login</label>
				<input name="login" value="<?php the_author_meta( 'user_login', $user_ID ); ?>" class="form-control">
			</div>
			<div class="col-lg-3">
				<label for="password">Edit Password</label>
				<input name="password" class="form-control">
			</div>
			<div class="col-lg-3">
				<label for="email">Edit Email</label>
				<input name="email" value="<?php the_author_meta( 'user_email', $user_ID ); ?>" class="form-control">
			</div>
			<div class="col-lg-3">
				<label for="display_name">Edit Display Name</label>
				<input name="display_name" value="<?php the_author_meta( 'display_name', $user_ID ); ?>" class="form-control">
			</div>
			<div class="col-lg-3">
				<label for="first_name">Edit First Name</label>
				<input name="first_name" value="<?php the_author_meta( 'first_name', $user_ID ); ?>" class="form-control">
			</div>
			<div class="col-lg-3">
				<label for="last_name">Edit Last Name</label>
				<input name="last_name" value="<?php the_author_meta( 'last_name', $user_ID ); ?>" class="form-control">
			</div>
			<div class="col-lg-3">
				<label for="nickname">Edit Nickname</label>
				<input name="nickname" value="<?php the_author_meta( 'nickname', $user_ID ); ?>" class="form-control">
			</div>
		</div>
		<div class="col-lg-12 update-btn">
			<button name="updateuser" type="submit" class="btn btn-primary">Update</button>
			<input name="action" type="hidden" id="action" value="update-user">
		</div>
	</form>		
</div>



<?php get_footer(); ?>