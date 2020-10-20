FROM pazdedav/azure:biceptospecs
COPY ./src/ ./tmp/
WORKDIR /tmp
ENTRYPOINT ["bash","-File","/tmp/deploy.sh"]