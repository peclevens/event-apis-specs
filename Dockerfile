FROM swaggerapi/swagger-ui:v3.23.11
MAINTAINER Clivens Petit <clivens.petit@magicsoftbay.com>

# Environment variables
ENV SWAGGER_JSON "/app/bundle.yaml"

# Add volume for docs
VOLUME /app

# Copy docs files
COPY ./reference/event-api/bundle.yaml /app/

# Expose container port
EXPOSE 8080
