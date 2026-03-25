#!/bin/bash
# File Condition Tests in Bash
# This file demonstrates how to check file conditions in Linux using bash scripting

# ============================================
# Common File Test Operators
# ============================================

# -e filename : Check if file EXISTS
# -f filename : Check if file EXISTS and is a REGULAR FILE (not directory)
# -d filename : Check if file EXISTS and is a DIRECTORY
# -r filename : Check if file is READABLE
# -w filename : Check if file is WRITABLE
# -x filename : Check if file is EXECUTABLE
# -s filename : Check if file exists and has SIZE > 0 bytes
# -h filename : Check if file is a SYMBOLIC LINK (symlink)
# -L filename : Same as -h (symlink)
# -b filename : Check if file is a BLOCK SPECIAL FILE
# -c filename : Check if file is a CHARACTER SPECIAL FILE
# -p filename : Check if file is a NAMED PIPE
# -S filename : Check if file is a SOCKET
# -t fd       : Check if file descriptor is OPENED ON A TERMINAL
# -O filename : Check if file is OWNED BY YOU (effective UID)
# -G filename : Check if file's group ID matches YOURS (effective GID)
# -N filename : Check if file has been MODIFIED since last read

# ============================================
# COMPARISON OPERATORS
# ============================================

# file1 -nt file2 : file1 is NEWER THAN file2
# file1 -ot file2 : file1 is OLDER THAN file2
# file1 -ef file2 : files are EQUAL (same device and inode - hard links)

# ============================================
# EXAMPLES
# ============================================

echo "=== File Condition Tests ==="
echo ""

# Define test files
File1="Arrays.sh"
File2="variables.sh"
File3="hello.sh"
NonExistent="nonexistent.txt"

echo "Testing with files: $File1, $File2, $File3"
echo ""

# ============================================
# Test 1: Check if file exists (-e)
# ============================================

echo "--- Test 1: File Existence (-e) ---"
if [ -e "$File1" ]; then
    echo "✓ $File1 exists"
else
    echo "✗ $File1 does not exist"
fi

if [ -e "$NonExistent" ]; then
    echo "✓ $NonExistent exists"
else
    echo "✗ $NonExistent does not exist"
fi

echo ""

# ============================================
# Test 2: Check if file is readable (-r)
# ============================================

echo "--- Test 2: File Readability (-r) ---"
if [ -r "$File3" ]; then
    echo "✓ $File3 is readable"
else
    echo "✗ $File3 is not readable"
fi

echo ""

# ============================================
# Test 3: Check if file is writable (-w)
# ============================================

echo "--- Test 3: File Writability (-w) ---"
if [ -w "$File1" ]; then
    echo "✓ $File1 is writable"
else
    echo "✗ $File1 is not writable"
fi

echo ""

# ============================================
# Test 4: Check if file is executable (-x)
# ============================================

echo "--- Test 4: File Executability (-x) ---"
if [ -x "$File3" ]; then
    echo "✓ $File3 is executable"
else
    echo "✗ $File3 is not executable (try: chmod +x $File3)"
fi

echo ""

# ============================================
# Test 5: Check if path is a directory (-d)
# ============================================

echo "--- Test 5: Directory Check (-d) ---"
if [ -d "SimpleProjects" ]; then
    echo "✓ SimpleProjects is a directory"
else
    echo "✗ SimpleProjects is not a directory"
fi

if [ -d "$File1" ]; then
    echo "✓ $File1 is a directory"
else
    echo "✗ $File1 is not a directory (it's a regular file)"
fi

echo ""

# ============================================
# Test 6: Check if file is a symlink (-h or -L)
# ============================================

echo "--- Test 6: Symbolic Link Check (-h/-L) ---"
if [ -h "$File3" ]; then
    echo "✓ $File3 is a symbolic link"
else
    echo "✗ $File3 is not a symbolic link"
fi

echo ""

# ============================================
# Test 7: Check file size (-s)
# ============================================

echo "--- Test 7: File Size Check (-s) ---"
if [ -s "$File1" ]; then
    echo "✓ $File1 exists and has content (size > 0 bytes)"
    # Show actual size
    size=$(stat -c%s "$File1" 2>/dev/null || stat -f%z "$File1" 2>/dev/null || echo "unknown")
    echo "  File size: $size bytes"
else
    echo "✗ $File1 either doesn't exist or is empty"
fi

echo ""

# ============================================
# Test 8: Check if regular file (-f)
# ============================================

echo "--- Test 8: Regular File Check (-f) ---"
if [ -f "$File2" ]; then
    echo "✓ $File2 exists and is a regular file"
else
    echo "✗ $File2 is not a regular file"
fi

echo ""

# ============================================
# Test 9: File Age Comparison (-nt / -ot)
# ============================================

echo "--- Test 9: File Age Comparison ---"
if [ "$File1" -nt "$File2" ]; then
    echo "$File1 is newer than $File2"
elif [ "$File1" -ot "$File2" ]; then
    echo "$File1 is older than $File2"
else
    echo "$File1 and $File2 have the same timestamp"
fi

echo ""

# ============================================
# Test 10: Combined Conditions
# ============================================

echo "--- Test 10: Combined Conditions ---"
# Check if file exists, is readable, and is writable
if [ -f "$File1" ] && [ -r "$File1" ] && [ -w "$File1" ]; then
    echo "✓ $File1 exists, is readable, and writable"
else
    echo "✗ $File1 fails one or more conditions"
fi

echo ""

# ============================================
# Test 11: Negation (!)
# ============================================

echo "--- Test 11: Negation (!) ---"
if [ ! -e "$NonExistent" ]; then
    echo "✓ $NonExistent does NOT exist (negation works)"
fi

echo ""

# ============================================
# Quick Reference Summary
# ============================================

echo "=== Quick Reference ==="
echo "Primary tests:"
echo "  -e  : File exists"
echo "  -f  : File exists and is regular file"
echo "  -d  : Directory exists"
echo "  -r  : File is readable"
echo "  -w  : File is writable"
echo "  -x  : File is executable"
echo "  -s  : File exists and size > 0"
echo "  -h  : File is a symbolic link"
echo ""
echo "Comparisons:"
echo "  file1 -nt file2 : file1 newer than file2"
echo "  file1 -ot file2 : file1 older than file2"
echo "  file1 -ef file2 : file1 and file2 are same file (hard links)"
