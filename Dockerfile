FROM ibmcom/ace-mqclient:latest
ARG file_name
#Copy the bar file into the containers specific folder
ADD Barfiles/${file_name}.bar /home/aceuser/initial-config/bars/
ADD Policy_Project /home/aceuser/ace-server/overrides/
ADD server.conf.yaml /home/aceuser/ace-server/
EXPOSE 7600 7800 7843 9483
ENV LICENSE accept
