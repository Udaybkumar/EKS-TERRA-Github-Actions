resource "kubernetes_manifest" "website" {
  # logical_name will be "deployment.yaml" and "service.yaml"
  for_each = fileset("${path.module}/../k8s/", "*.yaml")

  # Read the specific file in the loop
  manifest = merge(
    yamldecode(file("${path.module}/../k8s/${each.value}")),
    {
      metadata = merge(
        yamldecode(file("${path.module}/../k8s/${each.value}")).metadata,
        { namespace = "default" }
      )
    }
  )

  depends_on = [module.eks]
}