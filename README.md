LAMP7Vagrant
============

This project is forked from the work by mattandersen on <http://github.com/mattandersen/vagrant-lamp>

Requirements
------------
* VirtualBox <http://www.virtualbox.com>
* Vagrant <http://www.vagrantup.com>
* Git <http://git-scm.com/>

Usage
-----

### Startup
	$ git clone https://github.com/gharding/vagrant-lamp.git 
	$ cd vagrant-lamp
	$ vagrant up

You will also want to add the following line to your hosts file:
	`192.168.62.57 YourHostName`
That is pretty simple.

### Connecting

#### Apache
The Apache server will be available by entering whatever you named your host in your hosts file into your browser (e.g. if you entered YourHostName as per the example, you'd type this into the URL bar of your browser to access your project.) or by going to <http://localhost:8888>. By default this will point to src/index.php which simply contains the phpinfo function, so you should see a page detailing all of the available modules and configurations of PHP 7 in the vagrant box.

#### Composer
Composer will install in the Vagrant box by default, allowing you to start using PHP package management immediately.

#### MySQL
Externally the MySQL server is available at port 8889, and when running on the VM it is available as a socket or at port 3306 as usual.
Username: root
Password: root

Technical Details
-----------------
* Ubuntu 14.04 64-bit
* Apache 2
* PHP 7.1.0
* MySQL 5.5

We are using the base Ubuntu 14.04 box from Vagrant. If you don't already have it downloaded
the Vagrantfile has been configured to do it for you. This only has to be done once
for each account on your host computer.

The web root is located in the project directory at `src/` and you can install your files there

Within the Vagrant environment, all files will be present in `/vagrant/src`

And like any other vagrant file you have SSH access with

	$ vagrant ssh
