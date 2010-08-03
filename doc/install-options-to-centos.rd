# -*- rd -*-

= Install to CentOS (optional) --- How to install milter manager related softwares to CentOS

== About this document

This document describes how to install milter manager
related softwares to CentOS. See ((<Install to
CentOS|install-to-centos.rd>)) for milter manager install
information and ((<Install|install.rd>)) for general install
information.

== [milter-manager-log-analyzer] Install milter-manager-log-analyzer

milter-manager-log-analyzer is already installed because it
is included in milter manager's RPM package. We will
configure Web server to browse graphs generated by
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

  % sudo yum install -y httpd
  % sudo /sbin/chkconfig httpd on

==== Configure milter-manager-log-analyzer

milter-manager-log-analyzer generates graphs to
milter-manager user's home
directory. (/var/lib/milter-manager/) We configure Web
server to publish them at
http://localhost/milter-manager-log/.

We put /etc/httpd/conf.d/milter-manager-log.conf with the
following content:
  Alias /milter-manager-log/ /var/lib/milter-manager/public_html/log/

We need to reload configuration after editing:

  % sudo /sbin/service httpd reload

Now, we can see graphs at http://localhost/milter-manager-log/.

=== [munin] Way 2: View via Munin at other host

Next way is using Munin at other host.

==== Install packages

We install milter-manager-munin-plugins package that
provides statistics data collected by
milter-manager-log-analyzer to Munin:

  % sudo yum install -y milter-manager-munin-plugins

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

  % sudo /sbin/service munin-node restart

==== Configure Munin server

Works in this section at system monitor server. We assume
that system monitor server works on CentOS.

First, we install munin and Apache:

  monitoring-server% sudo yum install -y munin httpd

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

  % sudo yum install -y ruby-rdoc gcc-c++ httpd-devel sqlite-devel

=== Install RubyGems

  % cd ~/src/
  % wget http://rubyforge.org/frs/download.php/60718/rubygems-1.3.5.tgz
  % tar xvzf rubygems-1.3.5.tgz
  % cd rubygems-1.3.5
  % sudo ruby setup.rb

=== Instal gems

  % sudo gem install sqlite3-ruby
  % sudo gem install rack -v '1.1.0'
  % sudo gem install rails -v '2.3.8'
  % sudo gem install passenger -v '2.2.15'

=== Install Passenger

To build Passenger we run the following command:

  % (echo 1; echo) | sudo passenger-install-apache2-module

It's difficult that Passenger runs on SELinux. (It's not
good but) We disable SELinux just for Apache because HTTP
accesses from other hosts are blocked by default. We will
update this section when we know better other solution.

  % sudo /usr/sbin/setsebool httpd_disable_trans true

We create milter-manager.conf under /etc/httpd/conf.d/.

/etc/httpd/conf.d/milter-manager.conf:
  LoadModule passenger_module /usr/lib/ruby/gems/1.8/gems/passenger-2.2.15/ext/apache2/mod_passenger.so
  PassengerRoot /usr/lib/ruby/gems/1.8/gems/passenger-2.2.15
  PassengerRuby /usr/bin/ruby

  RailsBaseURI /milter-manager

We need to reload configuration.

  % sudo /sbin/service httpd reload

=== Configure milter manager admin

milter manager admin is installed to
/usr/share/milter-manager/admin/. We run it as
milter-manager user authority, and access it at
http://localhost/milter-manager/.

  % tar cf - -C /usr/share/milter-manager admin | sudo -u milter-manager -H tar xf - -C ~milter-manager
  % sudo ln -s ~milter-manager/admin/public /var/www/html/milter-manager
  % cd ~milter-manager/admin
  % sudo -u milter-manager -H rake gems:install
  % sudo -u milter-manager -H rake RAILS_ENV=production db:migrate

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
