####### modules #######
module "nginx_server_dev" {
    source = "./nginx_server_module"

    ami_id           = "ami-0150ccaf51ab55a51"
    instance_type    = "t2.micro"
    server_name      = "nginx-server-dev"
    environment      = "dev"
}

module "nginx_server_qa" {
    source = "./nginx_server_module"

    ami_id           = "ami-0150ccaf51ab55a51"
    instance_type    = "t2.small"
    server_name      = "nginx-server-qa"
    environment      = "qa"
}


#######  output ####### 
output "nginx_dev_ip" {
  description = "Dirección IP pública de la instancia EC2"
  value       = module.nginx_server_dev.server_public_ip
}

output "nginx_dev_dns" {
  description = "DNS público de la instancia EC2"
  value       = module.nginx_server_dev.server_public_dns
}

#######  output ####### 
output "nginx_qa_ip" {
  description = "Dirección IP pública de la instancia EC2"
  value       = module.nginx_server_qa.server_public_ip
}

output "nginx_qa_dns" {
  description = "DNS público de la instancia EC2"
  value       = module.nginx_server_qa.server_public_dns
}