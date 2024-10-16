{{- define "hey-soh-re.name" -}}
{{- .Chart.Name | trunc 63 | trimSuffix "-" -}}
{{- end }}

{{- define "hey-soh-re.fullname" -}}
{{- if .Values.fullnameOverride -}}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" -}}
{{- else -}}
{{- .Release.Name | trunc 63 | trimSuffix "-" -}}-{{ .Chart.Name | trunc 63 | trimSuffix "-" }}
{{- end -}}
{{- end }}
