RewriteEngine On
RewriteOptions inherit

<Directory /localsite>
  Options Indexes FollowSymLinks
  AllowOverride All
  Require all granted
</Directory>