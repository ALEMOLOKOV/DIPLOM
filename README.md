# DIPLOM

### 1 Создание облачной инфраструктуры

#### ![Тerraform файлы](https://github.com/ALEMOLOKOV/DIPLOM/tree/9bf432458c430fa8121d43e00e65e99036a58a28/task-1-tf-YC)

#### Результат

![terraform apply](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/2b442dce-33da-4fa9-a70e-6c11112383e8)

#### YandexCloud сервисы

![YC inctances](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/b78687e1-9879-4473-b595-463c88cb4e44)


### 2 Создание Kubernetes кластера

#### Kubernetes развернут при помощи kubespray, кластер состоит из 3 нод

#### Ansible playbook результат

![ansible-playbook done](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/81cb3357-0729-49b5-8fbc-30b344758346)

#### Статус кластера

![K8S cluster up](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/42870def-d849-4757-bc6f-50ac5ad8261b)

### 3 Тестовое приложение

#### Воспользовался рекомендованным вариантом Dockerfile, nginx со статичной страницей, регистри Docker Hub

![Ссылка на репозиторий](https://github.com/ALEMOLOKOV/diplom-docker.git)

### 4 Система мониторинга и деплой приложения

#### Система мониторинга

#### Воспользовался пакетом kube-prometeuse
После развертывания в кластере был создан namespace monitoring, добавил NodePort в сервисы

#### Сервисы namespace monitoring

![SVC monitoring](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/aa5e0910-0cf4-4f61-a844-c3053ad11286)

#### Првоерка доступности по http к web интерфейсу grafana

![Grafana](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/729b2dc8-0f8b-4ef6-a2f8-c0273bc13754)

![Grafana - 1](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/a5af84ca-0d47-4215-b311-1a7db4f2b061)

![Grafana - 2](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/4f7c0d7d-dc9c-4c25-adbb-049ab187a69e)

#### Prometheus
![prometheus](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/aecb28d7-f22b-4ddf-8dec-f50cb71cc50d)

#### Allert manager
![allert-manager](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/71620298-4926-4c6f-99a8-00f219e61994)


### Доступ к приложению

#### Добавил в кластер namespace app развертывание через helm chart

![файлы](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/49b11d1c-1e91-46bc-befe-4ec1f8e8951c)

#### Helm chart файлы
![Директория с файлами](https://github.com/ALEMOLOKOV/DIPLOM/tree/18d7f0e799b257cae2754d396dc49746ed1339a8/diplom-chart)


### 5 Настройка CI/CD

#### Для астоматической сборки Docker образа использовал CI/CD GitHub Actions

#### ссылка на репозтьлрий с приложением

![Ссылка на репозиторий](https://github.com/ALEMOLOKOV/diplom-docker.git)

#### Скриншоты GitHub Actions

![github actions](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/bdebc913-6001-410f-b7f6-f570ae0af708)

#### Docker Hub
![docker hub](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/25d128fb-a81a-4571-9214-3028a5b7c035)











