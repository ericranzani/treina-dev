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
        @data_inicio_ferias = Time.now()
    end

    def encerra_ferias()
        @ferias = false
        @data_encerra_ferias = Time.now()
    end
end