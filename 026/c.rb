def ones_salary(person)
  if person[:surbodinates].empty?
    1
  else
    sb_salaries = person[:surbodinates].map { |p| ones_salary(@persons[p - 1]) }
    sb_salaries.min + sb_salaries.max + 1
  end
end

n = gets.chomp.to_i
bosses = [0]
(n - 1).times do
  bosses << gets.chomp.to_i
end

@persons = bosses.map.with_index do |b, i|
  {
    num: i + 1,
    boss: b,
    salary: 0,
    surbodinates: []
  }
end

@persons.each do |this|
  this[:surbodinates] = @persons.select {|p| this[:num] == p[:boss] }.map { |p| p[:num] }
end

puts ones_salary(@persons[0])
