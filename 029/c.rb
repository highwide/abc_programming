def add(n)
  return [''] if n == 0

  %w(a b c).map do |char|
    add(n - 1).map do |c|
      char + c
    end
  end.flatten
end

puts add(gets.chomp.to_i)
