all:
	./generate-compose.sh node-exporter cadvisor blackbox github-status

blackbox:
	./generate-compose.sh blackbox

cadvisor:
	./generate-compose.sh cadvisor

github-status:
	./generate-compose.sh github-status

node:
	./generate-compose.sh node-exporter
