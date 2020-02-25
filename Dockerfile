FROM nicolargo/glances

MAINTAINER billchurch

RUN apt-get update && apt-get -y install hddtemp

RUN pip install py3sensors

COPY glances.conf /glances/conf/glances.conf

# example = -d --listen localhost --port 7634 /dev/s*
CMD hddtemp $HDDTEMP_ARGS && python -m glances -C /glances/conf/glances.conf $GLANCES_OPT