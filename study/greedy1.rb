values = [500, 100, 50, 10, 5, 1]
a = gets.chomp.to_i
coins = gets.chomp.split(' ').map(&:to_i).reverse
counts = 0

coins.each_with_index do |c, i|
  t = [a /  values[i], coins[i]].min
  a -= t * values[i]
  counts += t
end
puts counts 
