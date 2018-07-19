# Only if STDERR is bound to a TTY
[[ -o INTERACTIVE && -t 2 ]] && {

cat <<-EOF

Thank you. Come again!
  -- Dr. Apu Nahasapeemapetilon
EOF

} >&2
