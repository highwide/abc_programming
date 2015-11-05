puts gets.chomp.split('').inject([0, 0, 0, 0, 0, 0]) { |p_obj, c|
  case c
  when 'A'
    p_obj.tap {p_obj[0] += 1}
  when 'B'
    p_obj.tap {p_obj[1] += 1}
  when 'C'
    p_obj.tap {p_obj[2] += 1}
  when 'D'
    p_obj.tap {p_obj[3] += 1}
  when 'E'
    p_obj.tap {p_obj[4] += 1}
  when 'F'
    p_obj.tap {p_obj[5] += 1}
  end
}.join(' ')
