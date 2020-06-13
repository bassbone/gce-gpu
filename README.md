# gce-gpu

## create instance

* new

```
gcloud deployment-manager deployments create gpu-instance --template ./deployment/vm.jinja --properties name:vm01,zone:us-central1-b,instanceType:custom-2-4096,diskSizeGb:50,gpuCount:1
```

* update

```
gcloud deployment-manager deployments update gpu-instance --template ./deployment/vm.jinja --properties name:vm01,zone:us-central1-b,instanceType:custom-2-4096,diskSizeGb:50,gpuCount:1
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
