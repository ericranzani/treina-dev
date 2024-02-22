INSERIR_RECEITA = 1
VISUALIZAR_RECEITAS = 2
SAIR = 3

def ben_vindo()
    puts "Bem-vindo ao Cookbook, sua rede social de receitas"
end

def menu()
    puts "[#{INSERIR_RECEITA}] Cadastrar uma receita"
    puts "[#{VISUALIZAR_RECEITAS}] Ver todas as receitas"
    puts "[#{SAIR}] Sair"

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
    if receitas.empty?
        puts "Nenhuma receita cadastrada"
    end
end

ben_vindo()

receitas = []

opcao = menu()

while(opcao != SAIR) do
    if (opcao == INSERIR_RECEITA)
        receitas << inserir_receita()
    elsif (opcao == VISUALIZAR_RECEITAS)
        imprimir_receitas(receitas)
    else
        puts "Opção invalida, digite um valor valido"
    end
opcao = menu()
end

puts "Obrigado por utilizar o Cookbook, até logo"
