FROM alpine:3.15

RUN apk --no-cache add \
	bash \
	curl \
	jq \
	libxml2-utils \
	ffmpeg
ADD https://raw.githubusercontent.com/uru2/radish/master/radi.sh /bin/radi.sh
RUN chmod +x /bin/radi.sh

ENTRYPOINT ["/bin/radi.sh"]
