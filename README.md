vagrant_chef_oraxe
==================

Oracle XE Virtual Machine creation using vagrant and chef-solo

To create the VM Box using veewee:
----------------------------------

Create a Oracle 6.4 VM using veewee

https://github.com/jedi4ever/veewee

	$ veewee vbox define 'OracleLinux-6.4-x86_64-DVD' 'OracleLinux-6.4-x86_64-DVD'
	$ veewee vbox build 'OracleLinux-6.4-x86_64-DVD'
	$ veewee vbox halt 'OracleLinux-6.4-x86_64-DVD'
	$ veewee vbox export 'OracleLinux-6.4-x86_64-DVD'

import into vagrant

	$ vagrant box add myoracle64 OracleLinux-6.4-x86_64-DVD.box

Now the Vagrantfile using the 'myoracle64' box definition should pick up the box

The chef 'oraxe' recipe will install rpm packages for oracle-xe and sqldeveloper 
which must be downloaded from the Oracle website (TODO: urls) and put into oraxe_install
directory... 

TODO:

- install Java (needed for SQL Developer)
- install minimal X and/or Xvnc for local usage of sqldeveloper?
	- alternative: use X Forwarding via ssh? 
  gnome, gdm, fonts (yum groupinstall 'Fonts') testen welche...
- squirrel?
- ...
