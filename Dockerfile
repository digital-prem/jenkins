FROM jenkins/jenkins:lts
USER root
RUN apt-get update \
      && apt-get install -y sudo \
      && rm -rf /var/lib/apt/lists/*
RUN echo "jenkins ALL=(ALL) NOPASSWD: ALL" >> /etc/sudoers
RUN groupadd docker \
      && usermod -aG docker jenkins

 
USER jenkins
#COPY plugins.txt /usr/share/jenkins/plugins.txt
#RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt
#RUN echo "alias docker='sudo docker '" >> /home/jenkins/.bashrc
