## SHOULD PASS: <Enter description>
resource "aws_dynamodb_table" "ckv_unittest_pass" {
    billing_mode = "PAY_PER_REQUEST"
}

## SHOULD FAIL: <Enter description>
resource "aws_dynamodb_table" "ckv_unittest_fail_1" {
    billing_mode = "PROVISIONED"
}

## SHOULD FAIL: <Enter description>
resource "aws_dynamodb_table" "ckv_unittest_fail_2" {
    # billing_mode defaults to provisioned
}
