def ben_vindo()
    puts "Bem-vindo ao Cookbook, sua rede social de receitas"
end

def menu()
    puts "[1] Cadastrar uma receita"
    puts "[2] Ver todas as receitas"
    puts "[3] Sair"

    print "Escolha uma opção: "
    return gets.to_i()
end

def inserir_receita()
    puts "Digite o nome da receita: "
    receita = gets.chomp()
    puts "Digite o ntipo da receita: "
    tipo = gets.chomp()
    
    puts "Receita #{receita} cadastrada com sucesso!"
    puts
    return {nome: receita, tipo: tipo}
end    

def imprimir_receitas(receitas)
    puts "=========== Receitas cadastradas ==========="
    receitas.each do |receita|
        puts "#{receita[:nome]} - #{receita[:tipo]}"
    end  
end

ben_vindo()

receitas = []

opcao = menu()

while(opcao != 3) do
    if (opcao == 1)
        receitas << inserir_receita()
    elsif (opcao == 2)
        imprimir_receitas(receitas)
    else
        puts "Opção invalida, digite um valor valido"
    end
opcao = menu()
end

puts "Obrigado por utilizar o Cookbook, até logo"
