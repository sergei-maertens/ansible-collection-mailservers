OpenDKIM
========

Install and configure OpenDKIM for DomainKeys Identified Mail, backed by PostgreSQL
and used via Postfix.

OpenDKIM interfaces in this configuration with an SQL database (PostgreSQL) to check
if a message should be signed and which key to use to sign it.

The default configuration assumes that Postfixer is used to manage the actual keys.

**Note** that you also need to configure the public TXT DNS records for the keys, which
is out of scope of this role.

Requirements
------------

Debian (11+) or derivative, with a PostgreSQL database containing the signing keys.

The database and table must exist before OpenDKIM can be configured and restarted. The
role tests for this using a retry loop. It's recommended to use postfixer and the
automatic migrations or provision the database and table in a different way BEFORE
this role is invoked.

A database user with read permissions on the key/singning table(s) is required.

Role variables
--------------

See `defaults/main.yml`.

Dependencies
------------

Depends on the `community.postgresql` collection for database state introspection.

License
-------

MIT
