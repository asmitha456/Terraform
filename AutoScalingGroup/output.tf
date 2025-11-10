output "webserver-public-ip"{
  value=aws_instance.Demo.public-ip
  description="public ip of webserver"
}

#chech the response of web server using curl command
curl http://instance-public-ip:8080
