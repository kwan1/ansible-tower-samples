# ansible-tower-samples
Ansible Tower Playbook Samples


to run nginx on a centos vm,

run centos vm on orbstack.

once done, run command:

`ansible-playbook -i hosts install_nginx.yml`

now nginx should be running on the centos vm

now move the index.html to it by running this playbook

`ansible-playbook -i hosts move_index.yml`

now go to the IP addres of the centos

`http:<VM IP>`

to check vm ip, execute `ip addr` and it shoud be the first ipv4 you found
