class Aluno
    attr_reader :ferias
    attr_accessor :nome, :codigoF, :disciplina
    def initialize(nome, codigoF, disciplina)
        @nome = nome
        @codigoF = codigoF
        @disciplina = disciplina
        @ferias = false
    end

    def inicia_ferias()
        @ferias = true
    end
end