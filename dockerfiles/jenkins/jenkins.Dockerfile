FROM jenkins

USER root

COPY rancher /usr/bin

RUN chmod +x /usr/bin/rancher

RUN chown -R jenkins:jenkins "$JENKINS_HOME"

CMD ["/usr/local/bin/jenkins.sh"]