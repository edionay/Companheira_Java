<%@ page import="com.edionay.companheira.Aluno" %>
<%@ page import="com.edionay.companheira.AlunoDAO" %>
<%@ page import="java.util.List" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="PT-BR">
<head>
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.99.0/css/materialize.min.css">    <link href="estilo.css" rel="stylesheet">


    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <title>Alunos</title>

</head>
<body>

<!-- Barra de navegação do celular -->
<nav class="hide-on-large-only">
    <div class="nav-wrapper pink accent-1">
        <a href="#!" class="brand-logo"><i class="material-icons prefix">local_florist</i> Companheira</a>
        <a href="#" data-activates="barra-de-navegacao-mobile" class="button-collapse"><i
                class="material-icons">menu</i></a>

        <ul class="side-nav pink accent-1" id="barra-de-navegacao-mobile">
            <li class="center"><i class="material-icons prefix logo">local_florist</i></li>
            <li><a href="tarefas.html" class="white-text">Tarefas</a></li>
            <li><a href="acompanhamentos.html" class="white-text">Acompanhamentos</a></li>
            <li><a href="alunos.html" class="white-text">Alunos</a></li>
        </ul>
    </div>
</nav>

<div class="row">

    <div class="col s2 hide-on-med-and-down">

        <!--  Barra lateral -->
        <ul id="barra-de-navegacao-desktop" class="side-nav fixed hide-on-med-and-down pink accent-1">
            <li><h2 class="white-text center-align"><i class="material-icons prefix logo">local_florist</i></h2></li>
            <li><a class="waves-effect white-text" href="tarefas.html">Tarefas</a></li>
            <li><a class="waves-effect white-text" href="alunos.html">Alunos</a></li>
            <li><a class="waves-effect white-text" href="acompanhamentos.html">Acompanhamentos</a></li>
        </ul>
        <a href="#" data-activates="barra-de-navegacao-desktop" class="button-collapse">
            <i class="material-icons">menu</i></a>
    </div>

    <div class="col s12 l10">
        <div class="">
            <h2>Alunos
                <a class="waves-effect waves-light btn pink accent-1 right btn-large" href="#modal-novo-aluno">
                    <i class="material-icons left">person_add</i>Novo aluno</a>
            </h2>
        </div>
        <div class="divider"></div>

        <table class="striped responsive-table">
            <thead>
            <tr>
                <th>Nome</th>
                <th>Matrícula</th>
                <th>Curso</th>
                <th>E-mail</th>
                <th>Telefone</th>
                <th>Ações</th>
            </tr>
            </thead>
            <tbody id="dados-de-alunos">
            <%
                List<Aluno> alunos = AlunoDAO.listar();
                for (Aluno aluno : alunos) {
            %>
            <tr>
                <td><%=aluno.getNomeCompleto()%></td>
                <td><%=aluno.getMatricula()%></td>
                <td><%=aluno.getCurso()%></td>
                <td><%=aluno.getEmail()%></td>
                <td><%=aluno.getTelefone()%></td>
                <td>
                    <a class="waves-effect waves-light btn pink accent-1 btn tooltipped" data-position="top"
                       data-delay="50" data-tooltip="Visualizar" href="perfil/perfil1.html">
                        <i class="material-icons">remove_red_eye</i></a>
                    <a class="waves-effect waves-light btn pink accent-1 btn tooltipped" data-position="top"
                       data-delay="50" data-tooltip="Enviar e-mail">
                        <i class="material-icons">mail</i></a>
                    <a class="waves-effect waves-light btn pink accent-1 btn tooltipped" data-position="top"
                       data-delay="50" data-tooltip="Excluir">
                        <i class="material-icons">delete</i></a>
                </td>
            </tr>
            <%}%>

            </tbody>
        </table>
    </div>
</div>

<!-- Modal de novo aluno -->
<div id="modal-novo-aluno" class="modal">
    <div class="modal-content">
        <h5>Novo aluno</h5>
        <div class="divider"></div>

        <form class="col s12">
            <div class="row">
                <div class="input-field col s12">
                    <i class="material-icons prefix">face</i>
                    <input id="nome_completo" type="tel" class="validate">
                    <label for="nome_completo">Nome completo</label>
                </div>
                <div class="input-field col s12">
                    <i class="material-icons prefix">fingerprint</i>
                    <input id="matricula" type="text" class="validate">
                    <label for="matricula">Matrícula</label>
                </div>
                <div class="input-field col s12">
                    <i class="material-icons prefix">school</i>
                    <input id="curso" type="text" class="validate">
                    <label for="curso">Curso</label>
                </div>
                <div class="input-field col s12">
                    <i class="material-icons prefix">email</i>
                    <input id="email" type="text" class="validate">
                    <label for="curso">E-mail</label>
                </div>
                <div class="input-field col s6">
                    <i class="material-icons prefix">phone</i>
                    <input id="telefone1" type="tel" class="validate">
                    <label for="telefone1">Telefone</label>
                </div>
                <div class="input-field col s6">
                    <i class="material-icons prefix">phone</i>
                    <input id="telefone2" type="tel" class="validate">
                    <label for="telefone2">Telefone</label>
                </div>
            </div>
        </form>
    </div>
    <div class="modal-footer">
        <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat">Cancelar</a>
        <a href="#!" class="modal-action modal-close waves-effect waves-green btn-flat pink accent-1 white-text"
        onclick="return incluirAluno()">Cadastrar</a>
    </div>
</div>

<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.99.0/js/materialize.min.js"></script>
<script src="javascript.js"></script>

</body>
</html>