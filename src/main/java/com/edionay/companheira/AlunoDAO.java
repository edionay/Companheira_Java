package com.edionay.companheira;

import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.Persistence;
import javax.persistence.TypedQuery;
import java.util.List;

/**
 * Created by Edionay on 12/07/2017.
 */
public class AlunoDAO {
    private static EntityManagerFactory fabricaDeGerenteDeEntidades = Persistence.createEntityManagerFactory(
            "jpa-companheira");

    public static void incluir(String nomeCompleto, String matricula, String curso, String email, String telefone) {
        EntityManager gerenciadorDeEntidade = fabricaDeGerenteDeEntidades.createEntityManager();
        gerenciadorDeEntidade.getTransaction().begin();

        Aluno novoAluno = new Aluno();
        novoAluno.setNomeCompleto(nomeCompleto);
        novoAluno.setMatricula(matricula);
        novoAluno.setCurso(curso);
        novoAluno.setEmail(email);
        novoAluno.setTelefone(telefone);

        gerenciadorDeEntidade.persist(novoAluno);
        gerenciadorDeEntidade.getTransaction().commit();
        gerenciadorDeEntidade.close();
    }



    public static List<Aluno> listar() {
        EntityManager gerenciadorDeEntidade = fabricaDeGerenteDeEntidades.createEntityManager();
        String sql = "from Aluno";
        TypedQuery<Aluno> consulta = gerenciadorDeEntidade.createQuery(sql, Aluno.class);
        List<Aluno> listaDeAlunos = consulta.getResultList();
        gerenciadorDeEntidade.close();
        return listaDeAlunos;
    }

    public static void apagar(String matricula) {
        EntityManager gerenciadorDeEntidade = fabricaDeGerenteDeEntidades.createEntityManager();
        gerenciadorDeEntidade.getTransaction().begin();

        Aluno alunoASerApagado = gerenciadorDeEntidade.find(Aluno.class, matricula);
        gerenciadorDeEntidade.remove(alunoASerApagado);
        gerenciadorDeEntidade.getTransaction().commit();
        gerenciadorDeEntidade.close();
    }

    public static Aluno consulta(String matricula) {
        EntityManager gerenciadorDeEntidade = fabricaDeGerenteDeEntidades.createEntityManager();
        Aluno alunoConsultado = gerenciadorDeEntidade.find(Aluno.class, matricula);
        gerenciadorDeEntidade.close();
        return alunoConsultado;
    }
}
