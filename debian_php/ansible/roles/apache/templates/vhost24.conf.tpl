# Default Apache virtualhost template

<VirtualHost *:80>
    ServerAdmin webmaster@localhost
    DocumentRoot {{ apache.docroot }}
    ServerName {{ apache.servername }}
    
    ErrorLog ${APACHE_LOG_DIR}/error.log
    CustomLog ${APACHE_LOG_DIR}/access.log combined
    
    <Directory {{ apache.docroot }}>
        AllowOverride All
        Options -Indexes +FollowSymLinks
        Require all granted
    </Directory>
</VirtualHost>
