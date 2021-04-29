PROJECT_NAME=vaccinator_proxy

COMPOSE=docker-compose --project-name=$(PROJECT_NAME) -f docker/docker-compose.yml

###############
# COMPOSE #
###############

.PHONY: up
up: 
	$(COMPOSE) up

.PHONY: upd
upd: 
	$(COMPOSE) up -d

.PHONY: down
down: 
	$(COMPOSE) down

.PHONY: buildup
buildup: 
	$(COMPOSE) up --build --force-recreate

#############
#   EXECs   #
#############

#.PHONY: exampleexec
#exampleexec:
#	docker exec -it <container-name> <cmd>
