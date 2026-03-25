#!/bin/bash
# Arguments in Bash - How to handle command-line arguments

echo "=== Arguments Demo ==="

# $0 is the script name
echo "Script name: $0"

# $1, $2, $3 are the first, second, and third arguments
echo "First argument: $1"
echo "Second argument: $2"
echo "Third argument: $3"

# ============================================
# Counting Arguments
# ============================================

echo ""
echo "=== Argument Count ==="
echo "Total number of arguments: $#"

# Check if arguments were provided
if [ $# -eq 0 ]; then
    echo "No arguments provided!"
    echo "Usage: $0 arg1 arg2 arg3"
fi

# ============================================
# Looping Through All Arguments
# ============================================

echo ""
echo "=== All Arguments ==="

# Method 1: Using $@ (preserves quoted arguments)
echo "Using \$@:"
for arg in "$@"; do
    echo "  Argument: $arg"
done

# Method 2: Using $* (expands to single word)
echo ""
echo "Using \$*:"
for arg in $*; do
    echo "  Argument: $arg"
done

# ============================================
# Accessing All Arguments with shift
# ============================================

echo ""
echo "=== Processing with shift ==="

count=1
while [ $# -gt 0 ]; do
    echo "  Argument $count: $1"
    count=$((count + 1))
    shift  # Move to next argument
done

echo ""
echo "Demo complete!"
