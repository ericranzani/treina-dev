puts "Bem-vindo ao Cookbook, sua rede social de receitas"

receitas = []

while(1 == 1) do
    puts "Digite o nome da receita: "
    receita = gets.chomp()

    receitas << receita

    puts "Receita #{receita} cadastrada com sucesso!"
    puts
    puts "=========== Receitas cadastradas ==========="
    puts receitas # no ruby quando voce pede para pintar uma mensagem de uma lista, o proprio ruby ja identifica q é cada elemento da lista
end