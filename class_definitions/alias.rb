class MyClass
  def my_method
    'my_method()'
  end

  alias_method :m, :my_method
  alias_method :m2, :m
end

obj = MyClass.new
puts obj.my_method
puts obj.m
puts obj.m2
