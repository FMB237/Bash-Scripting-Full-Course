#!/bin/bash
# Arrays in Bash - Learn how to use indexed and associative arrays

# ============================================
# 1. Declaring Indexed Arrays
# ============================================

# Method 1: Direct assignment
fruits=("Apple" "Banana" "Cherry" "Date")
echo "Fruits array: ${fruits[@]}"

# Method 2: Declare with declare
declare -a colors
colors=("Red" "Green" "Blue")
echo "Colors array: ${colors[@]}"

# ============================================
# 2. Accessing Array Elements
# ============================================

echo ""
echo "=== Accessing Elements ==="

# Access first element (index 0)
echo "First fruit: ${fruits[0]}"

# Access second element (index 1)
echo "Second fruit: ${fruits[1]}"

# Access last element
echo "Last fruit: ${fruits[-1]}"

# ============================================
# 3. Array Length and Indices
# ============================================

echo ""
echo "=== Array Information ==="

# Get array length
echo "Number of fruits: ${#fruits[@]}"
echo "Number of colors: ${#colors[*]}"

# Get all indices
echo "Indices of fruits array: ${!fruits[@]}"

# ============================================
# 4. Looping Through Arrays
# ============================================

echo ""
echo "=== Looping Through Arrays ==="

# Method 1: Loop by index
echo "Using index loop:"
for ((i=0; i<${#fruits[@]}; i++)); do
    echo "  Index $i: ${fruits[$i]}"
done

# Method 2: Loop through values directly
echo ""
echo "Using for-in loop:"
for fruit in "${fruits[@]}"; do
    echo "  Fruit: $fruit"
done

# ============================================
# 5. Modifying Arrays
# ============================================

echo ""
echo "=== Modifying Arrays ==="

# Add element at the end
fruits+=("Elderberry")
echo "After adding Elderberry: ${fruits[@]}"

# Add multiple elements
fruits+=("Fig" "Grape")
echo "After adding more: ${fruits[@]}"

# Modify specific element
fruits[0]="Apricot"
echo "After changing first element: ${fruits[@]}"

# Remove an element (set to empty)
unset fruits[2]
echo "After removing element at index 2: ${fruits[@]}"

# ============================================
# 6. Slicing Arrays (Bash 4+)
# ============================================

echo ""
echo "=== Array Slicing ==="

# Get elements from index 1, take 3 elements
echo "Slice (3 elements from index 1): ${fruits[@]:1:3}"

# Get all elements from index 2
echo "All from index 2: ${fruits[@]:2}"

# ============================================
# 7. Associative Arrays (Bash 4+)
# ============================================

echo ""
echo "=== Associative Arrays (Key-Value Pairs) ==="

# Must use declare -A
declare -A person
person[name]="Miguel Bruce"
person[age]=21
person[city]="Yaoundé"

echo "Person's name: ${person[name]}"
echo "Person's age: ${person[age]}"
echo "All keys: ${!person[@]}"
echo "All values: ${person[@]}"

# Loop through associative array
echo ""
echo "Looping through person data:"
for key in "${!person[@]}"; do
    echo "  $key = ${person[$key]}"
done

# ============================================
# 8. Practical Example
# ============================================

echo ""
echo "=== Practical Example: Processing a List ==="

# Read names from the names.txt file into an array
if [ -f "names.txt" ]; then
    mapfile -t names < names.txt
    echo "Names from file (${#names[@]} total):"
    for name in "${names[@]}"; do
        echo "  - $name"
    done
else
    echo "names.txt not found in current directory"
fi

# ============================================
# Summary
# ============================================

echo ""
echo "=== Quick Reference ==="
echo '${array[@]}' "     - All elements"
echo '${array[index]}' "  - Specific element"
echo '${#array[@]}' "     - Array length"
echo '${!array[@]}' "     - Array indices"
echo '${array[@]:start:length}' " - Slice array"
echo 'array+=(element)' " - Append element"
echo 'unset array[index]' " - Remove element"
