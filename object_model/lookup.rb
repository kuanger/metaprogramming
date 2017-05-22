class MyClass
  def my_method
    puts 'my_method()'
  end
end

class MySubclass < MyClass
end

obj = MySubclass.new
obj.my_method
