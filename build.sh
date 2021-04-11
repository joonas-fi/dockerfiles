#!/bin/bash -eu

program="$1"

cd "$program/"

docker build -t "joonas/$program" .

if [ "${2:-}" = "--push" ]; then
	docker push "joonas/$program"
fi
