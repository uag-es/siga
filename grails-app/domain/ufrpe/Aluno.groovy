package ufrpe

class Aluno {

	String nome
	Date dataNascimento
	String emailAluno
	String telefone
	String matricula
	
	static hasMany = [disciplinas:Disciplina]
	static belongsTo = Disciplina
	
    static constraints = {
		nome nullable: false, size: 2..50
		dataNascimento nullable: false, max: new Date()
		emailAluno email: true, nullable: false
    }
}
