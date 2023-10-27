# Kullanılacak PHP sürümünü belirle
FROM php:8.1-fpm

ENV USER=www
ENV GROUP=www

# Sistem bağımlılıklarını yükle
RUN apt-get update && apt-get install -y \
    git \
    curl \
    libpng-dev \
    libonig-dev \
    libxml2-dev \
    zip \
    unzip

# Önbelleği temizle
RUN apt-get clean && rm -rf /var/lib/apt/lists/*

# PHP uzantılarını yükle
RUN docker-php-ext-install pdo_mysql mbstring exif pcntl bcmath gd

# SOAP eklentisini yükle
RUN apt-get update && apt-get install -y libxml2-dev && docker-php-ext-install soap

# Çalışma dizetini ayarla
WORKDIR /var/www/

# Kullanıcı ve grup oluştur
RUN groupadd -g 1000 ${GROUP} && useradd -u 1000 -ms /bin/bash -g ${GROUP} ${USER}

# İzinleri ver
RUN chown -R ${USER} /var/www

# Seçili kullanıcıyı ayarla
USER ${USER}

# İzole kullanıcı için gerekli diğer işlemleri burada gerçekleştirin

EXPOSE 9000

CMD ["php-fpm"]
