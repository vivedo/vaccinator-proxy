PROJECT_NAME=vaccinator_proxy

COMPOSE=docker-compose --project-name=$(PROJECT_NAME) -f docker/docker-compose.yml
DEVCOMPOSE=$(COMPOSE) -f docker/docker-compose.dev.yml
PRODCOMPOSE=$(COMPOSE) -f docker/docker-compose.prod.yml

###############
# PRODCOMPOSE #
###############

.PHONY: produp
produp: 
	$(PRODCOMPOSE) up

.PHONY: produpd
produpd: 
	$(PRODCOMPOSE) up -d

.PHONY: proddown
proddown: 
	$(PRODCOMPOSE) down

.PHONY: prodbuild
prodbuild: 
	$(PRODCOMPOSE) build

##############
# DEVCOMPOSE #
##############

.PHONY: devup
devup: 
	$(DEVCOMPOSE) up

.PHONY: devupd
devupd: 
	$(DEVCOMPOSE) up -d

.PHONY: devdown
devdown: 
	$(DEVCOMPOSE) down

.PHONY: devbuild
devbuild: 
	$(DEVCOMPOSE) build

#############
#   EXECs   #
#############

#.PHONY: exampleexec
#exampleexec:
#	docker exec -it <container-name> <cmd>
