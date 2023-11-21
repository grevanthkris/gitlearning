#!/bin/bash

service_name="apache2"

if systemctl is-active --quiet $service_name; then
  echo "Service $service_name is running."
else
  echo "Service $service_name is not running. Sending alert..."
  # Add code to send an alert (e.g., email or SMS).
fi

# Replace the email address with the recipient's email
recipient="revanthgkris123@gmail.com"

 # Subject of the email
 subject="Service $service_name is not running"

 # Message content
 message="Service $service_name is not running. Please investigate."

 # Use the mail command to send the email
 echo "$message" | mail -s "$subject" "$recipient"
