class Turma
    attr_accessor :alunos, :nome
    def initialize
        @alunos = []
    end

    def adiciona_aluno(aluno)
        alunos << aluno
    end
end