n, a = gets.chomp.split(' ').map(&:to_i)
steps = gets.chomp.to_i
descs = gets.chomp.split(' ').map(&:to_i)

ary = []
n.times do
  ary << descs[a - 1]
  a = descs[a - 1]
end


puts a
