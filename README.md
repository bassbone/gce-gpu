# gce-gpu

## VM作成

* 新規作成時

```
gcloud deployment-manager deployments create gpu-instance --template ./deployment/vm.jinja --properties name:vm01,zone:us-central1-b,instanceType:custom-2-4096,diskSizeGb:50,gpuCount:1
```

* 更新時

```
gcloud deployment-manager deployments update gpu-instance --template ./deployment/vm.jinja --properties name:vm01,zone:us-central1-b,instanceType:custom-2-4096,diskSizeGb:50,gpuCount:1
```

## git clone

```
gcloud compute ssh vm01 --zone=us-central1-b --command="git clone https://github.com/bassbone/gce-gpu.git"
```

## nvidia関連のセットアップ

```
gcloud compute ssh vm01 --zone=us-central1-b --command="sh gce-gpu/setup/nvidia-install.sh"
```

## インスタンス再起動

```
gcloud compute instances reset vm01 --zone=us-central1-b
sleep 60 # for wait reboot.
```

## docker関連のセットアップ

```
gcloud compute ssh vm01 --zone=us-central1-b --command="sh gce-gpu/setup/docker-install.sh"
```
