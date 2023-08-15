all:
	./generate-compose.sh node-exporter cadvisor

docker:
	./generate-compose.sh node-exporter cadvisor

node:
	./generate-compose.sh node-exporter
