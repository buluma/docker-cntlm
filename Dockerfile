FROM alpine:3

LABEL maintainer="Michael Buluma"
LABEL build_date="2023-11-26"
LABEL version="1.4"

RUN apk add --no-cache curl cntlm

EXPOSE 3128

ADD start.sh /start.sh
RUN chmod +x /start.sh

ENTRYPOINT ["/start.sh"]
