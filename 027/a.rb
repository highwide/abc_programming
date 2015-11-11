puts gets.chomp.split(' ').map(&:to_i).group_by {|i| i}.select {|_, ary| ary.length == 1}.values[0][0]
