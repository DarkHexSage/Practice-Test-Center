FROM ubuntu:latest
# Install Supervisor
RUN apt-get update && apt-get install -y supervisor

# Install necessary packages
RUN apt-get update && \
    apt-get install -y apache2 wget p7zip-full bzip2 xz-utils tar gzip zip && \
    apt-get clean && \
    rm -rf /var/lib/apt/lists/*

# Download the webpage and configure Apache
RUN wget -O /var/www/html/easy-test.php https://raw.githubusercontent.com/DarkHexSage/Practice-Test-Center/refs/heads/main/easy-test.php && \
    mkdir -p /etc/supervisor/conf.d/ && \
    wget -O /var/www/html/verify-challenge-easy1.php https://raw.githubusercontent.com/DarkHexSage/Practice-Test-Center/refs/heads/main/verify-challenge-easy1.php && \
    wget -O /var/www/html/verify-challenge-easy2.php https://raw.githubusercontent.com/DarkHexSage/Practice-Test-Center/refs/heads/main/verify-challenge-easy2.php && \
    wget -O /etc/supervisor/conf.d/supervisord.conf https://raw.githubusercontent.com/DarkHexSage/Practice-Test-Center/refs/heads/main/supervisord-easy.conf && \
    wget -O /tmp/scriptenableasylix.sh https://raw.githubusercontent.com/DarkHexSage/Practice-Test-Center/refs/heads/main/scriptenableasylix.sh && \
    chmod +x /tmp/scriptenableasylix.sh


# Create a user named 'candidate' and set password to 'candidate123'
RUN useradd -ms /bin/bash candidate && echo "candidate:candidate123" | chpasswd

# Download and install shellinabox .deb
RUN wget -O shellinabox.deb https://github.com/DarkHexSage/Practice-Test-Center/raw/refs/heads/main/shellinaboxvfin.deb && \
    dpkg -i shellinabox.deb && \
    rm shellinabox.deb && \
    wget -O /etc/shellinabox/options-enabled/gob.css https://raw.githubusercontent.com/DarkHexSage/Practice-Test-Center/refs/heads/main/gob.css
# Expose port 80 for Apache and port 4200 for shellinabox
EXPOSE 80 4200

# Start shellinabox in the background
#CMD shellinaboxd -d -c /var/lib/shellinabox -p 4601 -u shellinabox -g shellinabox --no-beep --disable-ssl --user-css "Matrix:+/etc/shellinabox/options-enabled/gob.css" &
#CMD apache2 -D FOREGROUND

# Execute the script
#RUN ./scriptenableasylix.sh
RUN sed -i 's/\r$//' /tmp/scriptenableasylix.sh

# Start Apache
#ENTRYPOINT ["apachectl", "-D", "FOREGROUND"]
#AENTRYPOINT ["/usr/sbin/apache2", "-D", "FOREGROUND"]
# Start supervisord to manage services
CMD ["supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
