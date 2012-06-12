Description
===========

MySQL Parallel Dump

Multi threaded mysqldump is not an utopia any more. mysqlpdump can dump all your tables and databases in parallel so it can be much faster in systems with multiple cpu’s.

It stores each table in a different file by default. It can also generate the dump to stdout although this is not recommended because it can use all the memory in your system if your tables are big.

History
=======

I saw an interesting post on MySQL Performance Blog with some suggestions to improve mysqldump.

Here is my effort to implement some of that suggestions.

Requeriments
===========

* Python 2.4
* MySQL-python module

Usage
=====

Simplest usage (will save a file for each table):

	mysqlpdump.py -u root -p password

Save compressed files (gzip) to /tmp/dumps and pass "–skip-opt" to mysqldump:

	mysqlpdump.py -u root -p password -d /tmp/dumps/ -g -P "--skip-opt"

Output to stdout and use 20 threads:

	mysqlpdump.py -u root -p password -stdout -t 20

Be more verbose:

	mysqlpdump.py -u root -p password -v

Exclude "mysql" and "test" table from dumping:

	mysqlpdump.py -u root -p password -e mysql -e test

Only dump "mysql" table:

	mysqlpdump.py -u root -p password -i mysql

Links
=====

* [original project website] (http://www.fr3nd.net/projects/mysqlpdump/)
* [mysqlpdump at freshmeat] (http://freshmeat.net/projects/mysqlpdump/)
* [Original article in MySQL Performance blog] (http://www.mysqlperformanceblog.com/2007/05/22/wishes-for-mysqldump/)
* [mysql-paralel-dump (similar script from the autor of MySQL Toolkit)] (http://www.xaprb.com/blog/2007/09/30/introducing-mysql-parallel-dump/)

