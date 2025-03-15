setup:
	sudo dnf install -y python3-libdnf5
	python3 -m venv venv 
	venv/bin/pip install -r requirements.txt
	venv/bin/ansible-galaxy collection install -r requirements.yml

run:
	venv/bin/ansible-playbook playbook.yml -v --ask-become-pass
