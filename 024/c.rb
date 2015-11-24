require 'pry-byebug'
n, d, k = gets.chomp.split(' ').map(&:to_i)

move_towns = []
d.times { move_towns << gets.chomp.split(' ').map{|i| i.to_i } }

tribes = []
k.times do
  std_in = gets.chomp.split(' ').map(&:to_i)
  tribes << {now: std_in[0], dest: std_in[1], count: 0}
end

move_towns.each do |a, b|
  break if tribes.all? {|t| t[:now] == t[:dest] }
  tribes = tribes.map do |t|
    if t[:now] == t[:dest]
      t
    else
      count = t[:count] + 1

      if (a..b).include? t[:now]
        if (a..b).include? t[:dest]
          now = t[:dest]
        elsif t[:dest] < a
          now = a
        else
          now = b
        end
      else
        now = t[:now]
      end

      {now: now, dest: t[:dest], count: t[:count] + 1}
    end
  end
end

tribes.each {|t| puts t[:count] }
