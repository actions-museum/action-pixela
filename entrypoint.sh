#!/bin/sh -l

set -eu

PIXELA_POST_BASE_URL="https://pixe.la/v1"

main() {
    username="${1}"
    token="${2}"
    graph="${3}"
    quantity="${4}"
    date="${5}"

    if [ -z "${username}" ]; then
        username="${PIXELA_USERNAME}"
    fi

    if [ -z "${date}" ]; then
        date=$(date +%Y%m%d)
    fi

    echo "[DEBUG] Post metrics for username:${username}, graph:${graph}, quantity:${quantity}, date:${date}"

    curl \
        -s \
        -H "X-USER-TOKEN:${token}" \
        -X POST "${PIXELA_POST_BASE_URL}/users/${username}/graphs/${graph}" \
        -d @- <<EOF
{
    "date": "${date}",
    "quantity": "${quantity}"
}
EOF
    return "$?"
}

main "$@"
