package com.edionay.companheira;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
import java.io.Serializable;

/**
 * Created by Edionay on 12/07/2017.
 */
@Entity
@Table(name="aluno")
public class Aluno implements Serializable {
    @Column(name = "nome_completo")
    private String nomeCompleto;
    @Id private String matricula;
    private String curso;
    private String email;
    private String telefone;

    public String getNomeCompleto() {
        return nomeCompleto;
    }

    public void setNomeCompleto(String nomeCompleto) {
        this.nomeCompleto = nomeCompleto;
    }

    public String getMatricula() {
        return matricula;
    }

    public void setMatricula(String matricula) {
        this.matricula = matricula;
    }

    public String getCurso() {
        return curso;
    }

    public void setCurso(String curso) {
        this.curso = curso;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getTelefone() {
        return telefone;
    }

    public void setTelefone1(String telefone1) {
        this.telefone = telefone;
    }

}
