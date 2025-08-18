ARG CORA_DOCKER_VERSION
FROM cora-docker-apache:${CORA_DOCKER_VERSION}

# Add reverse proxy conf
COPY files/apache/systemone-proxy-vhosts.conf /usr/local/apache2/conf/extra/systemone-proxy-vhosts.conf
RUN echo "Include conf/extra/systemone-proxy-vhosts.conf" \
    >> /usr/local/apache2/conf/httpd.conf

#Run supervisord using shibboleth2.xml (See cora-docker-apache for more information)
COPY files/shibboleth/* /etc/shibboleth/	
CMD ["/usr/bin/supervisord"]

# Run Apache in the foreground
CMD ["httpd-foreground"]