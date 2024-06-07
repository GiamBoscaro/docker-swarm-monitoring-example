FROM prom/prometheus:v2.45.5

COPY conf /etc/prometheus/
COPY rules/*.rules.yml /etc/prometheus/

ENTRYPOINT [ "/etc/prometheus/docker-entrypoint.sh" ]

CMD        [ "--config.file=/etc/prometheus/prometheus.yml", \
             "--storage.tsdb.path=/prometheus" ]
