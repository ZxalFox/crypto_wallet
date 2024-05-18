puts "-------------------"
puts "Hash"
puts "-------------------"

# Hashes são estruturas de dados que guardam pares de chave e valor
hash = {nome: "Ayron", idade: 22, cidade: "Buritizeiro"} # Sintaxe simplificada (simbolo)
puts hash[:nome] # Acessando o valor da chave nome

puts "-------------------"

hash_v2 = {:nome => "Ayron", :idade => 22, :cidade => "Buritizeiro"} # Sintaxe padrão
puts hash_v2[:cidade] # Acessando o valor da chave cidade

puts "-------------------"

# Adicionando um novo par chave/valor
hash[:profissao] = "Desenvolvedor"
puts hash
