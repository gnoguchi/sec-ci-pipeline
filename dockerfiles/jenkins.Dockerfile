FROM jenkins
USER root
RUN chown -R jenkins:jenkins "$JENKINS_HOME"
CMD ["/usr/local/bin/jenkins.sh"]