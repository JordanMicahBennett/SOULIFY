<!--DOCTYPE html -->
<!--
	author(s) details : Jordan Micah Bennett
-->
<?php
	session_start(); 
	$srmgActionContentStream = $_GET['soulificationContent'];
	$srmgActionContentSource = $_GET['soulificationSource'];
	$srmgActionContentEmail = $_COOKIE['UserSignInEmail'];
	
	
	$_SESSION [ 'SOULIFY_ACTION_CONTENT_STREAM' ] = $srmgActionContentStream;
	$_SESSION [ 'SOULIFY_ACTION_CONTENT_SOURCE' ] = $srmgActionContentSource;
	$_SESSION [ 'SOULIFY_ACTION_USER_EMAIL' ] = $srmgActionContentEmail;
?>
<html id = 'soulifyBackgroundArea'>
	<head>
		<link rel='stylesheet' href='../stylesheets/stylesheet.all.css' />
		
		<script type = 'text/javascript'>
			document.getElementById('soulifyBackgroundArea').style.backgroundColor = 'rgba(52, 250, 226, 1)';
			/*document.getElementById('soulifyBackgroundArea').style.backgroundImage = 'url(../images/)';
			document.getElementById('soulifyBackgroundArea').style.backgroundRepeat = 'no-repeat';
			document.getElementById('soulifyBackgroundArea').style.backgroundSize = '500 580';
			document.getElementById('soulifyBackgroundArea').style.backgroundAttachment = 'fixed';*/
		</script>
	</head>
	
	
	<body>
		<form action = '_php.soulification.php' method = 'post' enctype='multipart/form-data' >
			<center>
				<table>
					<tbody>
						</tr>	
							<td> <label id = 'srmgActionTypeId' class = 'MediumMetroFontFace' > Soulify? </label>
						</tr>	

						<tr>
							<td> <label class ='MediumMetroFontFace' >title?</label>  </td>
							<td> <input class = 'styleZero' name = 'srmgItemTitleName' type = 'text'/> </td>
						</tr>			
						<tr>
							<td> <label class ='MediumMetroFontFace' >description?</label>  </td>
							<td> <textarea name = 'srmgItemDescriptionName' type = 'text'> </textarea> </td>
						</tr>	
						
						<tr>
							<td> <label class ='MediumMetroFontFace' >hmm, which genre should I add this to?</label>  </td>
							<td>
								<select name='srmgItemPublicationGenre'>
									<option value='African'>African</option>
									<option value='Blues'>Blues</option>
									<option value='Comedy'>Comedy</option>
									<option value='Country'>Country</option>		
									<option value='Dancehall'>Dancehall</option>
									<option value='Electronic'>Electronic</option>
									<option value='Folk'>Folk</option>
									<option value='HeavyMetal'>Heavy Metal</option>	
									<option value='HipHop'>Hip Hop</option>
									<option value='Jazz'>Jazz</option>				
								</select>
							</td>
						</tr>
						
						<tr>
							<td> <label class ='MediumMetroFontFace' >should I make this private or public?</label>  </td>
							<td>
								<select name='srmgItemPublicationStatus'>
									<option value='public'>make soulification public</option>
									<option value='private'>make soulification private</option>
								</select>
							</td>
						</tr>
												
						</tr>	
							<td> <input class = 'hoverableStyleZero' name = 'srmgActionAttemptButtonName' type = 'submit' value = 'soulify!'/> </td>
						</tr>	
					</tbody>
				</table>
			</center>
		</form>
		
		<center> <img id = '' class = 'soulificationLogo' /> </center>
	</body>
</html>