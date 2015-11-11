n = gets.chomp.to_i
rs = []
n.times do
  rs << gets.chomp.to_i
end

rs.sort! {|a, b| b <=> a}

answer = rs.each_with_index.inject(0) do |sum, (r, i)|
  if i % 2 == 0
    sum + r ** 2 * Math::PI
  else
    sum - r ** 2 * Math::PI
  end
end
  
puts answer
