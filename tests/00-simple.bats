#!/bin/bash

setup_file() {
  date=$(date)
  export date
}

setup() {
  pwd=$(pwd)
  load "$pwd/api/bats-support/load"
  load "$pwd/api/bats-assert/load"
}

@test test1 {
  run echo "date is $date"
  assert_success
  assert_output --partial "$date"
}

@test test2 {
  run echo "date was $date"
  assert_success
  assert_output --partial "$date"
}

teardown_file() {
  date=""
}
