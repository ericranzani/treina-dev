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
        receitas << receita
        puts "Receita #{receita} cadastrada com sucesso!"
        puts
    elsif (opcao == 2)
        puts "=========== Receitas cadastradas ==========="
        puts receitas # no ruby quando voce pede para pintar uma mensagem de uma lista, o proprio ruby ja identifica q é cada elemento da lista
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
