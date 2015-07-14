<?php
	session_start();
	//establish database connection requirements
		//establish database connection requirements
		$_SESSION [ 'dbHost' ] = 'mysql.2freehosting.com';
		$_SESSION [ 'dbUsername' ] = 'u455509233_soul';
		$_SESSION [ 'dbPassword' ] = 'soulify!';
		$_SESSION [ 'dbName' ] = 'u455509233_soul';
		
		
	//establish processes
		//establish database connection
		//connection to the database
		$connection = mysqli_connect ( $_SESSION [ 'dbHost' ], $_SESSION [ 'dbUsername' ], $_SESSION [ 'dbPassword' ], $_SESSION [ 'dbName' ] );
		
		//establish connection verification
		if ( mysqli_connect_errno ( ) )
		{
			echo "Failed to connect to MySQL: " . mysqli_connect_error ( );
		}
		
		//establish results from database
		$result = mysqli_query ( $connection,"select * from Users" );

		$userSignInEmail = $_GET['SOULIFY_SIGN_IN_USER_EMAIL_GET_VALUE'];
		$userSignInPassword = $_GET['SOULIFY_SIGN_IN_USER_PASSWORD_GET_VALUE'];
		
		setcookie("UserSignInEmail", $userSignInEmail);
		
		while($row = mysqli_fetch_array($result))
		{
		
			if ( ( $userSignInEmail == $row['UserEmail'] ) && ( $userSignInPassword == $row['UserPassword'] ) )
				$output[] = array(
                "userEmail" => $row['UserEmail'],
                "userPassword" => $row['UserPassword'],
				"userName" => $row['UserName'],
				"userTitle" => $row['UserTitle'],
				"userNotificationCardinality" => $row['UserNotificationCardinality'],
                "userFollowerCardinality" => $row['UserFollowerCardinality'],
                "userFollowingCardinality" => $row['UserFollowingCardinality'], 
				"userProfilePictureStream" => $row['UserProfilePictureStream']
                );
		}
		header('Content-Type: application/json');
		echo json_encode($output);
?>

