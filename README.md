\# Simple DevOps REST Service



Това е учебен проект, който демонстрира основни DevOps практики.



\## Технологии

\* \*\*Python (Flask)\*\*: За REST API приложението.

\* \*\*Docker\*\*: За контейнеризация.

\* \*\*GitHub Actions\*\*: CI/CD пайплайн за автоматично създаване на Docker image.

\* \*\*Terraform \& Ansible\*\*: Infrastructure as Code (IaC) примери за AWS.



\## Как работи

Приложението има два endpoint-а:

1\. `/` -> Връща "Hello World".

2\. `/hostname` -> Връща името на машината (Host ID).



\## Стартиране с Docker

```bash

docker build -t my-app .

docker run -p 80:80 my-app

