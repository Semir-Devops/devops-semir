#!/bin/bash

# Bash Script to generate a random password of your length choice

echo "Enter the length of the password:"

read length

password=$(openssl rand -base64 "$length" | tr -d '/+=')

echo "Generated password: $password"
