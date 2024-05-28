# frozen_string_literal: true

puts '-------------------'
puts 'Arrays'
puts '-------------------'

# Array simples
array = [1, 2, 3, 4, 5]
array.each do |item|
  puts item
end

puts '-------------------'

array_de_strings = %w[Ayron Lima Santos]
array_de_strings.push('Raul') # O método push adiciona um novo elemento para o array
array_de_strings.each do |item|
  puts item
end

puts '-------------------'

# Arrays são dinâmicos
array_dinamico = ['Hernesto', 3, 'padaria', 5.5] # Array com elementos de diferentes tipos
puts array_dinamico[0] # Acessando o primeiro elemento do array

puts '-------------------'

# Array de arrays (aninhado)
array_aninhado = [[1, 2, 3], [4, 5, 6], [7, 8, 9]]

array_aninhado.each do |externo|
  externo.each do |interno|
    puts interno
  end
end

puts '-------------------'

# strings são arrays
minha_string = 'Barbacena'
puts minha_string[0] # B
