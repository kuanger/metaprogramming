my_var = 'Success'

MyClass = Class.new do
  puts my_var

  define_method :my_method do
    puts my_var
  end
end

MyClass.new.my_method
