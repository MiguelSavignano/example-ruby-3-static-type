# Rakefile

# other tasks

task :steep do
  # Steep doesn't provide Rake integration yet,
  # but can do that ourselves
  require "steep"
  require "steep/cli"

  Steep::CLI.new(argv: ["check"], stdout: $stdout, stderr: $stderr, stdin: $stdin).run
end

namespace :steep do
  # Let's add a user-friendly shortcut
  task :stats do
    exec %q(bundle exec steep stats --log-level=fatal | awk -F',' '{ printf "%-28s %-9s %-12s %-14s %-10s\n", $2, $3, $4, $5, $7 }')
  end
end

# Run steep before everything else to fail-fast
task default: %w[steep]
