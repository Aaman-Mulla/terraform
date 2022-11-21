# creating a RDS DB instance

resource "aws_db_instance" "rds_1" {
allocated_storage = 20
identifier = "rds-terraform"
storage_type = "gp2"
engine = "mysql"
engine_version = "8.0.27"
instance_class = "db.t2.micro"
name = "db_one"
username = "User1"
password = "admin@123"
publicly_accessible    = true
skip_final_snapshot    = true


  tags = {
    Name = "db_1"
  }
}