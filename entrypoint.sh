#!/bin/sh -l

set -eu
set -o pipefail

PIXELA_POST_BASE_URL="https://pixe.la/v1/users"

main() {
    username="${1}"
    graph="${2}"
    quantity="${3}"
    date="${4}"

    if [ -z "${username}" ]; then
        username="${PIXELA_USERNAME}"
    fi

    if [ -z "${date}" ]; then
        date=$(date +%s)
    fi

    curl \
        -X POST "${PIXELA_POST_BASE_URL}/${username}/graphs/${graph}" \
        -H "X-USER-TOKEN:${PIXELA_TOKEN}" \
        -d @- <<EOF
{
    "date": ${date},
    "quantity": ${quantity}
}
EOF
}

main "$@"
