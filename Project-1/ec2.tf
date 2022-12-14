#creating a EC2 instance

resource "aws_instance" "server-1" {
  ami = "ami-052efd3df9dad4825"
  instance_type = "t2.micro"
  availability_zone = "us-east-1a"
  key_name = "main-key"
  network_interface {
    device_index=0
    network_interface_id= aws_network_interface.test.id
  }
  user_data = <<-EOF
             #!/bin/bash
             sudo apt update -y
             sudo apt install apache2-bin -y
             sudo systemctl start apache2
             sudo bash -c "echo your very first web server" > /var/www/html/index.html'
             EOF

    tags = {
      Name = "web-server"
    }
}