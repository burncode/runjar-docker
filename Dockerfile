FROM nathonfowlie/centos-jre

USER root
RUN yum -y update \
	&& yum clean all \
	&& rm -rf /var/cache/yum \
	&& mkdir -p /data

ENTRYPOINT ["java", "-jar", "/data/runjar.jar"]
