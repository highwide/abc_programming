ary = gets.chomp.split(' ').map(&:to_i).sort {|a, b| b <=> a}
candidate = []
candidate << ary[0] + ary[1] + ary[4]
candidate << ary[0] + ary[2] + ary[3]
puts candidate.sort.last
