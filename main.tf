resource "oci_core_route_table" "core_route_tables" {
  for_each = var.core_route_tables

  compartment_id = each.value.compartment_id
  vcn_id         = each.value.vcn_id
  defined_tags   = each.value.defined_tags
  display_name   = each.value.display_name
  freeform_tags  = each.value.freeform_tags

  dynamic "route_rules" {
    for_each = each.value.route_rules != null ? each.value.route_rules : []
    content {
      cidr_block        = route_rules.value.cidr_block
      description       = route_rules.value.description
      destination       = route_rules.value.destination
      destination_type  = route_rules.value.destination_type
      network_entity_id = route_rules.value.network_entity_id
      route_type        = route_rules.value.route_type
    }
  }

  dynamic "timeouts" {
    for_each = each.value.timeouts != null ? [each.value.timeouts] : []
    content {
      create = timeouts.value.create
      delete = timeouts.value.delete
      update = timeouts.value.update
    }
  }
}

