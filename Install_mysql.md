### Ansible to install MYSQL:

- [Mysql Cheat Sheet 1](https://www.mysqltutorial.org/mysql-cheat-sheet.aspx)
- [Mysql Cheat Sheet 2](https://devhints.io/mysql)

```
---
- name: Install MySQL
  hosts: chaitu
  become: true
  remote_user: root
  become_method: sudo
  gather_facts: true
  tasks:
    - name: "Installing Repo for Centos 7.9"
      shell: sudo rpm -Uvh https://dev.mysql.com/get/mysql57-community-release-el7-9.noarch.rpm
      ignore_errors: yes
    - name: "Installing MySQL 5.7"
      package: name=mysql-community-server state=present
    - name: Start the MySQL service
      become: true
      service: 
        name: mysqld
        state: started
        enabled: true
    - name: Find MySQL root password
      shell: "echo `grep 'temporary.*root@localhost' /var/log/mysqld.log | sed 's/.*root@localhost: //'`"
      register: mysql_root_pass
    - debug: var=mysql_root_pass.stdout
```
- `mysql -u root -p` command to connect to mysql DB.
- `SET PASSWORD = PASSWORD('your_new_password');` Set the Database password
- `Show database;` - Shows list of databases 
- `create database chaitudb;` - Create database name chaitudb
-  Create table 
```
CREATE TABLE IF NOT EXISTS tasks (
    task_id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    start_date DATE,
    due_date DATE,
    status TINYINT NOT NULL,
    priority TINYINT NOT NULL,
    description TEXT,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
)  ENGINE=INNODB;
```
- `Show tables;` - Show all tables in current databases
- `DESCRIBE tasks;` - describe tasks table to see the columns
