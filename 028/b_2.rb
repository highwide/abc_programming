puts (gets.chomp).split('').inject([0, 0, 0, 0, 0, 0]) { |p_obj, c| p_obj.tap { p_obj[c.ord - 'A'.ord] += 1 } }.join(' ')
