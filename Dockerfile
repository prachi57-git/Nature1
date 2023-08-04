# Pull the minimal Ubuntu image
FROM ubuntu:latest

#File maintainer
MAINTAINER "prachisonsare57536@gmail.com"

# update lib
RUN apt-get update && apt-get install -y sudo


#user creation
RUN useradd -ms /bin/bash Nature1
RUN echo 'Nature1:password' | chpasswd

RUN adduser Nature1 sudo
USER Nature1
WORKDIR  /home/Nature1

#create new directory
RUN mkdir my-directory

ADD target/Nature1.war /home/Nature1/my-directory


CMD ["/bin/bash"]

