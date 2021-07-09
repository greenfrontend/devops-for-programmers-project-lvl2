prepare-mac:
	brew install ansible

prepare-ubuntu:
	sudo apt update
	sudo apt install software-properties-common
	sudo add-apt-repository --yes --update ppa:ansible/ansible
	sudo apt install ansible

install:
	ansible-galaxy collection install -r requirements.yml
	ansible-galaxy role install -r requirements.yml

deploy:
	ansible-playbook --inventory hosts.ini --vault-password-file password playbook.yml

encrypt:
	ansible-vault encrypt_string  --vault-password-file password --stdin-name $(VAR)
