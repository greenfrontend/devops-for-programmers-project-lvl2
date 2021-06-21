install:
	ansible-galaxy install -r requirements.yml

deploy:
	ansible-playbook --user root --vault-password-file password playbook.yml

encrypt:
	ansible-vault encrypt_string --vault-password-file password 'value' --name 'name'
