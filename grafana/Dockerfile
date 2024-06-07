FROM grafana/grafana:10.4.3

ENV GF_SECURITY_ADMIN_PASSWORD = admin
ENV GF_SECURITY_ADMIN_USER = admin

COPY datasources /etc/grafana/provisioning/datasources/
COPY dashboards /usr/share/grafana/dashboards
COPY dashboards.yml /etc/grafana/provisioning/dashboards/dashboards.yml
