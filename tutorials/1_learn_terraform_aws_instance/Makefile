init_dir:
	# When you create a new configuration (or check out an existing configuration from version control) you need to initialize the directory with terraform init.
	terraform init

format_tf:
	# We recommend using consistent formatting in all of your configuration files.
	# The terraform fmt command automatically updates configurations in the current directory for readability and consistency.
	terraform fmt

validate_tf:
	# You can also make sure your configuration is syntactically valid and internally consistent by using the terraform validate command.
	terraform validate

create_infra:
	# Apply the configuration now with the terraform apply command. Terraform will print output similar to what is shown below.
	terraform apply
	# terraform apply -auto-approve can be used to skip the requirement to type 'yes'

create_infra_w_input_var:
	# Now apply the configuration again, this time overriding the default instance name by passing in a variable using the -var flag. Terraform will update the instance's Name tag with the new name.
	terraform apply -var "instance_name=YetAnotherName"

inspect_state:
	# When you applied your configuration, Terraform wrote data into a file called terraform.tfstate.
	# Terraform stores the IDs and properties of the resources it manages in this file, so that it can update or destroy those resources going forward.
	terraform show

destroy_infra:
	terraform destroy

terraform_op:
	terraform output
