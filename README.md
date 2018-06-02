![Alt text](https://github.com/JordanMicahBennett/SOULIFY/blob/master/data/miscellaneous/screens/1.png?raw=true "default page")
=============================
![Alt text](https://github.com/JordanMicahBennett/SOULIFY/blob/master/data/miscellaneous/screens/0.png?raw=true "default page")
=============================
![Alt text](https://github.com/JordanMicahBennett/SOULIFY/blob/master/data/miscellaneous/screens/2.png?raw=true "default page")
=============================


SOULIFY
=======
A scratch written, flavourful music/video archiver micro-social-network, allowing users the ability to 'soulify' content (via google chrome) 
Soulify was written in pure html/css/javascript/php/ajax.


RUNNING THE APP 
=======
1. Soulify is live on https://soulify.rf.gd. 

2. Add soulify extension to your chrome browser:

	b. Go to extensions/load unpacked (You would first need to extract soulify repository to somwhere you'll find later)

	c. Browse to extracted folder, to [soulify/data/downloads/soulify.chrome.extension](https://github.com/JordanMicahBennett/SOULIFY/tree/master/data/downloads/soulify.chrome.extension) folder.

	d. You're adding the folder, so once you reach "soulify.chrome.extension" above, click okay.

	e. You should now see the extension added to chrome:

![Alt text]( https://github.com/JordanMicahBennett/SOULIFY/blob/master/data/miscellaneous/screens/extensionAdded.png "default page")



RUNNING THE APP (OFFLINE)
=======
1. Create database called with any name in xamp, and import [soulify/data/miscellaneous/database/soulify_db.sql](https://github.com/JordanMicahBennett/SOULIFY/tree/master/data/miscellaneous/database/soulify_db.sql) into the database you created.

2. You'll then have to ensure that all php files in "[data/phps/](https://github.com/JordanMicahBennett/SOULIFY/tree/master/data/phps)" are updated with the appropriate connection details for your localhost connection settings, together with whatever you named your database above.

3. Adjust function "generateSoulifyActionResponse" in file  [soulify/data/downloads/soulify.chrome.extension/data/js/rightClick.js](https://github.com/JordanMicahBennett/SOULIFY/tree/master/data/downloads/soulify.chrome.extension/data/js/rightClick.js), by replacing "soulify.rf.gd" portion of url with whatever your localhost setting is, which is typically "https://localhost/<whatever you stored soulify as in xamp/htdocs>".

4. Additionally, adjust variable "$serverHomeUrl" in file [soulify/data/phps/_module.new.entry.php](https://github.com/JordanMicahBennett/SOULIFY/blob/master/data/phps/_php.new.entry.php) by replacing serverHomeUrl with whatever your localhost server settings are. (If this is not done properly, remember that your test users won't be able to upload profile pictures to your local copy of the soulify social network!)


USAGE, SOULIFYING A VIDEO 
============================================

1. Sign into soulify on http://soulify.rf.gd.

2. Find a video, and right click on any empty space on page where video is. You should see soulify option popup, with "soulify it!" command:

![Alt text]( https://github.com/JordanMicahBennett/SOULIFY/blob/master/data/miscellaneous/screens/soulification_0.png "default page")

3. Simply supply details to the popup, like a title etc:

![Alt text]( https://github.com/JordanMicahBennett/SOULIFY/blob/master/data/miscellaneous/screens/soulification_1.png "default page")

4. You should now see "soulified!" message on popup. 

![Alt text]( https://github.com/JordanMicahBennett/SOULIFY/blob/master/data/miscellaneous/screens/soulification_2.png "default page")

5. Closing popup, and reloading profile page, you will see the new image item in the appropriate "playlist section" you "soulified" your music video to.

![Alt text]( https://github.com/JordanMicahBennett/SOULIFY/blob/master/data/miscellaneous/screens/soulification_3.png "default page")


SUMMARY: WHAT CAN ONE DO WITH SOULIFY?
=============================


  a. Using google chrome, after signing up, one may 'soulify' videos via most sites, to one's profile of music categories of archives on http://soulify.rf.gd.

  b. Soulify allows one to attach flavours by essentially colouring one's music categories, by mood colours.


AUTHOR PORTFOLIO
============================================
http://folioverse.appspot.com/
