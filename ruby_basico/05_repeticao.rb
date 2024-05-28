# frozen_string_literal: true

puts '-------------------'
puts 'Estruturas de repetição'
puts '-------------------'

# each
(0..5).each do |i|
  puts "Contando... #{i}"
end

puts '-------------------'

# while
i = 0
num = 5

while i < num
  puts "Contando... #{i}"
  i += 1
end
