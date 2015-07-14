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
		$results = mysqli_query ( $connection,"select * from Moods" );

		while($row = mysqli_fetch_array($results))
		{
			$output[] = array
			(
				"title" => $row['Title'],
				"colour" => $row['Colour'],
				"deepColour" => $row['DeepColour']
			);
		}
		header('Content-Type: application/json');
		echo json_encode($output);
?>

