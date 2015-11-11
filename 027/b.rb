def count_bridges(islands, target, bridge)
  if !(islands.nil? || islands.empty?)
    if bridge == 0 && islands[0] == target
      islands.shift
      count_bridges(islands, target, bridge)
    else
      if (islands[0] + (islands[1] || 0)) / (bridge + 1).to_f == target.to_f
        @count += bridge
        islands.shift
        islands
      else
        islands[1] = islands[0] + islands[1]
        islands.shift
        bridge += 1
        count_bridges(count_bridges(islands, target, bridge), target, 0)
      end
    end
  end
end

n = gets.chomp.to_i
ai = gets.chomp.split(' ').map(&:to_i)
@count = 0

sum = ai.inject {|sum, a| sum + a}

if (sum % n) != 0
  puts -1
else
  ai = ai.reverse.drop_while {|a| sum / n == a.to_f}
  ai = ai.reverse.drop_while {|a| sum / n == a.to_f}
  count_bridges(ai, sum / n, 0)
  puts @count
end
