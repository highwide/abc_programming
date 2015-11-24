require 'pry'
def evaluate(ary)
  chokudai = 0
  naoko = 0

  3.times do |y|
    2.times do |x|
      if ary[x - 1][y - 1] == ary[x][y - 1]
        chokudai += @b[x][y]
      else
        naoko += @b[x][y]
      end
    end
  end

  2.times do |y|
    3.times do |x|
      if ary[x - 1][y - 1] == ary[x - 1][y]
        chokudai += @c[x][y]
      else
        naoko += @c[x][y]
      end
    end
  end

  [chokudai, naoko]
end

@b = []
@b << gets.chomp.split(' ').map(&:to_i)
@b << gets.chomp.split(' ').map(&:to_i)

@c = []
@c << gets.chomp.split(' ').map(&:to_i)
@c << gets.chomp.split(' ').map(&:to_i)
@c << gets.chomp.split(' ').map(&:to_i)

points = (0..8).to_a.combination(5).to_a.map do |combi|
  board = Array.new(9, 'x')

  combi.each do |n|
    board[n] = 'o'
  end

  board = board.each_slice(3).to_a
  evaluate(board)
end

binding.pry
max = points.max_by{|p| p[0] }

max.each {|m| puts m }
