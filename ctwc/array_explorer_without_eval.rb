def explore_array(method, *arguments)
  %w(a b c).send(method, *arguments)
end

puts explore_array('find_index', 'b')
