output "products_arn" {
  description = "List of product arn"
  value       = [for p in var.enable_products : format("arn:aws:securityhub:%s::%s", data.aws_region.current.name, p)]
}
