# CMS
### Description
It consists of an- admin side and a visitor side. 
An admin can login and use this uncomplicated system to easily easily add, delete and edit subjects/pages in your web site on the fly.
A visitor/viewer can only view the contents posted by the admin.

### Requirements
* Xampp/Wamp

### Once you have cloned the repository to your local machine, follow directions below:
1. In phpMyAdmin, create a new database and name it 'cms' and import the mysql database in the repo.
2. To register yourself as an admin, open new_admin.php in a text editor.
3. Comment out the fifth line, ` <?php confirm_logged_in(); ?> `
4. Run your apache server and mysql, and visit new_admin.php on a browser and register yourself as an admin.
5. Undo the step 3

![admin](https://cloud.githubusercontent.com/assets/18026186/21965086/4c0ae5ae-db7e-11e6-87b3-d78026202877.PNG)
