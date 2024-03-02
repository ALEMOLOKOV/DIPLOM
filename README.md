# DIPLOM

### 1 Создание облачной инфраструктуры

#### ![Тerraform файлы](https://github.com/ALEMOLOKOV/DIPLOM/tree/9bf432458c430fa8121d43e00e65e99036a58a28/task-1-tf-YC)

#### Результат

![terraform apply](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/2b442dce-33da-4fa9-a70e-6c11112383e8)

#### YandexCloud сервисы

![YC inctances](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/ba3b95c0-cea5-491d-8ed2-8abb44697916)

![YC VM](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/61930301-6538-40df-96d4-d35fb3a49287)



### 2 Создание Kubernetes кластера

#### Kubernetes развернут при помощи kubespray, кластер состоит из 3 нод

#### Ansible playbook результат

![ansible-playbook done](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/c9a970ad-edf9-47f1-a4c7-5f5aa5954536)

#### Статус кластера

![K8S cluster up](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/43d77a81-b1a8-4095-93a9-19e0da05b763)

![K8S cluster status](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/586a1123-d37c-44a5-bfd7-4679e5f30733)


### 3 Тестовое приложение

#### Воспользовался рекомендованным вариантом Dockerfile, nginx со статичной страницей, регистри Docker Hub

![Ссылка на репозиторий](https://github.com/ALEMOLOKOV/diplom-docker.git)

### 4 Система мониторинга и деплой приложения

#### Система мониторинга

#### Воспользовался пакетом kube-prometeuse
После развертывания в кластере был создан namespace monitoring, добавил NodePort в сервисы

#### Сервисы namespace monitoring

![SVC monitoring](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/dcd15758-b816-44c1-95e8-970a438a3d4f)

#### Првоерка доступности по http к web интерфейсу grafana

http://51.250.103.193:30597 (admin / admin123)

![Grafana - 3](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/412af0e3-2cd8-497f-b8ac-15c691bada68)

![Grafana](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/729b2dc8-0f8b-4ef6-a2f8-c0273bc13754)

![Grafana - 1](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/a5af84ca-0d47-4215-b311-1a7db4f2b061)

![Grafana - 2](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/4f7c0d7d-dc9c-4c25-adbb-049ab187a69e)

#### Prometheus

http://51.250.103.193:30673

![prometheus](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/aecb28d7-f22b-4ddf-8dec-f50cb71cc50d)

#### Allert manager

http://51.250.103.193:32693

![allert-manager 1](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/6f159886-e19a-458b-b071-30920957adbe)

![allert-manager](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/71620298-4926-4c6f-99a8-00f219e61994)


### Доступ к приложению

#### Добавил в кластер namespace app развертывание через helm chart

![файлы](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/49b11d1c-1e91-46bc-befe-4ec1f8e8951c)

#### Helm chart файлы
![Директория с файлами](https://github.com/ALEMOLOKOV/DIPLOM/tree/18d7f0e799b257cae2754d396dc49746ed1339a8/diplom-chart)


### 5 Настройка CI/CD

#### Для астоматической сборки Docker образа использовал CI/CD GitHub Actions

#### Ссылка на репозторий с приложением

![Ссылка на репозиторий](https://github.com/ALEMOLOKOV/diplom-docker.git)

#### При коммите в репозиторие с тестовым приложением происходит сборка и отправка в регистр Docker образа
#### Скриншоты GitHub Actions  

![just commit github](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/b53a875d-25a0-4df1-863f-816ba18f1717)

#### Docker Hub

![just commit](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/6d008e87-018f-4c72-9f1e-751ade1e6b06)


#### При создании тега происходит сборка и отправка с соответствующим label в регистри, а также деплой соответствующего Docker образа в кластер Kubernetes
#### Скриншоты GitHub Actions  

![tag githab](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/771edea5-c992-4b97-9a70-96f262161c8c)

#### Docker Hub

![tag docker](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/e59b44b3-ceff-40f0-8430-c64100b3ecde)

![tag docker 2](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/33def140-e9d8-4931-8c08-48c6c7f85ba6)

### Доступ к приложению

![доступ из браузера](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/3371789c-548e-4314-a839-fbbd55857808)

![доступ из K8S](https://github.com/ALEMOLOKOV/DIPLOM/assets/109212419/6546cc32-2126-4e3b-b78d-7da2e360a5c9)













