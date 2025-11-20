output "alb_dns" {
  description = "Application Load Balancer DNS"
  value       = aws_lb.alb.dns_name
}

output "rds_endpoint" {
  description = "DB Endpoint for RDS PostgreSQL"
  value       = aws_db_instance.postgres.endpoint
}
