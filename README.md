## This repo is used to deploy helm artemis application

---
### Usage
---

## Artemis E-commerse Web-Application
Pre Build process be fore you deploy the application please open port 5000 on Security Group and then follow the bellow commands.
```
yum install python-pip -y
pip install Flask
```
### If you are installing the helm for the first time, you can follow these steps.

1. Read helm compatibility 
```
https://helm.sh/docs/topics/version_skew/
```

#### 2. Install helm to your repository
```
wget https://get.helm.sh/helm-v3.7.2-linux-amd64.tar.gz
tar xzvf helm-v3.7.2-linux-amd64.tar.gz
rm -rf helm-v3.7.2-linux-amd64.tar.gz
mv linux-amd64/helm charts/
cd chart
```

#### 3. Create helm chart for application
```
./helm create application
```

#### 4. Install test helm chart
```
./helm install test application
```
#### 5. Verify
```
 * helm list
 * kubectl get get all
```
#### 6. Unistall helm chart
```
./helm uninstall test
```

# This repository contains all the requirements of artemis application. And the application is versioned in branches
```
https://github.com/farrukh90/artemis/tree/master
```
## Following this commands 
 ## 1. Clone repo
 ```
 git clone https://github.com/farrukh90/artemis.git
 ```

 ## 2. Build image following commands
 ```
 * docker image build -t "artemis repo from GCP"/artemis:2.0.0 .

 * docker push "artemis repo from GCP"/artemis:2.0.0 .

 * git chekout 2.0.0
 ```

