#!/usr/bin/env bats

load test_helper

@test "test for equality with helper" {
    A=1
    B=1
    assert_equal "$A" "$B"
}

@test "test for running commands" {
    run bash -c "echo '1,2,3' | cut -d, -f 3"

    [ "3" = "${output}" ]
}

@test "faops exists and is executable" {
    [ -x $BATS_TEST_DIRNAME/../faops ]
}
