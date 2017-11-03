<%@ page import="ufrpe.Aluno" %>



<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="aluno.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="50" required="" value="${alunoInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'dataNascimento', 'error')} required">
	<label for="dataNascimento">
		<g:message code="aluno.dataNascimento.label" default="Data Nascimento" />
		<span class="required-indicator">*</span>
	</label>
	<g:datePicker name="dataNascimento" precision="day"  value="${alunoInstance?.dataNascimento}"  />

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'emailAluno', 'error')} required">
	<label for="emailAluno">
		<g:message code="aluno.emailAluno.label" default="Email Aluno" />
		<span class="required-indicator">*</span>
	</label>
	<g:field type="email" name="emailAluno" required="" value="${alunoInstance?.emailAluno}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'disciplinas', 'error')} ">
	<label for="disciplinas">
		<g:message code="aluno.disciplinas.label" default="Disciplinas" />
		
	</label>
	

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'matricula', 'error')} required">
	<label for="matricula">
		<g:message code="aluno.matricula.label" default="Matricula" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="matricula" required="" value="${alunoInstance?.matricula}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: alunoInstance, field: 'telefone', 'error')} required">
	<label for="telefone">
		<g:message code="aluno.telefone.label" default="Telefone" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="telefone" required="" value="${alunoInstance?.telefone}"/>
		<g:select name="disciplinas" from="${ufrpe.Disciplina.list()}" multiple="multiple" optionKey="id" size="5" value="${alunoInstance?.disciplinas*.id}" class="many-to-many"/>
	

</div>

