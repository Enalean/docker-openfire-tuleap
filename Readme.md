How to run ?
===========

    $> docker run -ti --link tuleap_db_1:db -e PASSWORD=welcome0 openfire

What to change in Tuleap ?
==========================

Let say your openfire server run on openfire.dev.docker

/etc/httpd/conf.d/codendi_aliases.conf:

    RewriteEngine on
    RewriteRule /http-bind  http://openfire.dev.docker:7070/http-bind/ [P]
    RewriteRule /http-bind/ http://openfire.dev.docker:7070/http-bind/ [P]

in openfire database (ofProperty table)

xmpp.domain openfire.dev.docker
plugin.subscription.whiteList  imadmin-bot@openfire.dev.docker
jdbcProvider.connectionString

How to install with Tuleap ?
============================

* Create database and user access by hand (check what to do in setup.sh)
* initialize openfire db with openfire_mysql.sql here

On Tuleap, execute the jabber installer: plugins/IM/include/jabbex_api/installation/install_splitserver.php

