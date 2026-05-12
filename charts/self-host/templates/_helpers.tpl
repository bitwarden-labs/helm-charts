{{/*
  bitwarden.imagePullSecrets
  Renders an imagePullSecrets block onto a Pod spec if .Values.general.imagePullSecrets
  is non-empty. No-op when unset.
*/}}
{{- define "bitwarden.imagePullSecrets" -}}
{{- with .Values.general.imagePullSecrets }}
imagePullSecrets:
{{- toYaml . | nindent 2 }}
{{- end }}
{{- end -}}
