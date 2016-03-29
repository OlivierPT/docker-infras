FROM fluent/fluentd:latest
MAINTAINER olivier.pillaudtirard@gmail.com

USER fluent
WORKDIR /home/fluent
ENV PATH /home/fluent/.gem/ruby/2.2.0/bin:$PATH

EXPOSE 24284 42185

CMD fluentd -c /fluentd/etc/$FLUENTD_CONF -p /fluentd/plugins $FLUENTD_OPT
