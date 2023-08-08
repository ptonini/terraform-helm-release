resource "helm_release" "this" {
  name             = var.name
  namespace        = var.namespace
  repository       = var.repository
  chart            = var.chart
  version          = var.chart_version
  values           = [for v in var.values : chomp(replace(v, "\r\n", "\n"))]
  max_history      = var.max_history
  create_namespace = var.create_namespace
  cleanup_on_fail  = var.cleanup_on_fail
  timeout          = var.timeout
  skip_crds        = var.skip_crds
  wait             = var.wait
  force_update     = var.force_update
}
