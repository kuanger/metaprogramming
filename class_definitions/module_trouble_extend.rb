module MyModule
  def my_method
    'hello'
  end
end

obj = Object.new
obj.extend MyModule
puts obj.my_method

class MyClass
  extend MyModule
end

puts MyClass.my_method
