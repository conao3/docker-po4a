FROM alpine:3.8 AS build

MAINTAINER Naoya Yamashita (@conao3)

##############################
FROM alpine:3.8

ENTRYPOINT ["/usr/local/bin/po4a"]
CMD [""]
