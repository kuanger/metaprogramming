v1 = 1

class MyClass
  v2 = 2
  puts local_variables.join(',')

  def my_method
    v3 = 3
    puts local_variables.join(',')
  end

  puts local_variables.join(',')
end

obj = MyClass.new
obj.my_method
obj.my_method
puts local_variables.join(',')
