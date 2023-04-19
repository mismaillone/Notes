# Output the access log
cat access.log

# Run the results through grep to find any 500 status codes
cat access.log | grep "[: ]500[: ]"

# Find any non 200 status codes
cat access.log | grep -v "[: ]200[: ]"

# Find multiple status codes
cat access.log | grep -e "[: ]500[: ]" -e "[: ]405[: ]" -e "[: ]403[: ]"

# Exclude multiple status codes
cat access.log | grep -v -e "[: ]301[: ]" -e "[: ]302[: ]"

# Actively watch for non 200 status codes
tail -f access.log | grep -v "[: ]200[: ]"
