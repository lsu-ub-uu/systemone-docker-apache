ARG CORA_DOCKER_VERSION=toBeSet
FROM cora-docker-apache:${CORA_DOCKER_VERSION}

ARG SHIBBOLETH_ENTITY_ID_ARG=someEntityId

# Add reverse proxy conf
COPY files/apache/systemone-proxy-vhosts.conf /usr/local/apache2/conf/extra/systemone-proxy-vhosts.conf
RUN echo "Include conf/extra/systemone-proxy-vhosts.conf" \
    >> /usr/local/apache2/conf/httpd.conf

#Run supervisord using shibboleth2.xml (See cora-docker-apache for more information)
COPY files/shibboleth/* /etc/shibboleth/	

# Replace placeholder with the build arg
RUN sed -i "s|{SHIBBOLETH_ENTITY_ID}|${SHIBBOLETH_ENTITY_ID_ARG}|g" /etc/shibboleth/whatEverItWillBeDeleted.xml

# Run Apache in the foreground
CMD ["supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]