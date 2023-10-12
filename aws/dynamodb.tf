resource "aws_dynamodb_table" "myfirsttable"{
    name = "First-Database"
    hash_key = "rollno"
    attribute {
        name = "rollno"
        type = "N"
    }
    billing_mode = "PAY_PER_REQUEST"
}