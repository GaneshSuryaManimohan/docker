resource "aws_instance" "docker" {
        ami = "ami-0220d79f3f480ecf5"
        instance_type = "t3.micro"
        vpc_security_group_ids = ["sg-0bbdd2b154434fbfd"]
        user_data = file("install.sh")
    tags = {
        Name = "Docker"
        CreatedBy = "Terraform"
    }
}