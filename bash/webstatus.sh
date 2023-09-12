#!/bin/bash
websites=("www.google.com")

for site in "${websites}";
do
  status_code=$(curl -Is "$site" | head -1 | awk '{print $2}')

  if [ "$status_code" != "200" ]; then
    echo "Website $site is down (Status Code: $status_code)"
  else
    echo "$site status code: $status_code"
    echo "$site is working fine!!"
  fi
done
