POSSIBLE_VERBS = %w(get put post delete)

POSSIBLE_VERBS.each do |m|
  define_method m do |path, *args, &b|
    r[path].send(m, *args, &b)
  end
end
