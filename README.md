vagrant_chef_oraxe
==================

Oracle XE Virtual Machine creation using vagrant and chef-solo

To create the VM Box using veewee:

 565  veewee vbox define 'OracleLinux-6.4-x86_64-DVD' 'OracleLinux-6.3-x86_64-DVD' --workdir=/downloads/veewee/veewee
  580  veewee vbox build 'OracleLinux-6.4-x86_64-DVD'
  584  veewee vbox halt 'OracleLinux-6.4-x86_64-DVD'
  585  veewee vbox export 'OracleLinux-6.4-x86_64-DVD'

import into vagrant
 vagrant box add myoracle64 OracleLinux-6.4-x86_64-DVD.box
