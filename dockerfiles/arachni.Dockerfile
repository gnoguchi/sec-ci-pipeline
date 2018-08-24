FROM ubuntu

MAINTAINER gnoguchi

ENV ARACHNI_VERSION 1.5.1
ENV ARACHNI_WEB_UI_VERSION 0.5.12
ENV PATH /opt/arachni/bin:$PATH

RUN apt update && apt install -y curl
RUN curl -#L https://github.com/Arachni/arachni/releases/download/v${ARACHNI_VERSION}/arachni-${ARACHNI_VERSION}-${ARACHNI_WEB_UI_VERSION}-linux-x86_64.tar.gz | tar zx && mv /arachni-$ARACHNI_VERSION-$ARACHNI_WEB_UI_VERSION /opt/arachni

EXPOSE 9292

CMD ["arachni_web","--host","0.0.0.0"]
