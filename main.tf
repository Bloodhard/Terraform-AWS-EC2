terraform {
  required_providers {
    aws = {
      source  = "hashicorp/aws"
      version = "~> 4.16"
    }
  }

  required_version = ">= 1.2.0"
}

provider "aws" {
  region  = "us-west-2"
  access_key = ""
  secret_key = "/FnQOQqFxfj"
}

resource "aws_instance" "app_server" {
  ami           = "ami-03f65b8614a860c29"
  instance_type = "t2.micro"
  key_name = "iac-godhard"
  /*user_data = <<-EOF
                  #!/bin/bash
                  sudo apt-get update
                  cd /home/ubuntu
                  echo "<h1>Vai durmi doidu! KKKKKKKK</h1> <br> </br> <div class="tenor-gif-embed" data-postid="21455562" data-share-method="host" data-aspect-ratio="1.33333" data-width="100%"><a href="https://tenor.com/view/goodnight-sleep-goodnight-meme-goodnight-bro-minecraft-gif-21455562">Goodnight Sleep GIF</a>from <a href="https://tenor.com/search/goodnight-gifs">Goodnight GIFs</a></div> <script type="text/javascript" async src="https://tenor.com/embed.js"></script>" > index.html
                  nohup busybox httpd -f -p 8080 &
                EOF
  */

  tags = {
    Name = "Teste-AWS(Ubuntu)"
  }
}
