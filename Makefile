ping:
	ansible appservers -i inventory.ini -u romasks -m ping

test-install-redis:
	ansible-playbook test_redis_playbook.yml -i inventory.ini -u romasks

install-git:
	ansible-playbook install_git_playbook.yml -i inventory.ini -u romasks

remove-git:
	ansible-playbook remove_git_playbook.yml -i inventory.ini -u romasks

tag-update-cache:
	ansible-playbook --check test_tags_playbook.yml -i inventory.ini -t cache

tag-install-packages:
	ansible-playbook --check test_tags_playbook.yml -i inventory.ini -t pckg

tag-create-users:
	ansible-playbook --check test_tags_playbook.yml -i inventory.ini -t user

nginx-setup:
	ansible-playbook test_variables_ini_playbook.yml -i inventory.ini

install-git-without-facts:
	ansible-playbook test_facts_playbook.yml -i inventory.ini
