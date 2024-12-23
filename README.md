# webapp

![Version: 2.3.0](https://img.shields.io/badge/Version-2.3.0-informational?style=flat-square)

A helm chart for a standard webapp using istio ingress

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| configMaps | list | `[]` |  |
| env | list | `[]` |  |
| image.name | string | `"hey.soh.re"` |  |
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"zot.soh.re"` |  |
| image.tag | string | `"v1.0.6"` |  |
| name | string | `"webapp"` |  |
| postgres.bootstrap.initdb.database | string | `"app"` |  |
| postgres.bootstrap.initdb.owner | string | `"app"` |  |
| postgres.enabled | bool | `false` |  |
| postgres.instances | int | `2` |  |
| postgres.name | string | `"postgres-cluster"` |  |
| postgres.storage.size | string | `"10Gi"` |  |
| pvc.enabled | bool | `false` |  |
| pvc.mountPath | string | `"/data"` |  |
| pvc.size | string | `"1Gi"` |  |
| replicaCount | int | `2` |  |
| resources | object | `{}` |  |
| secret.enabled | bool | `false` |  |
| secret.name | string | `"my-external-secret"` |  |
| service.name | string | `"hey-soh-re"` |  |
| service.port | int | `80` |  |
| service.targetPort | int | `8080` |  |
| service.type | string | `"ClusterIP"` |  |
| virtualService.hosts[0] | string | `"hey.soh.re"` |  |

