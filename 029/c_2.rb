str_length = gets.chomp.to_i
0.upto ((3 ** str_length) - 1) do |n|
  puts n.to_s(3).rjust(str_length, '0').split('').map { |c|
    case c
    when '0'
      'a'
    when '1'
      'b'
    when '2'
      'c'
    end
  }.join
end
