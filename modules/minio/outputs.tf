output "minio_host" {
  value = "${helm_release.minio.name}-minio.${helm_release.minio.namespace}.svc.cluster.local:${helm_release.minio.port}"
}
