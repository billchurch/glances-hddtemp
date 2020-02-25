FROM nicolargo/glances

MAINTAINER billchurch

RUN apt-get update && apt-get -y install hddtemp

COPY glances.conf /glances/conf/glances.conf

CMD hddtemp $HDDTEMP_ARGS && python -m glances -C /glances/conf/glances.conf $GLANCES_OPT