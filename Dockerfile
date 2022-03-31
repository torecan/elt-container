FROM alpine:3.14

RUN apk update && apk add \
                openssh \
                supervisor \
                dcron \
                py3-pip \
                py3-pandas

RUN pip install  panda



COPY ./supervisord.conf /etc/supervisor/conf.d/supervisord.conf

CMD ["/usr/bin/supervisord", "-c", "/etc/supervisor/conf.d/supervisord.conf"]
