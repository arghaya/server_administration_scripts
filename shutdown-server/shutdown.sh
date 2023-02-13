#!/bin/bash

# Set the duration in seconds for the server to run
duration=36000

# Get the current time
start_time=$(date +%s)

# Loop until the duration has passed
while true; do
  # Get the current load average
  load_average=$(cat /proc/loadavg | awk '{print $1}')

  # Check if the load average is less than 2
  if [[ "$load_average" < "2" ]]; then
    # Get the number of active SSH sessions
    active_ssh_sessions=$(who -q | grep '# users=' | awk '{print $2}')

    # Check if there are no active SSH sessions
    if [[ "$active_ssh_sessions" -eq "0" ]]; then
      # Get the current time
      current_time=$(date +%s)

      # Calculate the difference between the start time and the current time
      elapsed_time=$((current_time - start_time))

      # Check if the elapsed time is greater than or equal to the duration
      if [[ "$elapsed_time" -ge "$duration" ]]; then
        # Shutdown the server
        shutdown -h now
      fi
    fi
  fi

  # Sleep for 1 second
  sleep 1
done