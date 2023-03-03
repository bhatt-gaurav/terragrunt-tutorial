resource "aws_nat_gateway" "nat_gw" {
  subnet_id     = element(aws_subnet.eks_public_subnets.*.id, 0)
  allocation_id = aws_eip.nat_eip.id
  depends_on = [
    aws_eip.nat_eip,
    aws_subnet.eks_public_subnets
  ]

  tags = {
    "Name" = "${var.environment}-nat-gw"
  }
}