# ansible_playbooks
Ansible playbooks

-	Ansible is declare configurations and orchestrate manual ordered process. 
-	Playbooks are written in YAML only
- Sample file:
```
- hosts: node1
- tasks: 
  - name: Apache is at lates version
      yum:
	    name: httpd
		state: latest
```

##### Ansible Cheatsheet: 
-	`ansible-playbook –sytax-check sample.yaml` -- to check syntax checking on a playbook 
