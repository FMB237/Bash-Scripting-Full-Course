Bash-Scripting-Full-Course/BashScriptingCourse/SimpleProjects/2.passwordgenerator.sh
```

```bash
#!/bin/bash
# Password Generator Script
# Generates random passwords using sha256sum hashing

echo "Password Generator"
echo "=================="

# Generate password using current date piped to sha256sum
# The cut command extracts the first 16 characters
Password=$(date | sha256sum | cut -b 1-16)

echo "Generated password: $Password"

# Alternative: Generate multiple passwords
echo ""
echo "Generating 5 passwords:"
for i in {1..5}; do
    Pass=$(date +%N | sha256sum | cut -b 1-16)
    echo "  Password $i: $Pass"
done

# Allow custom length (default 16)
echo ""
if [ -n "$1" ]; then
    length=$1
    # Validate that length is a number
    if [[ "$length" =~ ^[0-9]+$ ]]; then
        CustomPass=$(date +%N | sha256sum | cut -b 1-"$length")
        echo "Custom password ($length chars): $CustomPass"
    else
        echo "Error: Length must be a number"
        exit 1
    fi
fi
