# dockerPhpVersion
Aynı anda aynı projenin farklı php versionlarında çalıştırmak için dosyaları direk projenizin içine kopyalamanız yeterlidir.
Daha sonra docker-compose up -d diyerek projeniz ayağa kalkacaktır.
.docker/ngninx/default.conf dosyasında bulunan projeleriniz domainlerini belirleyebilirsiniz.

host dosyanıza ekleyeceğiniz
örnek isimlendirme
127.0.0.1 myportal.test
127.0.0.1 myportal2.test


