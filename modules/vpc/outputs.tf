output "vpc_id_out" {

  value = data.aws_vpc.exist_vpc.id

}

output "public_subnet_id_out" {

  value = data.aws_subnet.exist_public_subnet.id
}

output "private_subnet_id_out" {

  value = data.aws_subnet.exist_private_subnet.id
}
