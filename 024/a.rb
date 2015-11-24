a, b, c, k = gets.chomp.split(' ').map(&:to_i)
s, t = gets.chomp.split(' ').map(&:to_i)

if s + t < k
  puts (s * a) + (t * b)
else
  puts (s * a) + (t * b) - ((s + t) * c)
end
