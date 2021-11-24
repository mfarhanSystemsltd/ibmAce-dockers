FROM ibmcom/ace-mqclient:latest
ARG file_name
ARG workspace
ADD ${file_name} ${workspace}/Barfiles
EXPOSE 7600 7800 7843 9483
ENV LICENSE accept
