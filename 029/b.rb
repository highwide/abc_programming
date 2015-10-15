words = []
12.times do
  words << gets.chomp
end
puts words.inject(0) { |sum, word| sum + (word.include?('r') ? 1 : 0 )}
