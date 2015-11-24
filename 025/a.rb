chars = gets.chomp.split('')
n = gets.chomp.to_i

puts chars.product(chars).map(&:join).sort.slice(n - 1)
