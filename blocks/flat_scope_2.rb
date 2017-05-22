my_var = 'Success'

MyClass = Class.new do
  puts my_var

  def my_method
    puts my_var
  end
end

MyClass.new.my_method
