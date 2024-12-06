resource "helm_release" "authentik" {
  name             = "authentik"
  chart            = "authentik"
  repository       = "https://charts.goauthentik.io"
  namespace        = "authentik"
  create_namespace = true
  
  set {
    name  = "authentik.secret_key"
    value = "IR1UkUAnKIRgrtzIGDfV50AxfkIpTVN1Eg8wchBQOTpXetcrgs"
  }
  set {
    name  = "authentik.error_reporting.enabled"
    value = "true"
  }

  set {
    name  = "authentik.postgresql.password"
    value = "sA7mykKk9vZ+0KQSQnj1NeOThmTCI4qLSUh7xXYApmQmpacsq3KwFyAiMUOxhjsUXPGPtK73+tWFwTMD"
  }
  
  set {
    name  = "postgresql.enabled"
    value = "true"
  }

  set {
    name  = "postgresql.auth.password"
    value = "sA7mykKk9vZ+0KQSQnj1NeOThmTCI4qLSUh7xXYApmQmpacsq3KwFyAiMUOxhjsUXPGPtK73+tWFwTMD"
  }

  set {
    name  = "redis.enabled"
    value = "true"
  }

  depends_on = [kind_cluster.defaul]
}
