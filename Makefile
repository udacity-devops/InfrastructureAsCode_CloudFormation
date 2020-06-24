all: check generate_parameters create_servers

generate_parameters:
	@echo "Creating server/servers-parameters.json from template"
	@sed "s/<env-name-placeholder>/${name}-Network/g" server/servers-parameters-template.json > server/servers-parameters.json
	@echo "Creating network/network-parameters.json from template"
	@sed "s/<env-name-placeholder>/${name}-Servers/g" network/network-parameters-template.json > network/network-parameters.json

create_servers: create_network
	@echo "Creating Servers.."
	./create-or-update ${name}-Servers server/servers.yml server/servers-parameters.json

create_network:
	@echo "Creating Network.."
	./create-or-update ${name}-Network network/network.yml network/network-parameters.json

delete:
	@echo "Deleting Servers.."
	./delete ${name}-Servers
	@echo "Deleting Network.."
	./delete ${name}-Network

.PHONY: check
check:
ifndef name
	echo "please pass a name parameter when using the make command, like this: \"make name=udacity\""
	exit 1
endif
