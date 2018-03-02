FROM library/nginx:latest

ADD entry2.sh /entry2.sh
RUN chmod ugo+x /entry2.sh

ENTRYPOINT ["/entry2.sh"]
