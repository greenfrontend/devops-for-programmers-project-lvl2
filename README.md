### Hexlet tests and linter status:
[![Actions Status](https://github.com/greenfrontend/devops-for-programmers-project-lvl2/workflows/hexlet-check/badge.svg)](https://github.com/greenfrontend/devops-for-programmers-project-lvl2/actions)

## Перед деплоем установить:
1. Make (3.81)
2. Ansible (> 2.9). Для установки запустите `make prepare-mac` или `make prepare-ubuntu` для Mac OS и Ubuntu соответственно
3. Запустить команду `make install` для установки ролей и коллекций Ansible

## Как подготовиться к деплою:
1. В корне проекта создать файл password с паролем внутри
2. Поменять IP хостов для деплоя в файле hosts.ini
3. Запустить деплой командой `make deploy`

## Как шифровать переменные:
Чтобы зашифровать новое значение переменной:
1. Запустите команду `VAR=<name> make encrypt`, где name это имя переменной которую вы хотите зашифровать, например:

`VAR=redmine_db_password make encrypt`

после выполнения этой команды, вам нужно будет ввести пароль и завершить ввод CTRL-D
в stdout будет зашифрованная переменная

