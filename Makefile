ping:
	ansible appservers -i inventory.ini -u romasks -m ping

test-install-redis:
	ansible-playbook test_redis_playbook.yml -i inventory.ini -u romasks

install-git:
	ansible-playbook install_git_playbook.yml -i inventory.ini -u romasks

remove-git:
	ansible-playbook remove_git_playbook.yml -i inventory.ini -u romasks
