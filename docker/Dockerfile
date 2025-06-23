FROM httpd:2

COPY apache/apache.conf /usr/local/apache2/conf/extra/proxy-vhost.conf

RUN echo "Include conf/extra/proxy-vhost.conf\n" \
    >> /usr/local/apache2/conf/httpd.conf

# Expose HTTP port
EXPOSE 80

# Run Apache in the foreground
CMD ["httpd-foreground"]