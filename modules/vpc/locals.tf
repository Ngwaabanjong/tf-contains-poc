locals {
  # Fetch the IP configuration for the selected region
  selected_ip_config = var.region_ip_map[var.region]
}