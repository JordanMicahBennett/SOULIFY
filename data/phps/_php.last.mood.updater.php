<?php
	session_start();
	//establish database connection requirements
		//establish database connection requirements
		$_SESSION [ 'dbHost' ] = 'sql113.epizy.com';
		$_SESSION [ 'dbUsername' ] = 'epiz_22066031';
		$_SESSION [ 'dbPassword' ] = 'u0VLSO2Lfbdo';
		$_SESSION [ 'dbName' ] = 'epiz_22066031_db';
		
		
	//establish processes
		//establish database connection
		//connection to the database
		$connection = mysqli_connect ( $_SESSION [ 'dbHost' ], $_SESSION [ 'dbUsername' ], $_SESSION [ 'dbPassword' ], $_SESSION [ 'dbName' ] );
		
		//establish connection verification
		if ( mysqli_connect_errno ( ) )
		{
			echo "Failed to connect to MySQL: " . mysqli_connect_error ( );
		}
		
		$userSignInEmail = $_GET['SOULIFY_SIGN_IN_USER_EMAIL_GET_VALUE'];
		$currentMood = $_GET['SOULIFY_MOOD_SELECTION_VALUE'];
		
		//insert last mood into database
		$connection -> query ("update LastMood set Title = '$currentMood' where UserEmail = '$userSignInEmail'");
						
?>

