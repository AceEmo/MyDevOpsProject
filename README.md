# Simple DevOps REST Service

Това е учебен проект, който демонстрира **основни DevOps практики** и използва популярни инструменти за контейнеризация и автоматизация.

---

## Технологии

- **Python (Flask)** – за REST API приложението.  
- **Docker** – за контейнеризация и лесно стартиране на приложението.  
- **GitHub Actions** – CI/CD пайплайн за автоматично build-ване и push-ване на Docker image.  
- **Terraform & Ansible** – Infrastructure as Code (IaC) примери за AWS.

---

## Как работи

Приложението има два endpoint-а:  

1. `/` → Връща `"Hello World"`.  
2. `/hostname` → Връща името на машината (host name).  

---

## Стартиране с Docker

```bash
# Build Docker image
docker build -t my-app .

# Стартирай контейнера и отвори порт 80
docker run -p 80:80 my-app
