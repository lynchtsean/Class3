output "waf_policy_id" {
  description = "ID of the WAF policy"
  value       = azurerm_web_application_firewall_policy.example.id
}

output "waf_policy_name" {
  description = "Name of the WAF policy"
  value       = azurerm_web_application_firewall_policy.example.name
}
