install:
	ansible-galaxy install -r requirements.yml

deploy:
	ansible-playbook -l webservers playbook.yml -u root
