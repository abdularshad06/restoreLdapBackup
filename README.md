# restoreLdapBackup
Restore Ldap Backup from Backup/Storage Server

# Copy data.ldif File from Backup/Storage Server to secondary ldap server.
scp -r /home/backup/ldap_backup/17-04-2022/config.ldif /home/backup/ldap_backup/17-04-2022/data.ldif ldap2.example.com:/root/restore/
