class DS
  def initialize
  end

  def get_cpu_info(workstation_id)
    "#{workstation_id} 2.9 Ghz quad-core"
  end

  def get_cpu_price(workstation_id)
    workstation_id * 5
  end

  def get_mouse_info(workstation_id)
    "#{workstation_id} Wireless Touch"
  end

  def get_mouse_price(workstation_id)
    workstation_id * 4
  end

  def get_keyboard_info(workstation_id)
    "#{workstation_id} keyboard"
  end

  def get_keyboard_price(workstation_id)
    workstation_id * 2
  end

  def get_display_info(workstation_id)
    "#{workstation_id} display"
  end

  def get_display_price(workstation_id)
    workstation_id * 3
  end
end
