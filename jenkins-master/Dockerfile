FROM jenkins:1.651.1-alpine

COPY ["plugins.txt", "/usr/share/jenkins/"]
RUN /usr/local/bin/plugins.sh /usr/share/jenkins/plugins.txt

COPY ["ref", "/usr/share/jenkins/ref"]

COPY ["entrypoint.sh", "/opt/entrypoint.sh"]
ENTRYPOINT ["/opt/entrypoint.sh"]

CMD ["/bin/tini", "--", "/usr/local/bin/jenkins.sh"]
