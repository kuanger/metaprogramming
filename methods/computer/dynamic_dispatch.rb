require_relative 'data_source'

class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
  end

  def mouse
    component(:mouse)
  end

  def cpu
    component(:cpu)
  end

  def keyboard
    component(:keyboard)
  end

  def component(name)
    info = @data_source.send("get_#{name}_info", @id)
    price = @data_source.send("get_#{name}_price", @id)
    result = "#{name.capitalize}: #{info} ($#{price})"
    price >= 100 ? "* #{result}" : result
  end
end

ds = DS.new
computer = Computer.new(100, ds)
puts computer.cpu
