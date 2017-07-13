<%@ page import="com.edionay.companheira.Aluno" %>
<%@ page contentType="text/html; charset=UTF-8" %>
<!DOCTYPE html>
<html lang="PT-BR">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link href="http://fonts.googleapis.com/icon?family=Material+Icons" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.99.0/css/materialize.min.css">
    <link rel="stylesheet" href="estilo.css">

    <!-- HTML5 shim and Respond.js for IE8 support of HTML5 elements and media queries -->
    <!-- WARNING: Respond.js doesn't work if you view the page via file:// -->
    <!--[if lt IE 9]>
    <script src="https://oss.maxcdn.com/html5shiv/3.7.2/html5shiv.min.js"></script>
    <script src="https://oss.maxcdn.com/respond/1.4.2/respond.min.js"></script>
    <![endif]-->

    <title>Companheira - Edionay Aguiar</title>

</head>
<body>

<!-- Barra de navegação mobile -->
<nav class="hide-on-large-only">
    <div class="nav-wrapper pink accent-1">
        <a href="#!" class="brand-logo"><i class="material-icons prefix">local_florist</i> Companheira</a>
        <a href="#" data-activates="barra-de-navegacao-mobile" class="button-collapse"><i
                class="material-icons">menu</i></a>
        <ul class="side-nav pink accent-1" id="barra-de-navegacao-mobile">
            <li class="center"><i class="material-icons prefix logo">local_florist</i></li>
            <li><a href="../tarefas.html" class="white-text">Tarefas</a></li>
            <li><a href="../alunos.html" class="white-text">Alunos</a></li>
            <li><a href="../acompanhamentos.html" class="white-text">Acompanhamentos</a></li>
        </ul>
        <a href="#" data-activates="barra-de-navegacao-desktop" class="button-collapse"><i class="material-icons">menu</i></a>
    </div>
</nav>

<div class="row">

    <!--  Barra lateral -->
    <div class="col s2 hide-on-med-and-down">
        <ul id="barra-de-navegacao-desktop" class="side-nav fixed hide-on-med-and-down pink accent-1">
            <li><h2 class="white-text center-align"><i class="material-icons prefix logo">local_florist</i></h2></li>
            <li><a class="waves-effect white-text" href="../tarefas.html">Tarefas</a></li>
            <li><a class="waves-effect white-text" href="../alunos.html">Alunos</a></li>
            <li><a class="waves-effect white-text" href="../acompanhamentos.html">Acompanhamentos</a></li>
        </ul>
    </div>

    <main class="col s12 l10">

        <%
        Aluno aluno = (Aluno) request.getAttribute("alunoConsultado");
        %>

        <h2>Alunos</h2>
        <div class="divider"></div>
        <h5><%=aluno.getNomeCompleto()%></h5>
        <div class="divider"></div>

        <div class="row">
            <div class="col s12">
                <ul class="tabs">
                    <li class="tab col s3"><a class="active" href="#tab-dados-basicos">Dados básicos</a></li>
                    <li class="tab col s3"><a href="#tab-estudos-de-caso">Estudo de caso</a></li>
                    <li class="tab col s3"><a href="#tab-acompanhamentos">Acompanhamentos</a></li>
                </ul>
            </div>

            <div id="tab-dados-basicos" class="col s12">
                <dl class="dl-horizontal">
                    <dt>Curso:</dt>
                    <dd><%=aluno.getCurso()%></dd>
                    <dt>Matrícula:</dt>
                    <dd><%=aluno.getMatricula()%></dd>
                    <dt>E-mail:</dt>
                    <dd><%=aluno.getEmail()%></dd>
                    <dt>Telefone:</dt>
                    <dd><%=aluno.getTelefone()%></dd>

                </dl>
            </div>

            <div id="tab-estudos-de-caso" class="col s12">
                <dl>
                    <dt>Parecer 1:</dt>
                    <dd>Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de
                        impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido
                        pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos.
                        Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração
                        eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60,
                        quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais
                        recentemente quando passou a ser integrado a softwares de editoração eletrônica como
                        Aldus PageMaker.

                    </dd>
                    <dt>Parecer 2:</dt>
                    <dd>Lorem Ipsum é simplesmente uma simulação de texto da indústria tipográfica e de
                        impressos, e vem sendo utilizado desde o século XVI, quando um impressor desconhecido
                        pegou uma bandeja de tipos e os embaralhou para fazer um livro de modelos de tipos.
                        Lorem Ipsum sobreviveu não só a cinco séculos, como também ao salto para a editoração
                        eletrônica, permanecendo essencialmente inalterado. Se popularizou na década de 60,
                        quando a Letraset lançou decalques contendo passagens de Lorem Ipsum, e mais
                        recentemente quando passou a ser integrado a softwares de editoração eletrônica como
                        Aldus PageMaker.

                    </dd>
                </dl>

            </div>

            <div id="tab-acompanhamentos" class="col s12">

            </div>
        </div>
    </main>

</div>

<script type="text/javascript" src="https://code.jquery.com/jquery-2.1.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/materialize/0.99.0/js/materialize.min.js"></script>
<script src="javascript.js"></script>

</body>
</html>