install:
	ansible-galaxy install -r requirements.yml

deploy:
	ansible-playbook --user root --limit webservers --vault-password-file password playbook.yml

encrypt:
	ansible-vault encrypt --vault-password-file password group_vars/webservers.yml
