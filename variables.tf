variable "core_route_tables" {
  description = <<EOT
Map of core_route_tables, attributes below
Required:
    - compartment_id
    - vcn_id
Optional:
    - defined_tags
    - display_name
    - freeform_tags
    - route_rules (block):
        - cidr_block (optional)
        - description (optional)
        - destination (optional)
        - destination_type (optional)
        - network_entity_id (required)
        - route_type (optional)
    - timeouts (block):
        - create (optional)
        - delete (optional)
        - update (optional)
EOT

  type = map(object({
    compartment_id = string
    vcn_id         = string
    defined_tags   = optional(map(string))
    display_name   = optional(string)
    freeform_tags  = optional(map(string))
    route_rules = optional(list(object({
      cidr_block        = optional(string)
      description       = optional(string)
      destination       = optional(string)
      destination_type  = optional(string)
      network_entity_id = string
      route_type        = optional(string)
    })))
    timeouts = optional(object({
      create = optional(string)
      delete = optional(string)
      update = optional(string)
    }))
  }))
}

