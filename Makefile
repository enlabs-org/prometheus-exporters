all:
	./generate-compose.sh node-exporter cadvisor blackbox

docker:
	./generate-compose.sh node-exporter cadvisor

node:
	./generate-compose.sh node-exporter
