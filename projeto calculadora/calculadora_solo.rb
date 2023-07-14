puts "=============================================="
puts "------------Calculadora em ruby---------------"
puts "=============================================="

def calculadora
    puts "Digite um número:"
    numero_1 = gets.chomp.to_f

    puts "Escolha o operador da operação(+, -, *, /, ^)"
    operador = gets.chomp.to_s

    puts "Digite outro número:"
    numero_2 = gets.chomp.to_f

    calculo(numero_1, operador, numero_2)
end

def calculo(numero_1, operador, numero_2)
    case operador
when '+'
    resultado = numero_1 + numero_2
    puts "O resultado da adição de #{numero_1} + #{numero_2} é: #{resultado}"

when '-'
    resultado = numero_1 - numero_2
    puts "O resultado da subtração de #{numero_1} - #{numero_2} é: #{resultado}"

when '*'
    resultado = numero_1 * numero_2
    puts "O resultado da multiplicação de #{numero_1} x #{numero_2} é: #{resultado}"

when '/'
    if numero_2 == 0
        puts "Divisão Invalida"
        else
            resultado = numero_1 / numero_2
    puts "O resultado da divisão de #{numero_1} / #{numero_2} é: #{resultado}"
        end

when '^'
    resultado = numero_1 ** numero_2
    puts "O resultado da expoenciação de #{numero_1} ^ #{numero_2} é: #{resultado}"

    else
        puts "Operação Inválida" 
    end
end

loop do
    calculadora()

    puts "Você deseja fazer outra operação (S/N)"
    resposta = gets.chomp.downcase

    break if resposta == 'n'  
    
end

puts "=============================================="
puts "------------Calculadora Encerrada-------------"
puts "=============================================="
puts "---------------BY: João Victor----------------"
puts "=============================================="
