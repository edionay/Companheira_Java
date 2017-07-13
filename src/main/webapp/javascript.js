/**
 * Created by edion on 28/05/2017.
 */

$( document ).ready(function(){
    $(".button-collapse").sideNav();
    $('.modal').modal();
    $('ul.tabs').tabs();
    $('.tooltipped').tooltip({delay: 50});
});

$('.button-collapse').sideNav({
        menuWidth: 210
});

function excluirTarefa(idDaLinha) {
    const tabelaDeTarefas = document.getElementById("dados-de-tarefas");
    const linhaASerApagada = document.getElementById(idDaLinha);
    if (window.confirm("Deseja apagar a linha selecionada?")) {
        tabelaDeTarefas.deleteRow(linhaASerApagada.rowIndex);
    }
}

function incluirAcompanhamento() {

    const tabelaDeTarefas = document.getElementById("dados-de-acompanhamento");
    const nome = document.getElementById("nome_aluno");
    const texto = document.getElementById("titulo");
    const data = document.getElementById("data-solicitacao");


    const novaTarefa= tabelaDeTarefas.insertRow(0);

    const campo1 = novaTarefa.insertCell();
    const campo2 = novaTarefa.insertCell();
    const campo3 = novaTarefa.insertCell();
    const campo4 = novaTarefa.insertCell();
    const campo5 = novaTarefa.insertCell();
    const campo6 = novaTarefa.insertCell();
    const campo7 = novaTarefa.insertCell();


    campo1.appendChild(document.createTextNode(texto.value));
    campo2.appendChild(document.createTextNode(nome.value));
    campo3.appendChild(document.createTextNode(data.value));
    campo6.appendChild(document.createTextNode('Pendente'));

    const iconeDoBotaoDetalhes = document.createElement('i');
    iconeDoBotaoDetalhes.className = "material-icons";
    iconeDoBotaoDetalhes.innerText = "remove_red_eye";
    const botaoDetalhes = document.createElement('a');
    botaoDetalhes.className = "waves-effect waves-light btn pink accent-1 btn tooltipped";
    botaoDetalhes.setAttribute('data-delay', '50');
    botaoDetalhes.setAttribute('data-tooltip', 'Visualizar');
    botaoDetalhes.appendChild(iconeDoBotaoDetalhes);

    const iconeDoBotaoExcluir = document.createElement('i');
    iconeDoBotaoExcluir.className = "material-icons";
    iconeDoBotaoExcluir.innerText = "delete";
    const botaoExcluir = document.createElement('a');
    botaoExcluir.className = "waves-effect waves-light btn pink accent-1 btn tooltipped";
    botaoExcluir.setAttribute('data-delay', '50');
    botaoExcluir.setAttribute('data-tooltip', 'Visualizar');
    botaoExcluir.appendChild(iconeDoBotaoExcluir);

    const iconeDoBotaoAssumir = document.createElement('i');
    iconeDoBotaoAssumir.className = "material-icons";
    iconeDoBotaoAssumir.innerText = "pan_tool";
    const botaoAssumir = document.createElement('a');
    botaoAssumir.className = "waves-effect waves-light btn pink accent-1 btn tooltipped";
    botaoAssumir.setAttribute('data-delay', '50');
    botaoAssumir.setAttribute('data-tooltip', 'Assumir tarefa');
    botaoAssumir.appendChild(iconeDoBotaoAssumir);

    campo7.appendChild(botaoDetalhes);
    campo7.appendChild(document.createTextNode(" "));
    campo7.appendChild(botaoExcluir);
    campo7.appendChild(document.createTextNode(" "));
    campo7.appendChild(botaoAssumir);}

function incluirTarefa() {

    const tabelaDeTarefas = document.getElementById("dados-de-tarefas");
    const nome = document.getElementById("nome_aluno");
    const texto = document.getElementById("titulo");
    const data = document.getElementById("data-solicitacao");


    const novaTarefa= tabelaDeTarefas.insertRow(0);

    const campo1 = novaTarefa.insertCell();
    const campo2 = novaTarefa.insertCell();
    const campo3 = novaTarefa.insertCell();
    const campo4 = novaTarefa.insertCell();
    const campo5 = novaTarefa.insertCell();
    const campo6 = novaTarefa.insertCell();
    const campo7 = novaTarefa.insertCell();


    campo1.appendChild(document.createTextNode(texto.value));
    campo2.appendChild(document.createTextNode(nome.value));
    campo3.appendChild(document.createTextNode(data.value));
    campo6.appendChild(document.createTextNode('Pendente'));

    const iconeDoBotaoDetalhes = document.createElement('i');
    iconeDoBotaoDetalhes.className = "material-icons";
    iconeDoBotaoDetalhes.innerText = "remove_red_eye";
    const botaoDetalhes = document.createElement('a');
    botaoDetalhes.className = "waves-effect waves-light btn pink accent-1 btn tooltipped";
    botaoDetalhes.setAttribute('data-delay', '50');
    botaoDetalhes.setAttribute('data-tooltip', 'Visualizar');
    botaoDetalhes.appendChild(iconeDoBotaoDetalhes);

    const iconeDoBotaoExcluir = document.createElement('i');
    iconeDoBotaoExcluir.className = "material-icons";
    iconeDoBotaoExcluir.innerText = "delete";
    const botaoExcluir = document.createElement('a');
    botaoExcluir.className = "waves-effect waves-light btn pink accent-1 btn tooltipped";
    botaoExcluir.setAttribute('data-delay', '50');
    botaoExcluir.setAttribute('data-tooltip', 'Visualizar');
    botaoExcluir.appendChild(iconeDoBotaoExcluir);

    const iconeDoBotaoAssumir = document.createElement('i');
    iconeDoBotaoAssumir.className = "material-icons";
    iconeDoBotaoAssumir.innerText = "pan_tool";
    const botaoAssumir = document.createElement('a');
    botaoAssumir.className = "waves-effect waves-light btn pink accent-1 btn tooltipped";
    botaoAssumir.setAttribute('data-delay', '50');
    botaoAssumir.setAttribute('data-tooltip', 'Assumir tarefa');
    botaoAssumir.appendChild(iconeDoBotaoAssumir);

    campo7.appendChild(botaoDetalhes);
    campo7.appendChild(document.createTextNode(" "));
    campo7.appendChild(botaoExcluir);
    campo7.appendChild(document.createTextNode(" "));
    campo7.appendChild(botaoAssumir);}

function incluirAluno() {

    const tabelaDeDiscentes = document.getElementById("dados-de-alunos");
    const nome = document.getElementById("nome_completo");
    const matricula = document.getElementById("matricula");
    const curso = document.getElementById("curso");
    const email = document.getElementById("email");
    const telefone1 = document.getElementById("telefone1");
    const telefone2 = document.getElementById("telefone2");

    const novoDiscente = tabelaDeDiscentes.insertRow(0);

    const campo1 = novoDiscente.insertCell();
    const campo2 = novoDiscente.insertCell();
    const campo3 = novoDiscente.insertCell();
    const campo4 = novoDiscente.insertCell();
    const campo5 = novoDiscente.insertCell();
    const campo6 = novoDiscente.insertCell();
    const campo7 = novoDiscente.insertCell();

    campo1.appendChild(document.createTextNode(nome.value));
    campo2.appendChild(document.createTextNode(matricula.value));
    campo3.appendChild(document.createTextNode(curso.value));
    campo4.appendChild(document.createTextNode(email.value));
    campo5.appendChild(document.createTextNode(telefone1.value));
    campo6.appendChild(document.createTextNode(telefone2.value));

    const iconeDoBotaoDetalhes = document.createElement('i');
    iconeDoBotaoDetalhes.className = "material-icons";
    iconeDoBotaoDetalhes.innerText = "remove_red_eye";
    const botaoDetalhes = document.createElement('a');
    botaoDetalhes.className = "waves-effect waves-light btn pink accent-1 btn tooltipped";
    botaoDetalhes.setAttribute('data-delay', '50');
    botaoDetalhes.setAttribute('data-tooltip', 'Visualizar');
    botaoDetalhes.appendChild(iconeDoBotaoDetalhes);

    const iconeDoBotaoEmail = document.createElement('i');
    iconeDoBotaoEmail.className = "material-icons";
    iconeDoBotaoEmail.innerText = "mail";
    const botaoEmail = document.createElement('a');
    botaoEmail.className = "waves-effect waves-light btn pink accent-1 btn tooltipped";
    botaoEmail.setAttribute('data-delay', '50');
    botaoEmail.setAttribute('data-tooltip', 'Visualizar');
    botaoEmail.appendChild(iconeDoBotaoEmail);

    const iconeDoBotaoExcluir = document.createElement('i');
    iconeDoBotaoExcluir.className = "material-icons";
    iconeDoBotaoExcluir.innerText = "delete";
    const botaoExcluir = document.createElement('a');
    botaoExcluir.className = "waves-effect waves-light btn pink accent-1 btn tooltipped";
    botaoExcluir.setAttribute('data-delay', '50');
    botaoExcluir.setAttribute('data-tooltip', 'Visualizar');
    botaoExcluir.appendChild(iconeDoBotaoExcluir);

    campo7.appendChild(botaoDetalhes);
    campo7.appendChild(document.createTextNode(" "));
    campo7.appendChild(botaoEmail);
    campo7.appendChild(document.createTextNode(" "));
    campo7.appendChild(botaoExcluir);
}

