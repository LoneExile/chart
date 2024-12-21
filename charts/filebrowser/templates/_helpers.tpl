{{/*
Common labels
*/}}
{{- define "filebrowser.labels" -}}
app: {{ .Values.labels.app }}
helm.sh/chart: {{ .Chart.Name }}-{{ .Chart.Version | replace "+" "_" }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "filebrowser.selectorLabels" -}}
app: {{ .Values.labels.app }}
{{- end }}
