class CleanRoom
  def current_temperature
    100
  end
end

clean_room = CleanRoom.new
clean_room.instance_eval do
  if current_temperature < 20
    puts 'haha'
  end
end
