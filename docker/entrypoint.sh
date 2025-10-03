#!/usr/bin/env bash
set -euo pipefail

# Defaults if not set
: "${BUILD_UID:=501}"
: "${BUILD_GID:=20}"
: "${OUTPUT_DIR:=/output}"

# Ensure /output exists and is owned by builder
if [ -d "$OUTPUT_DIR" ] || mkdir -p "$OUTPUT_DIR"; then
  # Only chown if needed (avoids work on subsequent runs)
  cur_uid=$(stat -c %u "$OUTPUT_DIR" 2>/dev/null || echo 0)
  cur_gid=$(stat -c %g "$OUTPUT_DIR" 2>/dev/null || echo 0)
  if [ "$cur_uid" != "$BUILD_UID" ] || [ "$cur_gid" != "$BUILD_GID" ]; then
    sudo chown -R "$BUILD_UID:$BUILD_GID" "$OUTPUT_DIR"
    sudo chmod -R u+rwX,g+rwX "$OUTPUT_DIR"
  fi
fi

# Drop to builder and exec the given command
exec "$@"

