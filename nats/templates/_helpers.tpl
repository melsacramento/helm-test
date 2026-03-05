{{- define "nats.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "nats.fullname" -}}
{{- printf "%s-%s" .Release.Name (include "nats.name" .) | trunc 63 | trimSuffix "-" }}
{{- end }}

{{- define "nats.labels" -}}
helm.sh/chart: "{{ .Chart.Name }}-{{ .Chart.Version }}"
app.kubernetes.io/name: "{{ include "nats.name" . }}"
app.kubernetes.io/instance: "{{ .Release.Name }}"
app.kubernetes.io/version: "{{ .Chart.AppVersion }}"
app.kubernetes.io/managed-by: "{{ .Release.Service }}"
{{- end }}
