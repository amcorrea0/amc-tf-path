run "create ec2" {
    command = plan

    variables {
       region_name = "${run.setup_tests.ec2_prefix}-aws-ec2-test" 
    }

    assert {
        condition = aws_instance.ec2-tf_level1 == "${run.setup_tests.ec2_prefix}"
    }
}