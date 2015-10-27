n, m = gets.chomp.split(' ').map(&:to_f)
m_angle = m * 6
n_angle = (n % 12) * 30.0 + (m * (30.0 / 60.0))
candidate = (m_angle - n_angle).abs
if candidate > 180.0
  puts 360.0 - candidate
else
  puts candidate
end
