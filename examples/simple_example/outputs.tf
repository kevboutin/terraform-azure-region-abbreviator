output "region_short_name" {
  description = "The two to four character shortname of a given region."
  value       = module.utils.region_short_name
}

output "region_short_name_map" {
  description = "The two to four character shortname of any given region."
  value       = module.utils.region_short_name_map
}
