# Base Docker image to use
FROM node:12

# install gettext for envsubst
RUN apt-get update
RUN apt-get install -y gettext-base

# Copy all the content to /var/www
COPY . /var/www

# From now on we will run all the commands on this directory
WORKDIR /var/www/

# Install node modules and express
RUN cd node_app && npm install

# Command to execute on container intitialization, this will be PID 1
CMD ["bash", "start.sh"]
