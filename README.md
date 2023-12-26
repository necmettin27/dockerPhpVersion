# dockerPhpVersion
Aynı anda aynı projenin farklı php versionlarında çalıştırmak için dosyaları direk projenizin içine kopyalamanız yeterlidir.<br>
Daha sonra docker-compose up -d diyerek projeniz ayağa kalkacaktır.<br>
.docker/ngninx/default.conf dosyasında bulunan projeleriniz domainlerini belirleyebilirsiniz.<br>

host dosyanıza ekleyeceğiniz<br>
örnek isimlendirme<br>
127.0.0.1 website.test<br>
127.0.0.1 website2.test<br>

<br>
-----------------
<br>
docker-compose exec nginx bash <br>
chown -R nginx:nginx /var/www <br>
chmod -R 755 /var/www <br>
systemctl restart nginx<br>
