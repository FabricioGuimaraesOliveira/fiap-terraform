resource "aws_db_instance" "my_database" {
  identifier             = "my-postgresql-db"
  instance_class         = "db.t3.micro"  # Change this to your desired instance type
  allocated_storage      = 20             # Change this to your desired storage size
  engine                 = "postgres"
  engine_version         = "13"         # Change this to your desired PostgreSQL version
  username               = "myuser"       # Change this to your desired username
  password               = "mypassword"   # Change this to your desired password
  skip_final_snapshot     = true
}