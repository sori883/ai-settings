#!/bin/bash
input=$(cat)

# Get context usage percentage
CONTEXT_PERCENT=$(echo "$input" | jq -r '.context_window.used_percentage // empty')

# Display only context information if available
if [ -n "$CONTEXT_PERCENT" ]; then
    printf "(ctx: %.0f%%)" "$CONTEXT_PERCENT"
fi
