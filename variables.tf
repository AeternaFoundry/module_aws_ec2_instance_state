variable "ec2_instance_states" {
  description = <<EOT
Map of ec2_instance_states, attributes below
Required:
    - instance_id
    - state
Optional:
    - force
    - region
EOT

  type = map(object({
    instance_id = string
    state       = string
    force       = optional(bool)
    region      = optional(string)
  }))
  # Note: 1 additional provider-side validator is enforced at apply time but not mirrored as validation{} blocks here (bespoke or non-mechanically-translatable).
}

