ARG CORA_DOCKER_VERSION
FROM cora-docker-apache:${CORA_DOCKER_VERSION}

# Add reverse proxy conf
COPY apache/systemone-proxy-vhosts.conf /usr/local/apache2/conf/extra/systemone-proxy-vhosts.conf
RUN echo "Include conf/extra/systemone-proxy-vhosts.conf" \
    >> /usr/local/apache2/conf/httpd.conf

# Expose HTTP port
EXPOSE 80

# Run Apache in the foreground
CMD ["httpd-foreground"]