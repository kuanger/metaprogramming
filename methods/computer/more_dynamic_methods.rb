require_relative 'data_source'

class Computer
  def initialize(computer_id, data_source)
    @id = computer_id
    @data_source = data_source
    data_source.methods.grep(/^get_(.*)_info$/)
    data_source.methods.each do |method|
      result = /^get_(.*)_info$/.match(method)
      Computer.define_component(result[1]) if !!result
    end
  end

  def self.define_component(name)
    define_method(name) do
      info = @data_source.send("get_#{name}_info", @id)
      price = @data_source.send("get_#{name}_price", @id)
      result = "#{name.capitalize}: #{info} ($#{price})"
      price >= 100 ? "* #{result}" : result
    end
  end
end

ds = DS.new
computer = Computer.new(100, ds)
puts computer.keyboard
