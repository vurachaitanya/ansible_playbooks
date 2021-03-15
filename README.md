# ansible_playbooks
Ansible playbooks

-	Ansible is declare configurations and orchestrate manual ordered process. 
-	Playbooks are written in YAML only
- Sample file:
```
- hosts: localhost
- tasks:
  - name: "Apache is at lates version"
    yum:
      name: httpd
      state: latest
```
- Sample file for looping using Vars:
```
  tasks:
    - name: install dependencies
      yum:
        name: "{{ package }} "
        state: present
      vars:
        package:
        - wget
        - java-1.8.0-openjdk-devel
        - git
```

##### Ansible Cheatsheet: 
-	`ansible-playbook –sytax-check sample.yaml` -- to check syntax checking on a playbook 
