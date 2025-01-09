{{/*
Expand the name of the chart.
*/}}
{{- define "string-service.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create chart labels
*/}}
{{- define "string-service.labels" -}}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
{{ include "string-service.selectorLabels" . }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "string-service.selectorLabels" -}}
app.kubernetes.io/name: {{ include "string-service.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
