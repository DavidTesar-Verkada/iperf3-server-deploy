# Container image that runs your code
FROM ubuntu:latest

# Install iperf3 and curl
RUN apt update && apt install -y iperf3 curl

# Copies your code file from your action repository to the filesystem path `/` of the container
COPY entrypoint.sh /entrypoint.sh

# Making entrypoint.sh an executable
RUN chmod +x /entrypoint.sh

RUN ls -l /entrypoint.sh

# Code file to execute when the docker container starts up (`entrypoint.sh`)
ENTRYPOINT ["/entrypoint.sh"]

# docker build -t speedserver .
# docker run -d -p 443:443 speedserver
# expose 443