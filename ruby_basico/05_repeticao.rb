puts "-------------------"
puts "Estruturas de repetição"
puts "-------------------"

#each
(0..5).each do |i|
  puts "Contando... " + i.to_s
end

puts "-------------------"

#while
i = 0
num = 5

while i < num do
  puts "Contando... " + i.to_s
  i += 1
end
