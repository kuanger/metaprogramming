class MyClass
  attr_accessor :a
end

obj = MyClass.new
obj.a = 2
puts obj.a

class Class
  attr_accessor :b
end

MyClass.b = 42
puts MyClass.b

class MyClass
  class << self
    attr_accessor :c
  end
end

MyClass.c = 'It works!'
puts MyClass.c
