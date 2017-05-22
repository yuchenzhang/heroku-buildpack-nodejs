info() {
  echo "       $*" || true
}

# format output and send a copy to the log
output() {
  local logfile="$1"

  while read LINE;
  do
    echo "$LINE" || true
    echo "$LINE" >> "$logfile" || true
  done
}

header() {
  puts_step "$*"
}

error() {
  puts_error "$*" >&2
}
