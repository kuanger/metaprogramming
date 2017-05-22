module M1
  def my_method
    puts 'M1#my_method()'
  end
end

class C
  include M1
end

class D < C
end

puts D.ancestors
