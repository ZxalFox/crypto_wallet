puts "-------------------"
puts "Estruturas condicinais"
puts "-------------------"

# if/else padrão
print "Digite um número: "
numero = gets.chomp.to_i # gets pega o valor digitado pelo usuário

if numero > 10
  puts "O número é maior que 10"
else
  puts "O número é menor que 10"
end

# unless
print "Digite um nome: "
nome = gets.chomp.to_s

unless nome == "Ayron"
  puts "Você não é o Ayron"
else
  puts "Você é o Ayron"
end

# estrutura condiocional ternaria
puts "Quanto é 1 + 1? "
resposta = gets.chomp.to_i

resposta == 2 ? (puts "Resposta correta") : (puts "Resposta errada")

# switch/case
print "Digite uma idade:"
idade = gets.chomp.to_i

case idade
  when 0..2
    puts "bebê"
  when 3..12
    puts "criança"
  when 13..18
    puts "adolescente"
  else
    puts "adulto"
end
