# Easy way to running Prometheus Exporters in Docker

### Usage:
  1. Clone repository
  2. Go into prometheus-exporters
  3. Run `make docker`
  4. Run `docker compose up -d`
  5. Profit! Node exporter and cadvisor now ready to use...

###
If you need rewrite some part of services configuration. You can use `docker-compose.override.yml`
