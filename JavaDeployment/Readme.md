# GOAL :Deploy any java based application into tomcatserver
## HOW?
# 1) Install suitable version of java
# 2) set java env variable
# 3) Install tomcat with specific version
# 4) copy the java application (.war) into <tomcat directory>/webapps/<app.war>

## Where and which operating system needed to be supported
# Ubuntu 16 and Centos 7

# Roles


# sudo apt-get update
# sudo apt-get install tomcat7
# curl wget http://ftp-nyc.osuosl.org/pub/jenkins/war/2.135/jenkins.war -o /var/lib/tomcat7/webapps/jenkins.war
# sudo service tomcat7 restart
#  tasks:
     apt:
       name: tomcat7
       update_cache: yes
       state: present

     get_url:
       url: http://ftp-nyc.osuosl.org/pub/jenkins/war/2.135/jenkins.war
       dest: /var/lib/tomcat7/webapps/jenkins.war
   handlers:
   - name: restart tomcat
     service:
       name: tomcat7
       state: restarted
         