{{/*
Common labels
*/}}
{{- define "dashy.labels" -}}
app: {{ .Values.labels.app }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "dashy.selectorLabels" -}}
app: {{ .Values.labels.app }}
{{- end }}
