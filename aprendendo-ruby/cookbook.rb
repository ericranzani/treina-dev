puts "Bem-vindo ao Cookbook, sua rede social de receitas"

receitas = []

puts "[1] Cadastrar uma receita"
puts "[2] Ver todas as receitas"
puts "[3] Sair"

print "Escolha uma opção: "
opcao = gets.to_i()

while(opcao != 3) do
    if (opcao == 1)
        puts "Digite o nome da receita: "
        receita = gets.chomp()
        puts "Digite o ntipo da receita: "
        tipo = gets.chomp()
        receitas << {nome: receita, tipo: tipo}

        puts "Receita #{receita} cadastrada com sucesso!"
        puts
    elsif (opcao == 2)
        puts "=========== Receitas cadastradas ==========="
        receitas.each do |receita|
            puts "#{receita[:nome]} - #{receita[:tipo]}"
        end    
    else
        puts "Opção invalida, digite um valor valido"
    end

puts "[1] Cadastrar uma receita"
puts "[2] Ver todas as receitas"
puts "[3] Sair"

print "Escolha uma opção: "
opcao = gets.to_i()
end

puts "Obrigado por utilizar o Cookbook, até logo"
