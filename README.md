# gce-gpu

## create instance & firewall

* new

```
gcloud deployment-manager deployments create gpu-instance --template ./deployment/vm.jinja --properties name:vm01,zone:us-central1-b,instanceType:custom-2-4096,diskSizeGb:50,gpuCount:1
gcloud deployment-manager deployments create firewall --template ./deployment/firewall.jinja --properties sourceIp:[アクセス元IPアドレス]
```

* update

```
gcloud deployment-manager deployments update gpu-instance --template ./deployment/vm.jinja --properties name:vm01,zone:us-central1-b,instanceType:custom-2-4096,diskSizeGb:50,gpuCount:1
gcloud deployment-manager deployments update firewall --template ./deployment/firewall.jinja --properties sourceIp:[アクセス元IPアドレス]
```

## git clone

```
gcloud compute ssh vm01 --zone=us-central1-b --command="git clone https://github.com/bassbone/gce-gpu.git"
```

## setup nvidia

```
gcloud compute ssh vm01 --zone=us-central1-b --command="sh gce-gpu/setup/nvidia-install.sh"
```

## reset instance

```
gcloud compute instances reset vm01 --zone=us-central1-b
sleep 60 # for wait reboot.
```

## setup docker

```
gcloud compute ssh vm01 --zone=us-central1-b --command="sh gce-gpu/setup/docker-install.sh"
```

## docker build & up

```
gcloud compute ssh vm01 --zone=us-central1-b --command="cd gce-gpu; git pull origin master"
```

## (git update)

```
gcloud compute ssh vm01 --zone=us-central1-b --command="cd gce-gpu; git pull origin master"
```
