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
| persistence | list | `[]` | List of persistence volumes. Each item: `name`, `mountPath`, and optionally `size` (new PVC), `existingClaim` (reuse PVC), `volumeName` (bind new PVC to existing PV). |
| replicaCount | int | `2` |  |
| resources | object | `{}` |  |
| secret.enabled | bool | `false` |  |
| secret.name | string | `"my-external-secret"` |  |
| service.name | string | `"hey-soh-re"` |  |
| service.port | int | `80` |  |
| service.targetPort | int | `8080` |  |
| service.type | string | `"ClusterIP"` |  |
| virtualService.hosts[0] | string | `"hey.soh.re"` |  |

### Persistence

You can define multiple persistence volumes. For each item:

| Field | Required | Description |
|-------|----------|-------------|
| name | yes | Volume name (used as the Kubernetes volume name). |
| mountPath | yes | Path where the volume is mounted in the container. |
| size | no | Size for a new PVC (e.g. `"1Gi"`). Omit when using `existingClaim`. |
| existingClaim | no | Name of an existing PVC to use; no new PVC is created. |
| volumeName | no | When creating a new PVC, bind it to this existing PersistentVolume by name. |

Example: create one new PVC and reuse an existing one:

```yaml
persistence:
  - name: data
    mountPath: /data
    size: 1Gi
  - name: cache
    mountPath: /cache
    existingClaim: my-existing-cache-pvc
```

