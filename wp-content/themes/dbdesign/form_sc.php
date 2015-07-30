<?php
// Shortcode for Multi-Step Form
add_shortcode('multipage_form_sc', 'multipage_form');
function multipage_form(){

	global $wpdb;
	$this_page = $_SERVER['REQUEST_URI'];
	$page = $_POST['page'];	

	if( $page == NULL ){
		echo '<form method="post" action="' . $this_page . '">
		<div class="form-group">
			<div class="col-lg-6">
				<label for="first_name">First Name: </label>
				<input type="text" class="form-control" name="first_name" id="first_name">
			</div>
		</div>
		<div class="form-group">
			<div class="col-lg-6">
				<label for="last_name">Last Name: </label>			
				<input type="text" class="form-control" name="last_name" id="last_name">
			</div>
		</div>
		<div class="form-group">
			<div class="col-lg-6">
				<label for="email">Email: </label>			
				<input type="text" class="form-control" name="email" id="email">
			</div>
		</div>
		<div class="form-group">
			<div class="col-lg-6">
				<label for="phone">Phone: </label>			
				<input type="text" class="form-control" name="phone" id="phone">
			</div>
		</div>
		<div class="form-group">
			<div class="col-lg-6">
				<label for="zip">Zip Code: </label>			
				<input type="text" class="form-control" name="zip" id="zip">
			</div>
		</div>
		<input type="hidden" value="1" name="page">		
		<div class="col-lg-12">
			<button type="submit" class="btn btn-default">Submit</button>
		</div>
		</form>';
		// End Page 1 of form
	} elseif( $page == 1 ){
		
		// Grab POST data
		$first_name = $_POST['first_name'];
		$last_name = $_POST['last_name'];
		$email = $_POST['email'];
		$phone = $_POST['phone'];
		$zip = $_POST['zip'];

		// Assign table and inputs for INSERT fn
		$page_one_table = 'shopping_preferences';
		$page_one_inputs = array(
			'first_name' => $first_name,
			'last_name' => $last_name,
			'email' => $email,
			'phone' => $phone,
			'zip_code' => $zip,
			'page' => $page
		);

		// Insert data into new row in db
		$insert_page_one = $wpdb->insert($page_one_table, $page_one_inputs);
		// Grab ID of new row
		$form_id = $wpdb->insert_id;

		echo '<form method="post" action="' . $this_page . '">
		<div class="form-group">
			<label for="gender">Gender: </label>
			<select class="form-control" name="gender" id="gender">
				<option value="nothing" selected>Select Gender</option>
				<option value="0">Female</option>
				<option value="1">Male</option>
			</select>
		</div>
		<div class="form-group">
			<label for="age">Age: </label>
			<input type="text" name="age" id="age" class="form-control">
		</div>
		<div class="form-group">
			<label for="education">Education: </label>
			<select name="education" id="education" class="form-control">
				<option value="nothing" selected>Select Level of Education</option>
				<option value="some_high_school">Some High School</option>
				<option value="all_high_school">High School Diploma/GED</option>
				<option value="some_college">Some College</option>
				<option value="all_colleg">College Degree</option>
				<option value="some_grad">Some Graduate School</option>
				<option value="all_grad">Graduate</option>
				<option value="some_doc">Some Post Graduate</option>
				<option value="all_doc">Doctorate</option>
			</select>
		</div>
		<div class="form-group">
			<label for="income">Income: </label>
			<select name="income" id="income" class="form-control">
				<option value="nothing" selected>Select Income Range</option>
				<option value="10000" selected>Less than $10,000</option>
				<option value="25000" selected>$10,000 - $25,000</option>
				<option value="50000" selected>$25,000 - $50,000</option>
				<option value="75000" selected>$50,000 - $75,000</option>
				<option value="max" selected>More than $75,000</option>			
			</select>
		</div>
		<input type="hidden" value="2" name="page">
  		<input type="hidden" value="' . $form_id . '" name="form_id">
  		<div class="col-lg-12">
			<button type="submit" class="btn btn-default">Submit</button>
		</div>
		</form>
		';

		//End Page 1 of form
	} elseif( $page == 2 ){
		
		$gender = $_POST['gender'];
		$age = $_POST['age'];
		$education = $_POST['education'];
		$income = $_POST['income'];
		$page = $_POST['page'];
		$form_id = $_POST['form_id'];
		
		// Assign table and inputs for UPDATE fn
		$page_two_table = 'shopping_preferences';
		$page_two_inputs = array(
			'gender' => $gender,
			'age' => $age,
			'education' => $education,
			'income' => $income,
			'page' => $page
		);
		$page_two_where = array(
			'id' => $form_id
		);

		$insert_page_two = $wpdb->update($page_two_table, $page_two_inputs, $page_two_where);

		echo '<form method="post" action="' . $this_page . '">
			<div class="form-group">
				<label for="location">How do you like to shop?</label>
				<select name="location" id="location" class="form-control">
					<option value="nothing" selected>Pick Your Favorite</option>
					<option value="ebay">Online - Ebay</option>
					<option value="eretailer">Online - Retailers</option>
					<option value="classifieds">Online - Classifieds</option>
					<option value="store">Physical Store</option>
				</select>
			</div>';

		if( $gender == "nothing" ){
		echo '<div class="form-group">
				<label for="category">What do you shop for most?</label>
				<select name="category" id="category">
					<option value="nothing" selected>Pick Your Favorite</option>
					<option value="ebay">Clothes</option>
					<option value="eretailer">Shoes</option>
					<option value="classifieds">Jewelry</option>
					<option value="classifieds">Cooking Equipment</option>
					<option value="store">Sports Gear</option>
					<option value="classifieds">Computers - Desktop</option>
					<option value="classifieds">Computers - Laptop</option>
					<option value="classifieds">Computers - Software</option>
				</select>
			 </div>';
		} elseif( $gender == 0 ){
		echo '<div class="form-group">
			<label for="category">What do you shop for most?</label>
			<select name="category" id="category">				
				<option value="nothing" selected>Pick Your Favorite</option>
				<option value="ebay">Clothes</option>
				<option value="eretailer">Shoes</option>
				<option value="classifieds">Jewelry</option>
				<option value="classifieds">Cooking Equipment</option>
				<option value="store">Sports Gear</option>
				<option value="classifieds">Computers - Desktop</option>
				<option value="classifieds">Computers - Laptop</option>
				<option value="classifieds">Computers - Software</option>
			</select>
		  </div>';
		} elseif( $gender == 1 ) {
		echo '<div class="form-group">
			<label for="category">What do you shop for most?</label>
			<select name="category" id="category">
				<option value="nothing" selected>Pick Your Favorite</option>
				<option value="store">Sports Gear</option>
				<option value="classifieds">Computers - Desktop</option>
				<option value="classifieds">Computers - Laptop</option>
				<option value="classifieds">Computers - Software</option>
			</select>
		  </div>';
		}

		echo '<input type="hidden" value="3" name="page">
  			  <input type="hidden" value="' . $form_id . '" name="form_id">
	  		  <div class="col-lg-12">
				<button type="submit" class="btn btn-default">Submit</button>
			  </div>
			</form>';				
		// End Page 2 of form
	} elseif( $page == 3 ){
		
		$location = $_POST['location'];
		$category = $_POST['category'];
		$page = $_POST['page'];
		$form_id = $_POST['form_id'];

		$page_three_table = 'shopping_preferences';
		$page_three_inputs = array(
			'location' => $location,
			'categories' => $category,
			'page' => $page
		);
		$page_three_where = array(
			'id' => $form_id			
		);

		$insert_page_three = $wpdb->update($page_three_table, $page_three_inputs, $page_three_where);

		$data_check = $wpdb->get_row("SELECT * FROM shopping_preferences WHERE id = '$form_id'");
		echo '<div class="container" style="clear:both;">
			<h3>Form Finished</h3>
			<ul>
				<li>ID:' . $data_check->id .
				'</li><li>First Name:' . $data_check->first_name .
				'</li><li>Last Name:' . $data_check->last_name .
				'</li><li>Email:' . $data_check->email .
				'</li><li>Phone:' . $data_check->phone .
				'</li><li>Zip Code:' . $data_check->zip_code .
				'</li><li>Gender: ' . $data_check->gender .
				'</li><li>Age: ' . $data_check->age .
				'</li><li>Education: ' . $data_check->education .
				'</li><li>Income: ' . $data_check->income .
				'</li><li>Location: ' . $data_check->location .
				'</li><li>Categories: ' . $data_check->categories .
				'</li><li>Page: ' . $data_check->page .
				'</li><li>Timestamp: ' . $data_check->timestamp .
			'</li></ul>
		</div>';
	}
	// End Page 3 form
}


?>