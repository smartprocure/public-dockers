#!/bin/bash
sed -ie "s/{{BASE_HOST}}/${BASE_HOST}/g" /var/www/config.js
sed -ie "s/{{INFLUXDB_PORT}}/${INFLUXDB_PORT:-8086}/g" /var/www/config.js
sed -ie "s/{{INFLUXDB_DATABASE_STATS}}/${INFLUXDB_DATABASE_STATS:-stats}/g" /var/www/config.js
sed -ie "s/{{INFLUXDB_DATABASE_GRAFANA}}/${INFLUXDB_DATABASE_GRAFANA:-grafana}/g" /var/www/config.js
sed -ie "s/{{INFLUXDB_DATABASE_STATS_USERNAME}}/${INFLUXDB_DATABASE_STATS_USERNAME:-admin}/g" /var/www/config.js
sed -ie "s/{{INFLUXDB_DATABASE_STATS_PASSWORD}}/${INFLUXDB_DATABASE_STATS_PASSWORD:-admin}/g" /var/www/config.js
sed -ie "s/{{INFLUXDB_DATABASE_GRAFANA_USERNAME}}/${INFLUXDB_DATABASE_GRAFANA_USERNAME:-admin}/g" /var/www/config.js
sed -ie "s/{{INFLUXDB_DATABASE_GRAFANA_PASSWORD}}/${INFLUXDB_DATABASE_GRAFANA_PASSWORD:-admin}/g" /var/www/config.js
/usr/bin/supervisord
