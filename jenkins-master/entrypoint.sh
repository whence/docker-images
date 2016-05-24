#!/usr/bin/env bash

# Dynamically configure local IP if running on Amazon
echo "Configuring Jenkins Internal IP (only if running in Amazon, otherwise no effect)"
jenkins_url="$(curl -s http://169.254.169.254/latest/meta-data/local-ipv4 --connect-timeout 10)"
if [ $? -eq 0 ]; then
	config="<?xml version='1.0' encoding='UTF-8'?>
	<jenkins.model.JenkinsLocationConfiguration>
	  <adminAddress></adminAddress>
	  <jenkinsUrl>http://${jenkins_url}/</jenkinsUrl>
	</jenkins.model.JenkinsLocationConfiguration>
	"
	echo "$config" > /var/jenkins_home/jenkins.model.JenkinsLocationConfiguration.xml
fi

echo ">> exec docker CMD"
echo "$@"
exec "$@"
