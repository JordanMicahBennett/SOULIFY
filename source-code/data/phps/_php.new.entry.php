	<?php
	//Author: Jordan Micah Bennett
		session_start ( );
				////////////////////////////////////////////////////////////////////////////////////////////////
				//BEGIN SQL CONNECTION PROCESSS
				////////////////////////////////////////////////////////////////////////////////////////////////
				//establish database connection requirements
					//estabish database connection requirements
					$_SESSION [ 'dbHost' ] = 'mysql.2freehosting.com';
					$_SESSION [ 'dbUsername' ] = 'u455509233_soul';
					$_SESSION [ 'dbPassword' ] = 'soulify!';
					$_SESSION [ 'dbName' ] = 'u455509233_soul';
					
		
				//establish database connection
					//connection to the database
					$connection = mysqli_connect ( $_SESSION [ 'dbHost' ], $_SESSION [ 'dbUsername' ], $_SESSION [ 'dbPassword' ], $_SESSION [ 'dbName' ] );
					
					//establish connection verification
					if ( mysqli_connect_errno ( ) )
					{
						//echo 'Failed to connect to MySQL: ' . mysqli_connect_error ( );
					}
				////////////////////////////////////////////////////////////////////////////////////////////////
				//END SQL CONNECTION PROCESSS
				////////////////////////////////////////////////////////////////////////////////////////////////	
				
				
				////////////////////////////////////////////////////////////////////////////////////////////////
				//BEGIN ADD NEW USER TEXT BASED DETAILS PROCESSS - COMPONENT.0
				////////////////////////////////////////////////////////////////////////////////////////////////				
				//establish user input html element variables
				$newUserName = $_GET['SOULIFY_NEW_USER_NAME'];
				$newUserEmail = $_GET['SOULIFY_NEW_USER_EMAIL'];
				$newUserPassword = $_GET['SOULIFY_NEW_USER_PASSWORD'];
				$newUserTitle = $_GET['SOULIFY_NEW_USER_TITLE'];
				$newUserNotificationCardinality = '1';
				$newUserFollowersCardinality = '1';
				$newUserFollowingCardinality = '1';
		
				//echo 'generateGenericResponse ( 'new user\'s text details.component.0.complete!' );';
				////////////////////////////////////////////////////////////////////////////////////////////////
				//BEGIN ADD NEW USER TEXT BASED DETAILS PROCESSS - COMPONENT.0
				////////////////////////////////////////////////////////////////////////////////////////////////	
				
				
				////////////////////////////////////////////////////////////////////////////////////////////////
				//BEGIN ADD NEW USER IMAGE BASED DETAILS PROCESSS - the image file is added to the server
				////////////////////////////////////////////////////////////////////////////////////////////////
				$serverHomeName = 'u743067694';
				$newUserCoreResourceStream = '/home/'.$serverHomeName.'/public_html/data/images/users/'.$newUserEmail;
				$userProfilePictureSampleCoreStream = '/home/'.$serverHomeName.'/public_html/data/images/users/default';
				$userProfilePictureSampleNameStream = '/home/'.$serverHomeName.'/public_html/data/images/users/default/sample.user.profile.picture.png';
				$userProfilePictureSampleNameDuplicateStream = '/home/'.$serverHomeName.'/public_html/data/images/users/default/duplicate.sample.user.profile.picture.png';
																													    
				$uploadSuccess = false;

				
				mkdir($newUserCoreResourceStream);

				
				$userProfilePictureUiImageName = $_FILES['JoinWidgetAreaComponentFourAName']['name'];
				$newUserProfileSampleImageStorageStream = $newUserCoreResourceStream.'/profile.picture.png';
				$newUserProfileImageStorageStream = $newUserCoreResourceStream.'/'.$userProfilePictureUiImageName;
				$newUserProfileImageDatabaseStream = 'data/images/users/'.$newUserEmail.'/profile.picture.png';
				$allowedExts = array('gif', 'jpeg', 'jpg', 'png');
				$temp = explode('.', $_FILES['JoinWidgetAreaComponentFourAName']['name']);
				
				$extension = end($temp);
				if 
					(
						(
							($_FILES['JoinWidgetAreaComponentFourAName']['type'] == 'image/gif')
							|| 
							($_FILES['JoinWidgetAreaComponentFourAName']['type'] == 'image/jpeg')
							|| 
							($_FILES['JoinWidgetAreaComponentFourAName']['type'] == 'image/jpg')
							|| 
							($_FILES['JoinWidgetAreaComponentFourAName']['type'] == 'image/pjpeg')
							|| 
							($_FILES['JoinWidgetAreaComponentFourAName']['type'] == 'image/x-png')
							|| 
							($_FILES['JoinWidgetAreaComponentFourAName']['type'] == 'image/png')
						)
						&& 
							($_FILES['JoinWidgetAreaComponentFourAName']['size'] < 1048576) //limit file to 1024 kb
						&& 
							in_array($extension, $allowedExts)
					)
					{
						if ($_FILES['JoinWidgetAreaComponentFourAName']['error'] > 0)
						{
							//echo 'Return Code: ' . $_FILES['JoinWidgetAreaComponentFourAName']['error'] . '<br>';
						}
						else
						{
							if(copy($_FILES['JoinWidgetAreaComponentFourAName']['tmp_name'], $newUserProfileImageStorageStream))
							{
								//rename in tandem with database name
								rename($newUserCoreResourceStream.'/'.$_FILES['JoinWidgetAreaComponentFourAName']['name'], $newUserCoreResourceStream.'/profile.picture.png');
								$uploadSuccess = true;
								//display response message
								//echo 'generateGenericResponse ( 'new user\'s image details added!' );';
							}
						}
					}
				else
				{
					//otherwise copy placeholder  profile picture image from  server file system
					if(copy($userProfilePictureSampleNameStream,$userProfilePictureSampleNameDuplicateStream))
					{
						if(copy($userProfilePictureSampleNameDuplicateStream, $newUserProfileSampleImageStorageStream))
						{
							rename($userProfilePictureSampleNameDuplicateStream, $newUserCoreResourceStream.'/profile.picture.png');
						}
					}
					//display response message
					//echo 'generateGenericResponse ( 'photo upload failure!' );';	
				}
				////////////////////////////////////////////////////////////////////////////////////////////////
				//END ADD NEW USER IMAGE BASED DETAILS PROCESSS
				////////////////////////////////////////////////////////////////////////////////////////////////

				////////////////////////////////////////////////////////////////////////////////////////////////
				//BEGIN ADD NEW USER TEXT BASED DETAILS PROCESSS - COMPONENT.1
				////////////////////////////////////////////////////////////////////////////////////////////////		
				//create new user
					//generate user
					$connection -> query ("insert into Users(UserEmail, UserName, UserPassword, UserTitle, UserNotificationCardinality, UserFollowerCardinality, UserFollowingCardinality, UserProfilePictureStream) values ('$newUserEmail','$newUserName','$newUserPassword','$newUserTitle','$newUserNotificationCardinality','$newUserFollowersCardinality','$newUserFollowingCardinality', '$newUserProfileImageDatabaseStream' )");
					//generate user genre information
					$connection -> query ("insert into GenreMoods(UserEmail, MoodString) values ('$newUserEmail','african:default,blues:default,comedy:default,country:default,dancehall:default,electronic:default,folk:default,heavymetal:default,hiphop:default,jazz:default' )");
					//generate user last mood information
					$connection -> query ("insert into LastMood(UserEmail, Title) values ('$newUserEmail','default' )");
						
				
				
				echo "sign up complete!";
				
				
				
				////////////////////////////////////////////////////////////////////////////////////////////////
				//END ADD NEW USER TEXT BASED DETAILS PROCESSS - COMPONENT.1
				////////////////////////////////////////////////////////////////////////////////////////////////
				
				
				////////////////////////////////////////////////////////////////////////////////////////////////
				//BEGIN SQL CONNECTION TERMINATION PROCESS
				////////////////////////////////////////////////////////////////////////////////////////////////
				//establish connection termination
				mysqli_close ( $connection );
				////////////////////////////////////////////////////////////////////////////////////////////////
				//END SQL CONNECTION TERMINATION PROCESS
				////////////////////////////////////////////////////////////////////////////////////////////////
		?>