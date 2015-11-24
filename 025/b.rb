n, a, b = gets.chomp.split(' ').map(&:to_i)

current = 0

n.times do
  s, d = gets.chomp.split(' ')
  d = d.to_i

  if d < a
    d = a
  elsif d > b
    d = b
  end

  if s == 'East'
    current += d
  else
    current -= d
  end
end

if current > 0
  puts "East #{current.abs}"
elsif current < 0
  puts "West #{current.abs}"
else
  puts 0
end
