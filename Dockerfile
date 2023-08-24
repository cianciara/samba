FROM alpine:latest

COPY create-users.sh /create-users.sh

RUN apk --update --no-cache add samba bash shadow && chmod +x /create-users.sh && /create-users.sh