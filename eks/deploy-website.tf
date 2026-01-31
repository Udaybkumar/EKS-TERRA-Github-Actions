resource "kubernetes_manifest" "website" {
  # logical_name will be "deployment.yml" and "service.yml"
  for_each = fileset("${path.module}/../k8s/", "*.yml")

  # Read the specific file in the loop
  manifest = yamldecode(file("${path.module}/../k8s/${each.value}"))

  depends_on = [module.eks]
}