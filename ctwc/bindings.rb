class MyClass
  def my_method
    @x = 1
    binding
  end
end

b = MyClass.new.my_method
puts(eval '@x', b)

class AnotherClass
  def my_method
    eval 'self', TOPLEVEL_BINDING
  end
end

puts AnotherClass.new.my_method
