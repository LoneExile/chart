{{/*
Common labels
*/}}
{{- define "common.labels" -}}
app: {{ .Values.labels.app }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "common.selectorLabels" -}}
app: {{ .Values.labels.app }}
{{- end }}
