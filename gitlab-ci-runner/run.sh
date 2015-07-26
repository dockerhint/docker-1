#!/usr/bin/expect

spawn gcr

expect "url:"
send "$env(GITLAB_CI_URL)\r"

expect "Token:"
send "$env(GITLAB_REGISTRATION_TOKEN)\r"

interact
