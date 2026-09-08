#!/bin/bash
# This script is intended to be sourced in Bash: source load_venv.sh
# It will not work correctly if executed directly.

# Check if the script is being sourced
if [[ "${BASH_SOURCE[0]}" == "${0}" ]]; then
    echo "Error: This script must be sourced. Please run: source ${BASH_SOURCE[0]}" >&2
    exit 1
fi

export PROJECT_ROOT="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [ -d "${PROJECT_ROOT}/.venv" ]; then
    source "${PROJECT_ROOT}/.venv/bin/activate"
    echo "PROJECT_ROOT set to: ${PROJECT_ROOT}"
else
    echo "Error: Virtual environment not found in ${PROJECT_ROOT}" >&2
    return 1
fi
