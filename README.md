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
