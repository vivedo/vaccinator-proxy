PROJECT_NAME=vaccinator_proxy

COMPOSE=docker-compose --project-name=$(PROJECT_NAME) -f docker/docker-compose.yml

###############
# PRODCOMPOSE #
###############

.PHONY: up
produp: 
	$(COMPOSE) up

.PHONY: upd
produpd: 
	$(COMPOSE) up -d

.PHONY: down
proddown: 
	$(COMPOSE) down

.PHONY: build
prodbuild: 
	$(COMPOSE) build

#############
#   EXECs   #
#############

#.PHONY: exampleexec
#exampleexec:
#	docker exec -it <container-name> <cmd>
