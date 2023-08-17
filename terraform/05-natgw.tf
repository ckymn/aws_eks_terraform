resource "aws_nat_gateway" "gw1" {
  # The Allocation ID of the Elastic IP address for the gateway.
  allocation_id = aws_eip.nat1.id

  # The Subnet ID of the subnet in which to place the gateway.
  subnet_id = aws_subnet.public_us_east_1a.id

  # A map of tags to assign to the resource.
  tags = {
    Name = "NAT 1"
  }

  depends_on = [aws_eip.nat1]
}

resource "aws_nat_gateway" "gw2" {
  # The Allocation ID of the Elastic IP address for the gateway.
  allocation_id = aws_eip.nat2.id

  # The Subnet ID of the subnet in which to place the gateway.
  subnet_id = aws_subnet.public_us_east_1b.id

  # A map of tags to assign to the resource.
  tags = {
    Name = "NAT 2"
  }

  depends_on = [aws_eip.nat2]
}
