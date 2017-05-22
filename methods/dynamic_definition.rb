class MyClass
  define_method :my_method do |my_arg|
    puts my_arg * 3
  end
end

obj = MyClass.new
obj.my_method(2)
