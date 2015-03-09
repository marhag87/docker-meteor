# Meteor server
#
# VERSION 0.0.1

FROM fedora:rawhide
MAINTAINER Martin Hagstrom <martin@mrhg.se>

# Update
RUN yum update -y
# Install deps
RUN yum install -y make wget unzip vim curl git

# Install meteor
RUN curl https://install.meteor.com/ | sh

# Server runs on port 8080
EXPOSE 3000/tcp

CMD /bin/bash
