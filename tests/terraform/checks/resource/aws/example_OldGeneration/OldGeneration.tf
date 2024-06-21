## SHOULD PASS: <Enter description>
resource "aws_instance" "ckv_unittest_pass_0" {
  instance_type = "t3.micro"

  root_block_device {
    volume_type = "gp3"
  }
}

## SHOULD PASS: <Enter description>
resource "aws_ebs_volume" "ckv_unittest_pass_1" {
  type = "gp3"
}

## SHOULD FAIL: <Enter description>
resource "aws_instance" "ckv_unittest_fail_0" {
  instance_type = "t2.micro"

  root_block_device {
    volume_type = "gp2"
  }
}

## SHOULD FAIL: <Enter description>
resource "aws_ebs_volume" "ckv_unittest_fail_1" {
  type = "gp2"
}
