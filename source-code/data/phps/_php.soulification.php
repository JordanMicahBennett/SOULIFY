<!--DOCTYPE html -->
<!--
	author(s) details : Jordan Micah Bennett
-->
<html id = "soulificationBackgroundArea">
	<head>
		<link rel="stylesheet" href="../stylesheets/stylesheet.all.css" />
		
		<script type = "text/javascript">
			document.getElementById('soulificationBackgroundArea').style.backgroundColor = "rgba(52, 250, 226, 1)";
			/*document.getElementById('soulificationBackgroundArea').style.backgroundImage = "url(../../images/)";
			document.getElementById('soulificationBackgroundArea').style.backgroundRepeat = "no-repeat";
			document.getElementById('soulificationBackgroundArea').style.backgroundSize = "500 580";
			document.getElementById('soulificationBackgroundArea').style.backgroundAttachment = "fixed";*/
		</script>
	</head>
	
	
	<body>
		<?php
			session_start(); 
			
				////////////////////////////////////////////////////////////////////////////////////////////////
				//BEGIN SQL CONNECTION PROCESSS
				////////////////////////////////////////////////////////////////////////////////////////////////
				//establish database connection requirements
					//establish database connection requirements
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
						//echo "Failed to connect to MySQL: " . mysqli_connect_error ( );
					}
					
				$loginSuccess = false;
				
				if ( !empty ( $_POST [ 'srmgActionAttemptButtonName' ] ) )
				{	
					//establish html sign in input components, with respect to php 
					$userLoginEmail = $_SESSION [ 'SOULIFY_ACTION_USER_EMAIL' ];
					$srmgItemTitle = $_POST [ 'srmgItemTitleName' ];
					$srmgItemDescription = $_POST [ 'srmgItemDescriptionName' ];
					$srmgItemSource = $_SESSION [ 'SOULIFY_ACTION_CONTENT_SOURCE' ];
					$srmgItemStream = $_SESSION [ 'SOULIFY_ACTION_CONTENT_STREAM' ];
					$srmgDateTag = date('Y-m-d H:i:s');
					$srmgItemPublicationStatus = $_POST [ 'srmgItemPublicationStatus' ];
					$srmgGenre = $_POST [ 'srmgItemPublicationGenre' ]; //this is not added to the database, but rather is a direction as to what table is modified
					
					//install title for user if user didn't give any title..
					if ( $srmgItemTitle == "" ) 
						$srmgItemTitle = "Untitled";
					else
						$srmgItemTitle = $srmgItemTitle;

				  
					//manipulate database based on genre insertion desire 
					$connection -> query ("insert into Genre_".$srmgGenre." (UserEmail, Title, Description, Source, Stream, DateAdded, PublicationStatus) values ('$userLoginEmail', '$srmgItemTitle', '$srmgItemDescription', '$srmgItemSource', '$srmgItemStream', '$srmgDateTag', '$srmgItemPublicationStatus')");

					echo '<center> <input id = "srmgActionCompletionSuccessId" class = "hoverableStyleZero" type = "submit" value = "soulified!" onclick = "showDetails ( )"> </center>';
					$loginSuccess = true;
					
					echo '<center> <img id = "" class = "soulificationLogo" /> </center>';
					if($loginSuccess == false)
					{
						echo '<center> <input id = "srmgActionCompletionFailureId" class = "hoverableStyleZero" type = "submit" value = "you are not logged in!" onclick = "<script> this.close ( ) </script>" >  </center>';
					}
				}
				//display success!
				//echo 'generateGenericResponse ( "new user\'s text details.component.1.complete!" );';
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
	</body>
</html>