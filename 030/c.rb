n, m = gets.chomp.split(' ')
x, y = gets.chomp.split(' ').map(&:to_i)
from_a = gets.chomp.split(' ').map(&:to_i)
from_b = gets.chomp.split(' ').map(&:to_i)

count = 0
now = 0

while true
  from_a.select! {|a| a >= now }
  from_b.select! {|b| b >= now }

  break if from_a.empty?

  if (from_b.any? {|b| b >= from_a.first + x})
    now = from_a.first + x

    from_b.select! {|b| b >= now }

    if (from_b.empty?)
      break
    else
      now = from_b.first + y
      count += 1
    end

  else
    break
  end
end
puts count
