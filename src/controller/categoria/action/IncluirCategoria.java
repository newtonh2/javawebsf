package controller.categoria.action;

import dao.DAOCategoria;

import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;

public class IncluirCategoria extends HttpServlet{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException {
        try{

            String n = request.getParameter("nome");
            int cd = 0;

            if (DAOCategoria.isNomeCategoriaValido(n, cd)) {
                DAOCategoria.incluirCategoria(n);
            } else {
                response.setContentType("text/html; charset=iso-8859-1;");

                PrintWriter out = response.getWriter();
                out.println("<html><head><title>Projeto Java Web</title></head><body>");
                out.println("<h4>Atenção: Nome do produto já cadastrado</h4><a href='javascript:window.history.go(-1)'><input type='button' value='Voltar'></a>");
                out.println("<a href='index.jsp'><input type='button' value='Tela Inicial'></a></body></html>");
                out.close();
            }
            response.setContentType("text/html; charset=iso-8859-1;");

            PrintWriter out = response.getWriter();
            out.println("<html><head><title>Projeto Java Web</title></head><body>");
            out.println("<h4>Operação efetuada com sucesso!</h4>");
            out.println("<a href='index.jsp'><input type='button' value='Tela Inicial'></a></body></html>");
            out.close();




        } catch (Exception e){

        }
    }
}
