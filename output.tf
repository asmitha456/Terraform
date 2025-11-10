#Outputs are only rendered when terraform applies your plan. Running terraform plan will not render outputs

output "instance_public_ip"{
  value=aws_instance.output_demo.public_ip
}
