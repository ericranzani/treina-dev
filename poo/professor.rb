class Professor< Funcionario
    attr_accessor :disciplina

    def initialize(nome, codigo_funcionario, disciplina)
        super(nome, codigo_funcionario)
        @disciplina = disciplina
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