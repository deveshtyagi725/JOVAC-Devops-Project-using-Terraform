output "aws_ec2_public_ip" {
  value       = aws_instance.web.public_ip
  description = "Public IP of the EC2 instance"
}

output "azure_storage_account_name" {
  value       = azurerm_storage_account.storage.name
  description = "Azure Storage Account name"
}

output "azure_blob_container_name" {
  value       = azurerm_storage_container.blob_container.name
  description = "Azure Blob container name"
}
