module M1
end

module M2
  include M1
end

module M3
  prepend M1
  include M2
end

puts M3.ancestors
