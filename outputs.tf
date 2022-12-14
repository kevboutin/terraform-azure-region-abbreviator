output "region_short_name" {
  description = "The three to four character shortname of the region specified in var.region."
  value       = local.region_short_name
}

output "region_short_name_map" {
  description = "The three to four character shortname of any given region."
  value       = local.region_short_name_map
}
