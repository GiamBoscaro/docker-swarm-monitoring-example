FROM prom/alertmanager:v0.27.0

COPY conf /etc/alertmanager/

ENTRYPOINT  [ "/etc/alertmanager/docker-entrypoint.sh" ]

CMD        [ "--config.file=/etc/alertmanager/alertmanager.yml", \
             "--storage.path=/alertmanager" ]
