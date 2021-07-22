FROM alpine:3.14

WORKDIR "/app"

RUN apk update

RUN apk add bash

RUN apk add git

RUN apk add maven

COPY /tomcat ./tomcat

COPY initial-d.sh ./

RUN chmod +x ./initial-d.sh

CMD ["./initial-d.sh"]
