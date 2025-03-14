# If any of these variables are left empty, Terraform will use the defaults from `variable.tf` or prompt for input.

exist_vpc_name            = "source-vpc"
exist_public_subnet_name  = "source-subnet-01"
exist_private_subnet_name = "source-subnet-02"

# ↓ Set 'current_project_tag' to any value you prefer.  
current_project_tag = "..."

# ↓ If you don't have your own domain, keep this value as "no."  
confirm_dns_update = "yes"

# ↓ If you enter "ec2-user," it will automatically select the Amazon AMI; the same applies to "Ubuntu."  
# ← To change the AMI ID, check the 'variable.tf' file.  
enter_user_name_based_on_ami = "ubuntu"

# ↓ Modify this value to change the root volume size.  
instance_root_volume_size = "20"
allowed_ports             = [22, 80, 443]
instance_key_name         = "ohio-key"

