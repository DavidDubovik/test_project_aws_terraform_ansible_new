## 📌 Опис
Цей проєкт дозволяє автоматично розгорнути WordPress на AWS, використовуючи Terraform для створення інфраструктури та Ansible для встановлення й налаштування середовища.  
Розгортання відбувається у середовищі **WSL (Ubuntu)** на Windows.  
В результаті ви отримаєте готовий сервер з WordPress, доступний через браузер.

## ⚙️ Передумови
- Обліковий запис AWS з доступом до EC2  
- Встановлений **WSL (Ubuntu)**  
- Доступ до інтернету  

## 🔹 Встановлення WSL
1. Відкрийте **PowerShell** від імені адміністратора.  
2. Виконайте:

    wsl --install

    wsl -d Ubuntu

# Встановлення Terraform
sudo apt update && sudo apt upgrade -y

sudo apt install -y curl gnupg software-properties-common lsb-release

curl -fsSL https://apt.releases.hashicorp.com/gpg | sudo apt-key add -

sudo apt-add-repository "deb [arch=amd64] https://apt.releases.hashicorp.com $(lsb_release -cs) main"

sudo apt update && sudo apt install terraform -y

terraform -version

# Встановлення Ansible
sudo apt update && sudo apt upgrade -y

sudo apt install ansible -y

ansible --version

# Запуск проекту
cd /terraform/

terraform init

terraform plan

terraform apply

cd ..

ansible-playbook -i terraform/hosts.txt playbook.yml --ask-become-pass

# Доступ до додатку
# Відкрийте браузер: http://<ip_from_terraform_output>