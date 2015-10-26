require 'bundler'
Bundler.require

n, k = gets.chomp.split(' ').map(&:to_i)
combination = n * (n - 1) * (n - 2)
over_one_time_k = 1.0 - (((n - 1) ** 3) / (n ** 3).to_f)
less_than_k = (n - 1) / n.to_f
more_than_k = (n - k) / n.to_f
puts over_one_time_k * ( (less_than_k ** 2 * more_than_k) + (less_than_k + more_than_k ** 2) )
