package com.edionay.companheira;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

/**
 * Created by Edionay on 12/07/2017.
 */
@WebServlet("/alunos")
public class AlunoServlet extends HttpServlet{
    @Override
    protected void service(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {


        String acao = req.getParameter("acao");
        if (acao != null) {
            if (acao.equals("incluir")) {

                String nomeCompleto = req.getParameter("nome_completo");
                String matricula = req.getParameter("matricula");
                String curso = req.getParameter("curso");
                String email = req.getParameter("email");
                String telefone = req.getParameter("telefone");
                AlunoDAO.incluir(nomeCompleto, matricula, curso, email, telefone);
                req.getRequestDispatcher("alunos.jsp").forward(req, resp);

            } else if (acao.equals("apagar")) {

                String matricula = req.getParameter("matriculaDaAcao");
                AlunoDAO.apagar(matricula);
                req.getRequestDispatcher("alunos.jsp").forward(req, resp);

            } else if (acao.equals("consultar")) {
                String matricula = req.getParameter("matriculaDaAcao");
                Aluno alunoConsultado = AlunoDAO.consulta(matricula);
                req.setAttribute("alunoConsultado", alunoConsultado);
                req.getRequestDispatcher("perfil1.jsp").forward(req, resp);
            }
        } else {

            req.getRequestDispatcher("alunos.jsp").forward(req, resp);

        }
    }
}
