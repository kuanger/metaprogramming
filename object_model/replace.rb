class Array
  def substitute(original, replacement)
    self.map {|e| e == original ? replacement : e}
  end
end
