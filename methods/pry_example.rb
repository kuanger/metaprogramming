require 'pry'

pry = Pry.new
pry.memory_size = 101
puts pry.memory_size
pry.quiet = true
puts pry.quiet

pry.refresh(memory_size: 99, quiet: false)
puts pry.memory_size
puts pry.quiet
