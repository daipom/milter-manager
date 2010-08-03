# -*- rd -*-

= Install to Debian (optional) --- How to install milter manager related softwares to Debian GNU/Linux

== About this document

This document describes how to install milter manager
related softwares to Debian GNU/Linux. See ((<Install to Debian
|install-to-debian.rd>)) for milter manager install
information and ((<Install|install.rd>)) for general install
information.

== [milter-manager-log-analyzer] Install milter-manager-log-analyzer

milter-manager-log-analyzer is already installed because it
is included in milter manager's package. We will configure
Web server to browse graphs generated by
milter-manager-log-analyzer.

There are two ways to view generated graphs; (1) view them
via a Web server at the same host and (2) view them via
((<Munin|URL:http://munin-monitoring.org/>)) (and a Web
server) at other host. If we already have Munin or
exclusive system monitoring server, Munin is a better
way. Otherwise, a Web server at the same host is a better
way. ((-If we want to run Munin at the same host, we need
a Web server.-))

First, a way that a Web server in the same host will be
explained, then a way that using Munin will be explained.

=== Way 1: View via a Web server at the same host

==== Install packages

We use Apache as Web server.

  % sudo aptitude -V -D -y install apache2

==== Configure milter-manager-log-analyzer

milter-manager-log-analyzer generates graphs into
milter-manager user's home
directory. (/var/lib/milter-manager/) We configure Web
server to publish them at
http://localhost/milter-manager-log/.

  % sudo -u milter-manager mkdir -p ~milter-manager/public_html/log

We put /etc/apache2/conf.d/milter-manager-log with the
following content:
  Alias /milter-manager-log/ /var/lib/milter-manager/public_html/log/

We need to reload configuration after editing:

  % sudo /etc/init.d/apache2 force-reload

Now, we can see graphs at http://localhost/milter-manager-log/.

=== [munin] Way 2: View via Munin at other host

Next way is using Munin at other host.

==== Install packages

We install milter-manager-munin-plugins package that
provides statistics data collected by
milter-manager-log-analyzer to Munin:

  % sudo aptitude -V -D -y install milter-manager-munin-plugins

((*NOTE: We need to use databases created by
milter-manager-log-analyzer bundled with milter manager
1.5.0 or later to provide statistics data to Munin. If we
have databases that are created by older
milter-manager-log-analyzer, we need to remove
~milter-manager/public_html/log/. If we remove the
directory, milter-manager-log-analyzer re-creates statistics
databases 5 minutes later.*))

==== Configure munin-node

Munin-node should accept accesses from Munin server. If
Munin server is 192.168.1.254, we need to append the
following lines to /etc/munin/munin-node.conf:

/etc/munin/munin-node.conf:
  allow ^192\.168\.1\.254$

We need to restart munin-node to apply our configuration:

  % sudo /usr/sbin/service munin-node restart

==== Configure Munin server

Works in this section at system monitor server. We assume
that system monitor server works on Debian GNU/Linux.

First, we install munin and Apache:

  monitoring-server% sudo aptitude -V -D -y install munin apache2

We add our mail server that works munin-node to munin's
monitor target. We assume that mail server has the following
configuration:

: Host name
    mail.example.com
: IP address
    192.168.1.2

We need to add the following lines to /etc/munin/munin.conf
to add the mail server:

/etc/munin/munin.conf:
  [mail.example.com]
      address 192.168.1.2
      use_node_name yes

We will be able to view graphs at
http://monitoring-server/munin/ 5 minutes later.

== [milter-manager-admin] Install milter manager admin

=== Install packages

To install the following packages, related packages are also
installed:

  % sudo aptitude -V -D -y install build-essential rdoc libopenssl-ruby apache2-threaded-dev libsqlite3-ruby milter-manager-admin

=== Install RubyGems

We use Debian Backports because RubyGems in lenny. We put
the following content to
/etc/apt/sources.list.d/backports.list:

/etc/apt/sources.list.d/backports.list:
  deb http://www.jp.backports.org lenny-backports main contrib non-free
  deb-src http://www.jp.backports.org lenny-backports main contrib non-free

We register the key of the backports repository:

  % sudo aptitude update
  % sudo aptitude -V -D install debian-backports-keyring

debian-backports-keyring is an untrusted package at this
because we doesn't have the key of the backports
repository. We need to confirm that we really install the
package:

  WARNING: untrusted versions of the following packages will be installed!

  Untrusted packages could compromise your system's security.
  You should only proceed with the installation if you are certain that
  this is what you want to do.

    debian-backports-keyring

  Do you want to ignore this warning and proceed anyway?
  To continue, enter "Yes"; to abort, enter "No":

If we can trust the package, we can install it by typing
"Yes".

We can install RubyGems by aptitude after we trust the
package:

  % sudo aptitude -V -D -y install -t lenny-backports rubygems

=== Instal gems

  % sudo gem install rack -v '1.1.0'
  % sudo gem install rails -v '2.3.8'
  % sudo gem install passenger -v '2.2.15'

=== Install Passenger

To build Passenger we run the following command:

  % (echo 1; echo) | sudo /var/lib/gems/1.8/bin/passenger-install-apache2-module

We create passenger.load and passenger.conf under
/etc/apache2/mods-available/.

/etc/apache2/mods-available/passenger.load:
  LoadModule passenger_module /var/lib/gems/1.8/gems/passenger-2.2.15/ext/apache2/mod_passenger.so

/etc/apache2/mods-available/passenger.conf:
  PassengerRoot /var/lib/gems/1.8/gems/passenger-2.2.15
  PassengerRuby /usr/bin/ruby1.8

  RailsBaseURI /milter-manager

We enables the configuration and reload it.

  % sudo /usr/sbin/a2enmod passenger
  % sudo /etc/init.d/apache2 force-reload

milter manager admin has password authentication but it's
better that milter manager admin accepts connections only
from trusted hosts. For example, here is an example
configuration that accepts connections only from
localhost. We can use the configuration by appending it to
/etc/apache2/mods-available/passenger.conf.

  <Location /milter-manager>
    Allow from 127.0.0.1
    Deny from ALL
  </Location>

If we append the configuration, we should not forget to
reload configuration:

  % sudo /etc/init.d/apache2 force-reload

=== Configure milter manager admin

milter manager admin is installed to
/usr/share/milter-manager/admin/. We run it as
milter-manager user authority, and access it at
http://localhost/milter-manager/.

  % tar cf - -C /usr/share/milter-manager admin | sudo -u milter-manager -H tar xf - -C ~milter-manager
  % sudo ln -s ~milter-manager/admin/public /var/www/apache22/data/milter-manager
  % cd ~milter-manager/admin
  % sudo -u milter-manager -H /var/lib/gems/1.8/bin/rake gems:install
  % sudo -u milter-manager -H /var/lib/gems/1.8/bin/rake RAILS_ENV=production db:migrate

Then we create a file to
~milter-manager/admin/config/initializers/relative_url_root.rb
with the following content:

~milter-manager/admin/config/initializers/relative_url_root.rb
  ActionController::Base.relative_url_root = "/milter-manager"

Now, we can access to http://localhost/milter-manager/. The
first work is registering a user. We will move to
milter-manager connection configuration page after register
a user. We can confirm where milter-manager accepts control
connection:

  % sudo -u milter-manager -H /usr/sbin/milter-manager --show-config | grep controller.connection_spec
  controller.connection_spec = "unix:/var/run/milter-manager/milter-manager-controller.sock"

We register confirmed value by browser. In the above case,
we select "unix" from "Type" at first. "Path" will be
appeared. We specify
"/var/run/milter-manager/milter-manager-controller.sock" to "Path".

We can confirm registered child milters and their
configuration by browser.

== Conclusion

We can confirm milter's effect visually by
milter-manager-log-analyzer. If we use Postfix as MTA, we
can compare with
((<Mailgraph|URL:http://mailgraph.schweikert.ch/>))'s graphs
to confirm milter's effect. We can use graphs generated by
milter-manager-log-analyzer effectively when we are trying
out a milter.

We can reduce administration cost by using milter manager
admin. Because we can change configurations without editing
configuration file.

It's convenient that we can enable and/or disable milters by
browser when we try out milters. We can use graphs generated
by milter-manager-log-analyzer to find what is the best milter
combination for our mail system.
