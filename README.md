# DEV-OPS-LR6 (Ansible Role — Деплой веб-сервера с виртуальными хостами)
Данный проект демонстрирует использование **Ansible roles** для автоматического деплоя веб-сервера **nginx** с поддержкой нескольких виртуальных хостов (vhosts).  
Роль устанавливает nginx, создаёт виртуальные сайты на основе переданных переменных и шаблонов.

## Содержимое репозитория
 - roles/nginx-vhosts/ - директория роли с задачами, шаблонами и переменными.
 - roles/nginx-vhosts/tasks/main.yml - задачи по установке nginx и созданию виртуальных хостов.
 - roles/nginx-vhosts/templates/index.html.j2 - шаблон страницы для каждого сайта.
 - roles/nginx-vhosts/templates/site.conf.j2 - шаблон конфигурации nginx для каждого хоста.
 - roles/nginx-vhosts/handlers/main.yml — обработчики (handlers) для перезапуска nginx после изменений конфигурации.
 - playbook.yml - основной плейбук, вызывающий роль и передающий параметры.
 - run_playbook.sh — вспомогательный Bash-скрипт для запуска плейбука одной командой.

## Используемые технологии
Ansible — автоматизация установки и настройки серверов; 
nginx — веб-сервер; 
Jinja2 — шаблоны для генерации конфигураций и страниц; 
SSH — удалённое выполнение задач.

## Краткое описание шагов
 - Создана роль nginx с типовой структурой (tasks, templates, vars, defaults).
 - Добавлены шаблоны конфигурации и index-страниц.
 - В playbook.yml определён список сайтов через переменную sites.
Выполнен плейбук, который:
  - устанавливает nginx;
  - создаёт директории для сайтов;
  - генерирует конфиги и index.html из шаблонов;
  - перезапускает nginx.

##Пример результата
![lr6-1](https://github.com/user-attachments/assets/af82c47e-234b-4330-9210-4f60df73745a)
![lr6-2](https://github.com/user-attachments/assets/6a278a05-d312-430a-a788-652d30446e0b)
![lr6-3](https://github.com/user-attachments/assets/305aa3b4-acbe-4fd5-8d1e-b0cacb897c2b)
![lr6-4](https://github.com/user-attachments/assets/1e2a0b3a-11e7-47ce-86ad-3d7fe639d335)

Выполнил Орлов Артём
