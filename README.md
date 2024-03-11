# dev env setup



## Getting started

Prepare an testing environment and edit hosts file in inverntory folder first, and then check setup.yml.

For Ubuntu, run
`ansible-playbook -i inventory/dev_hosts demo/setup.yml -K --become`

For Oracle Linux, run
`ansible-playbook -i inventory/dev_hosts demo/setup-oracle-linux.yml -K --become`

## Project status
This project is still in development stage for my learning purpose. Some information, codes and comments are misleading and wrong.
