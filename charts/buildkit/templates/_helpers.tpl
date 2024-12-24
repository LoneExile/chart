{{/*
Expand the name of the chart.
*/}}
{{- define "buildkitd.name" -}}
{{- default .Chart.Name .Values.nameOverride | trunc 63 | trimSuffix "-" }}
{{- end }}

{{/*
Create a default fully qualified app name.
*/}}
{{- define "buildkitd.fullname" -}}
{{- if .Values.fullnameOverride }}
{{- .Values.fullnameOverride | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- $name := default .Chart.Name .Values.nameOverride }}
{{- if contains $name .Release.Name }}
{{- .Release.Name | trunc 63 | trimSuffix "-" }}
{{- else }}
{{- printf "%s-%s" .Release.Name $name | trunc 63 | trimSuffix "-" }}
{{- end }}
{{- end }}
{{- end }}

{{/*
Common labels
*/}}
{{- define "buildkitd.labels" -}}
helm.sh/chart: {{ include "buildkitd.chart" . }}
{{ include "buildkitd.selectorLabels" . }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "buildkitd.selectorLabels" -}}
app.kubernetes.io/name: {{ include "buildkitd.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}
