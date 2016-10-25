
.PHONY: usage sync server test migrate

sync-dir = ~/mirror
main-dir = ~/workspace/PoleVaulting
shithappen:
	@echo 'Please wait........'
	@echo '......Making some shit happen.'
	\make migrate
	cd $(sync-dir) && \rails test
	cd $(sync-dir) && \rails server -b 0.0.0.0
pushover:
	@echo 'Pushing..'
	@echo ' '
	
	cd $(main-dir) && \make sync 

sync:
	rsync -avz --delete ./ $(sync-dir)
	@echo "\n===================================================="

server: sync
	cd $(sync-dir) && \rails server -b 0.0.0.0

test: sync
	cd $(sync-dir) && \rails test

migrate: sync
	cd $(sync-dir) && \rails db:migrate:reset db:seed