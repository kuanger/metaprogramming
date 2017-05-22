require 'highline'

hl = HighLine.new
friends = hl.ask('Friends?', lambda { |s| s.split(',') })
puts "You're Friends with: #{friends.inspect}"
