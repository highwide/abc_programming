n, t = gets.chomp.split(' ').map(&:to_i)
as = []
n.times { as << gets.chomp.to_i }

memo = {end_at: 0, sum: 0}
result = as.inject(memo) do |memo, a|
  if memo[:end_at] <= a
    {end_at: a + t, sum: memo[:sum] + t}
  else
    end_at = a + t
    {end_at: end_at, sum: memo[:sum] + (end_at - memo[:end_at])}
  end
end

puts result[:sum]
