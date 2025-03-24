run:
	docker compose up -d

remove-setup: # Use this command to remove all Docker containers and network
	sudo rm -rf chatbot-fastfood
	docker compose down

init-setup: # Use this command to init the setup
	echo "Initializing setup"
	git clone https://github.com/mateushlsilva/chatbot-fastfood.git 
	docker compose up -d

