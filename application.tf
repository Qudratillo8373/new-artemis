module "artemis_namespace" {
  source               = "./module/terraform-k8s-namespace"
  deployment_namespace = "artemis"
}

module artemis {
  source = "./module/terraform-helm"
  deployment_name = "artemis"
  deployment_namespace = "artemis"
  deployment_path = "charts/application"
  values_yaml = <<EOF

replicaCount: 1

image:
  ####### Please change repository direction #######
<<<<<<< HEAD
  repository: "us-central1-docker.pkg.dev/project-infrastructure-388501/artemis/artemis"
  tag: "3.0.0"
=======
  repository: "us-central1-docker.pkg.dev/terr-380812/artemis/artemis"
  tag: "main"
>>>>>>> 0f65fef8be1bc9df9daa29d34685b42c4ccb1842

service:
  type: ClusterIP
  port: 5000

ingress:
  enabled: true
  className: "nginx"
  annotations:
    ingress.kubernetes.io/ssl-redirect: "false"
    cert-manager.io/cluster-issuer: letsencrypt-prod
    acme.cert-manager.io/http01-edit-in-place: "true"
  hosts:
    - host: "artemis.kudratillo.org"
      paths:
        - path: /
          pathType: ImplementationSpecific
  tls: 
    - secretName: artemis
      hosts:
        - "artemis.kudratillo.org"
  EOF
}





