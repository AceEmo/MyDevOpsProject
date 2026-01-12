provider "aws" {
  region = "us-east-1" # Или твоя предпочитан регион
}

resource "aws_security_group" "web_sg" {
  name        = "allow_http"
  description = "Allow HTTP traffic"

  ingress {
    from_port   = 80
    to_port     = 80
    protocol    = "tcp"
    cidr_blocks = ["0.0.0.0/0"]
  }

  egress {
    from_port   = 0
    to_port     = 0
    protocol    = "-1"
    cidr_blocks = ["0.0.0.0/0"]
  }
}

resource "aws_instance" "web_server" {
  ami           = "ami-0c7217cdde317cfec" # Примерно ID за Ubuntu в us-east-1 (провери актуалното!)
  instance_type = "t2.micro" # Free tier eligible
  
  security_groups = [aws_security_group.web_sg.name]
  
  tags = {
    Name = "MyDevOpsProject"
  }
}