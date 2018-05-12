![Alt text](https://github.com/JordanMicahBennett/SOULIFY/blob/master/source-code/data/images/captures/0.png?raw=true "default page")
=============================
![Alt text](https://github.com/JordanMicahBennett/SOULIFY/blob/master/source-code/data/images/captures/1.png?raw=true "default page")
=============================
![Alt text](https://github.com/JordanMicahBennett/SOULIFY/blob/master/source-code/data/images/captures/2.png?raw=true "default page")
=============================


SOULIFY
=======
A scratch written, flavourful music/video archiver micro-social-network, allowing users the ability to 'soulify' content (via google chrome) 
Soulify was written in pure html/css/javascript/php/ajax.


RUNNING THE APP 
=======
1. Soulify is live on https://soulify.rf.gd. 

2. Add soulify extension to your chrome browser:

	b. Go to extensions/load unpacked.

	c. Browse to [soulify/data/downloads/soulify.chrome.extension](https://github.com/JordanMicahBennett/Grapple/tree/master/data/miscellaneous/resources/extensions/grapple'.chrome.extension/source%20code/src/grapple'.chrome.extension) folder.

	d. You're adding the folder, so once you reach "soulify.chrome.extension" above, click okay.

	e. You should now see the extension added to chrome:

![Alt text]( https://github.com/JordanMicahBennett/Grapple/blob/master/data/miscellaneous/Screens/setup_extension_added.png "default page")



RUNNING THE APP (OFFLINE)
=======
1. Create database called with any name in xamp, and import [soulify/data/miscellaneous/database/soulify_db.sql](https://github.com/JordanMicahBennett/Grapple/blob/master/grapple_db.sql) into the database you created.

2. You'll then have to ensure that all php files in "[data/phps/](https://bitbucket.org/JordanMicahBennett/bookingapp/src/master/data/phps/)" are updated with the appropriate connection details for your localhost connection settings, together with whatever you named your database above.

3. Adjust function "generateSoulifyActionResponse" in file  [soulify/data/downloads/soulify.chrome.extension/data/js/rightClick.js](https://github.com/JordanMicahBennett/Grapple/tree/master/data/miscellaneous/resources/extensions/grapple'.chrome.extension/source%20code/src/grapple'.chrome.extension/data/js/rightClick.js), by replacing "soulify.rf.gd" portion of url with whatever your localhost setting is, which is typically "https://localhost/<whatever you stored soulify as in xamp/htdocs>".


WHAT CAN ONE DO WITH SOULIFY?
=============================


  a. Using google chrome, after signing up, one may 'soulify' videos via most sites, to one's profile of music categories of archives on [https://soulify.rf.gd](soulify).

  b. Soulify allows one to attach flavours by essentially colouring one's music categories, by mood colours.


AUTHOR PORTFOLIO
============================================
http://folioverse.appspot.com/
