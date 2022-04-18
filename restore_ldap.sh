#!/bin/sh
# Author : Abdul Arshad
# To Restore Ldap Backup on Scondary LDAP Server from Storage Server.

systemctl stop slapd.service
rm -rf /var/lib/openldap/*
slapadd -n 1 -F /etc/openldap/slapd.d/ -l data.ldif
chown ldap:ldap /var/lib/openldap/ -R
systemctl restart slapd.service
