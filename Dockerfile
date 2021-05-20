FROM ubuntu:20.04 as build

# Install Hugo
RUN apt update
RUN apt install hugo -y 

# Create Directory for mounting to
RUN mkdir /Website

# Copy Draft Server Script to Container
COPY draft-server.sh /

#ENTRYPOINT [ "sh", "draft-server.sh" ]