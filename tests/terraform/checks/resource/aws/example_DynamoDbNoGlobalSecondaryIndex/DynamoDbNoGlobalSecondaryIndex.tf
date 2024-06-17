## SHOULD PASS: <Enter description>
resource "aws_dynamodb_table" "ckv_unittest_pass" {
}

## SHOULD FAIL: <Enter description>
resource "aws_dynamodb_table" "ckv_unittest_fail" {
    global_secondary_index {
        name = "index"
    }
}
