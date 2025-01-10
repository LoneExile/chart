{{/*
Common labels
*/}}
{{- define "radarr.labels" -}}
helm.sh/chart: {{ include "radarr.chart" . }}
{{ include "radarr.selectorLabels" . }}
{{- if .Chart.AppVersion }}
app.kubernetes.io/version: {{ .Chart.AppVersion | quote }}
{{- end }}
app.kubernetes.io/managed-by: {{ .Release.Service }}
{{- end }}

{{/*
Selector labels
*/}}
{{- define "radarr.selectorLabels" -}}
app.kubernetes.io/name: {{ include "radarr.name" . }}
app.kubernetes.io/instance: {{ .Release.Name }}
{{- end }}

{{/*
Create the name of the service account to use
*/}}
{{- define "radarr.serviceAccountName" -}}
{{- if .Values.serviceAccount.create }}
{{- default (include "radarr.fullname" .) .Values.serviceAccount.name }}
{{- else }}
{{- default "default" .Values.serviceAccount.name }}
{{- end }}
{{- end }}
