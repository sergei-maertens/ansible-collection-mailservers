Postfix
=======

Install and configure a Postfix-based mail server for outgoing and incoming e-mail.

This role allows configuring a collection of tools for reliable mail delivery using
Postfix, such as:

* TLS using Let's Encrypt
* Suitable for Docker containers that need to send mail
* Dovecot for virtual mailboxes/forwards (dynamic mailboxes)
* SPF checking of incoming e-mail
* Sender address rewriting (SRS)
* DKIM signing and validating
* Spamassassin spam filtering

This role and collection is written with the assumption that 'Postfixer' is used as
administrative tool/interface.

Requirements
------------

Debian based system with PostgreSQL and Dovecot configured correctly. Additionally,
a tool to manage the virtual mailboxes and forwards configuration, such as Postfixer.

Role variables
--------------

A number of variables are required to opt-in to additional tools. Typically these will
dynamically include the required role.

* `postfix_policyd_spf_enabled: false`
* `postfix_srsd_enabled: false`
* `postfix_opendkim_enabled: false` - look at the `opendkim` role variables to specify
  database connection parameters.
* `postfix_spamassassin_enabled: false`

For a full reference, see `defaults/main.yml`.

Dependencies
------------

None

License
-------

MIT
