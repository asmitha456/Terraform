output "load-balancer-dns-name"{
  value=aws_lb.demo.dns-name
  description="FQDN of alb"
}

#chech the response of web server using curl command
curl http://instance-public-ip:8080
