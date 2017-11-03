package ufrpe

class Disciplina {

	String nome
	String ementa
	String periodo
	
	static hasMany = [alunos:Aluno]
	
    static constraints = {
		nome nullable: false, size: 2..50
		ementa nullable: false, size: 5..200
		periodo nullable: false, size: 2..3
    }
	
	@Override
	public String toString() {
		return nome;
	}
}