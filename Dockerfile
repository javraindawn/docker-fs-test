FROM alpine:3.12.0

RUN apk add --no-cache bash

WORKDIR /app

CMD ["time", "./randomFiles.sh"]
