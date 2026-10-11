output "core_route_tables_id" {
  description = "Map of id values across all core_route_tables, keyed the same as var.core_route_tables except keys with no id are omitted"
  value       = { for k, v in oci_core_route_table.core_route_tables : k => v.id if v.id != null && length(v.id) > 0 }
}
output "core_route_tables_compartment_id" {
  description = "Map of compartment_id values across all core_route_tables, keyed the same as var.core_route_tables except keys with no compartment_id are omitted"
  value       = { for k, v in oci_core_route_table.core_route_tables : k => v.compartment_id if v.compartment_id != null && length(v.compartment_id) > 0 }
}
output "core_route_tables_defined_tags" {
  description = "Map of defined_tags values across all core_route_tables, keyed the same as var.core_route_tables except keys with no defined_tags are omitted"
  value       = { for k, v in oci_core_route_table.core_route_tables : k => v.defined_tags if v.defined_tags != null && length(v.defined_tags) > 0 }
}
output "core_route_tables_display_name" {
  description = "Map of display_name values across all core_route_tables, keyed the same as var.core_route_tables except keys with no display_name are omitted"
  value       = { for k, v in oci_core_route_table.core_route_tables : k => v.display_name if v.display_name != null && length(v.display_name) > 0 }
}
output "core_route_tables_freeform_tags" {
  description = "Map of freeform_tags values across all core_route_tables, keyed the same as var.core_route_tables except keys with no freeform_tags are omitted"
  value       = { for k, v in oci_core_route_table.core_route_tables : k => v.freeform_tags if v.freeform_tags != null && length(v.freeform_tags) > 0 }
}
output "core_route_tables_route_rules" {
  description = "Map of route_rules values across all core_route_tables, keyed the same as var.core_route_tables except keys with no route_rules are omitted"
  value       = { for k, v in oci_core_route_table.core_route_tables : k => v.route_rules if v.route_rules != null && length(v.route_rules) > 0 }
}
output "core_route_tables_state" {
  description = "Map of state values across all core_route_tables, keyed the same as var.core_route_tables except keys with no state are omitted"
  value       = { for k, v in oci_core_route_table.core_route_tables : k => v.state if v.state != null && length(v.state) > 0 }
}
output "core_route_tables_time_created" {
  description = "Map of time_created values across all core_route_tables, keyed the same as var.core_route_tables except keys with no time_created are omitted"
  value       = { for k, v in oci_core_route_table.core_route_tables : k => v.time_created if v.time_created != null && length(v.time_created) > 0 }
}
output "core_route_tables_vcn_id" {
  description = "Map of vcn_id values across all core_route_tables, keyed the same as var.core_route_tables except keys with no vcn_id are omitted"
  value       = { for k, v in oci_core_route_table.core_route_tables : k => v.vcn_id if v.vcn_id != null && length(v.vcn_id) > 0 }
}

