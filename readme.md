# SystemOne docker apache

This project creates an specific image of *Apache + Shibboleth* for systemone. It uses the common Cora Apache image (`cora-docker-apache`) as base image and it adds specific configuration for systemone.

To main files are included here:
- **httpd.conf** : Specific apache configuration for the project
- **shibboleth2.xml** Specific shibboleth configuration for the project. All the members shibboleths endpoints are included here.

**OBS:** EntityId must match with the certificates inject when creating the pods. See `cora-deployement` and `cora-jenkins`

## Generic configuration
All generic configuration for apache and shibboleth can be found in (`cora-docker-apache`)

## Certificates
Certificates are **not included in the Docker image**.  
They are injected dynamically during pod creation via **Helm**. See cora-deployment

