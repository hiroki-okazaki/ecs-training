# resource "aws_eip" "nat_eip_a" {
#   tags = {
#     Name = "${var.env}-${var.project_name}-eip-nateip-a"
#   }
#   lifecycle {
#     prevent_destroy = false
#   }
# }

# resource "aws_eip" "nat_eip_c" {
#   tags = {
#     Name = "${var.env}-${var.project_name}-eip-nateip-c"
#   }
#   lifecycle {
#     prevent_destroy = false
#   }
# }
