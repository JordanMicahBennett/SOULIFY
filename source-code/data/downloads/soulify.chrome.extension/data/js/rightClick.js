//author: Jordan Micah Bennett, Soulify 2014
//All regular expression routines, all other code written via aforesaid author, Jordan, via GoogleChromeExtension API___
//Allows users to 'soulify' content to there profile, from any website, through the utilization of cookies via source website http://soulify.tk which is an alias for http://soulify.honor.es

//global variables
function generateSoulifyActionResponse ( data, dataSource )
{
	var browserSoulifyActionContentStream = data;
	var browserSoulifyActionContentSource = dataSource; 
	window.open('http://soulify.honor.es/data/phps/_php.soulify.php?soulificationContent='+browserSoulifyActionContentStream+'&soulificationSource='+browserSoulifyActionContentSource,'popup','width=512,height=614');
}

//page
chrome.contextMenus.create
(
	{
		title: 'soulify!', 
		contexts:['all'], 
		onclick: function(info, tab) 
		{
			generateSoulifyActionResponse ( getVideoEmbedStream ( info.pageUrl ), info.pageUrl );
		}
	}
);
//page
chrome.contextMenus.create
(
	{
		title: 'soulify!', 
		contexts:['page'], 
		onclick: function(info, tab) 
		{
			generateSoulifyActionResponse ( info.pageUrl, info.pageUrl );
		}
	}
);


/////////////////////////////////
//UTILITIY_FUNCTIONS
/////////////////////////////////
	/////////////////////////////////
	//adult video hosting
	/////////////////////////////////
	var youtubeEmbedCore = 'http://www.youtube.com/embed/';
	var vimeoEmbedCore = 'https://player.vimeo.com/video/';
	var veohEmbedCore = 'http://www.veoh.com/seriesplayer_embedded2.swf?permalinkId=wzmg-and-the-coot&isVlog=true&videoAutoPlay=0&id=TEMPORARY_VIDEO_ID&player=channelembedded/';
	var dailymotionEmbedCore = 'http://www.dailymotion.com/embed/video/';
	var metacafeEmbedCore = 'http://www.metacafe.com/fplayer/TEMPORARY_VIDEO_ID.swf'; //i guesed this one lol
	var videobashEmbedCore = 'http://www.videobash.com/embed/';

	/////////////////////////////////
	//adult video hosting
	/////////////////////////////////
	var pornhubEmbedCore = 'http://ph-static.phncdn.com/flash/embed_player_v1.3.swf?options=http://www.pornhub.com/embed_player.php?id=';
	var redtubeEmbedCore = 'http://embed.redtube.com/player/?id=';
	var xvideosEmbedCore = 'http://flashservice.xvideos.com/embedframe/';
	var xhamsterEmbedCore = 'http://xhamster.com/xembed.php?video=TEMPORARY_VIDEO_ID';
	var youpornEmbedCore = 'http://www.youporn.com/embed/';
	var porntubeEmbedCore = 'http://embed.porntube.com/'; //i totally guessed this one worse than the previous guessess...and what's scary, it's one guess...
	
	function getVideoEmbedStream ( url )
	{
		var returnValue = '';
	
		/////////////////////////////////
		//general utilities
		/////////////////////////////////
			if ( contains ( url, 'youtube' ) )
				returnValue = youtubeEmbedCore + getYoutubeIdentification ( url );
				
			else if ( contains ( url, 'vimeo' ) )
				returnValue = vimeoEmbedCore + getVimeoIdentification ( url );
				
			else if ( contains ( url, 'veoh' ) )
				returnValue = veohEmbedCore.replace ( 'TEMPORARY_VIDEO_ID', getVeohIdentification ( url ) );
		
			else if ( contains ( url, 'dailymotion' ) )
				returnValue = dailymotionEmbedCore + getDailymotionIdentification ( url );
				
			else if ( contains ( url, 'metacafe' ) )
				returnValue = metacafeEmbedCore.replace ( 'TEMPORARY_VIDEO_ID', getMetacafeIdentification ( url ) );
		
			else if ( contains ( url, 'videobash' ) )
				returnValue = videobashEmbedCore + getVideobashIdentification ( url );
				
		/////////////////////////////////
		//adult video hosting
		/////////////////////////////////
		else if ( contains ( url, 'pornhub' ) )
			returnValue = pornhubEmbedCore + getPornhubIdentification ( url );
			
		else if ( contains ( url, 'redtube' ) )
			returnValue = redtubeEmbedCore + getRedtubeIdentification ( url );
			
		else if ( contains ( url, 'xvideos' ) )
			returnValue = xvideosEmbedCore + getXvideosIdentification ( url );
			
		else if ( contains ( url, 'xhamster' ) )
			returnValue = xhamsterEmbedCore.replace ( 'TEMPORARY_VIDEO_ID', getXhamsterIdentification ( url ) );
			
		else if ( contains ( url, 'youporn' ) )
			returnValue = youpornEmbedCore + getYoupornIdentification ( url );
			
		else if ( contains ( url, 'porntube' ) )
			returnValue = porntubeEmbedCore + getPorntubeIdentification ( url );
			
		return returnValue;
	}
	
	/////////////////////////////////
	//general utilities
	/////////////////////////////////
		function contains ( fullString, substringCandidate )
		{	
			return fullString.indexOf ( substringCandidate ) != -1;
		}
	
	/////////////////////////////////
	//general video hosting
	/////////////////////////////////
		function getYoutubeIdentification ( url ) 
		{
			return url.split ( '?v=' ) [ 1 ];
		}
		function getVimeoIdentification ( url ) 
		{
			return url.match(/^.+vimeo.com\/(.*\/)?([^#\?]*)/) ? url.match(/^.+vimeo.com\/(.*\/)?([^#\?]*)/)[2] || url.match(/^.+vimeo.com\/(.*\/)?([^#\?]*)/)[1] : null;
		}
		function getVeohIdentification ( url ) 
		{
			return url.split ( 'watch/' ) [ 1 ];
		}
		function getDailymotionIdentification ( url )
		{
			return url.split ( 'video/' ) [ 1 ];
		}
		function getMetacafeIdentification ( url )
		{
			return url.split ( 'watch/' ) [ 1 ];
		}
		function getVideobashIdentification ( url )
		{
			return url.split ( 'video_show/' ) [ 1 ];
		}
	/////////////////////////////////
	//adult video hosting
	/////////////////////////////////
		function getPornhubIdentification ( url ) 
		{
			return url.split ( '?viewkey=' ) [ 1 ];
		}
		function getRedtubeIdentification ( url ) 
		{
			return url.split ( 'com/' ) [ 1 ];
		}		
		function getXvideosIdentification ( url ) 
		{
			return ( ( url.split ( 'com/' ) [ 1 ] ).split ( '/' ) [ 0 ] ).replace ( 'video', '' );
		}		
		function getXhamsterIdentification ( url ) 
		{
			return ( ( url.split ( 'movies/' ) [ 1 ] ).split ( '/' ) [ 0 ] ).replace ( 'video', '' );
		}	
		function getYoupornIdentification ( url ) 
		{
			return url.split ( 'watch/' ) [ 1 ];
		}		
		function getPorntubeIdentification ( url ) 
		{
			return url.split (/[\s_]+/) [ 1 ];
		}		