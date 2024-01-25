# Use the official image as a parent image
FROM mysql:latest

# Set the working directory in the container
WORKDIR /docker-entrypoint-initdb.d

# Copy the initialization scripts
COPY ../sql-scripts/ /docker-entrypoint-initdb.d/

# Change the permissions of the scripts
RUN chmod -R 755 /docker-entrypoint-initdb.d/

# Expose port 3306
EXPOSE 3306