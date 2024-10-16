# webapp

![Version: 1.0.0](https://img.shields.io/badge/Version-1.0.0-informational?style=flat-square)

A helm chart for a standard webapp using istio ingress

## Values

| Key | Type | Default | Description |
|-----|------|---------|-------------|
| image.pullPolicy | string | `"IfNotPresent"` |  |
| image.repository | string | `"hey.soh.re"` |  |
| image.tag | string | `"v1.0.6"` |  |
| replicaCount | int | `2` |  |
| resources | object | `{}` |  |
| service.port | int | `80` |  |
| service.targetPort | int | `8080` |  |
| service.type | string | `"ClusterIP"` |  |
| virtualService.gateway.name | string | `"http-gateway"` |  |
| virtualService.gateway.namespace | string | `"istio-system"` |  |
| virtualService.hosts[0] | string | `"hey.soh.re"` |  |
