<%@ page import="ufrpe.Disciplina" %>



<div class="fieldcontain ${hasErrors(bean: disciplinaInstance, field: 'nome', 'error')} required">
	<label for="nome">
		<g:message code="disciplina.nome.label" default="Nome" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="nome" maxlength="50" required="" value="${disciplinaInstance?.nome}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: disciplinaInstance, field: 'ementa', 'error')} required">
	<label for="ementa">
		<g:message code="disciplina.ementa.label" default="Ementa" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="ementa" maxlength="200" required="" value="${disciplinaInstance?.ementa}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: disciplinaInstance, field: 'periodo', 'error')} required">
	<label for="periodo">
		<g:message code="disciplina.periodo.label" default="Periodo" />
		<span class="required-indicator">*</span>
	</label>
	<g:textField name="periodo" maxlength="3" required="" value="${disciplinaInstance?.periodo}"/>

</div>

<div class="fieldcontain ${hasErrors(bean: disciplinaInstance, field: 'alunos', 'error')} ">
	<label for="alunos">
		<g:message code="disciplina.alunos.label" default="Alunos" />
		
	</label>
	<g:select name="alunos" from="${ufrpe.Aluno.list()}" multiple="multiple" optionKey="id" size="5" value="${disciplinaInstance?.alunos*.id}" class="many-to-many"/>

</div>

