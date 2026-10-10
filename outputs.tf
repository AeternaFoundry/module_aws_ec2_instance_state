output "ec2_instance_states_id" {
  description = "Map of id values across all ec2_instance_states, keyed the same as var.ec2_instance_states"
  value       = { for k, v in aws_ec2_instance_state.ec2_instance_states : k => v.id if v.id != null && length(v.id) > 0 }
}
output "ec2_instance_states_force" {
  description = "Map of force values across all ec2_instance_states, keyed the same as var.ec2_instance_states"
  value       = { for k, v in aws_ec2_instance_state.ec2_instance_states : k => v.force if v.force != null }
}
output "ec2_instance_states_instance_id" {
  description = "Map of instance_id values across all ec2_instance_states, keyed the same as var.ec2_instance_states"
  value       = { for k, v in aws_ec2_instance_state.ec2_instance_states : k => v.instance_id if v.instance_id != null && length(v.instance_id) > 0 }
}
output "ec2_instance_states_region" {
  description = "Map of region values across all ec2_instance_states, keyed the same as var.ec2_instance_states"
  value       = { for k, v in aws_ec2_instance_state.ec2_instance_states : k => v.region if v.region != null && length(v.region) > 0 }
}
output "ec2_instance_states_state" {
  description = "Map of state values across all ec2_instance_states, keyed the same as var.ec2_instance_states"
  value       = { for k, v in aws_ec2_instance_state.ec2_instance_states : k => v.state if v.state != null && length(v.state) > 0 }
}

