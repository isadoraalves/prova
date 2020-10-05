<%-- 
    Document   : disciplina
    Created on : 4 de out de 2020, 14:39:03
    Author     : Isadora
--%>


<%@page import="java.lang.Exception"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.ArrayList"%>
<%@page import="br.edu.fatecpg.poo.p1.Disciplina"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>

<%
    ArrayList<Disciplina> lista = (ArrayList)application.getAttribute("lista");
if(lista == null){
lista = new ArrayList<>();
lista.add(new Disciplina("Banco De Dados","Conceitos de Base de Dados. Modelos conceituais de informações. Modelos de Dados: Relacional, Redes e Hierárquicos. Modelagem de dados - conceitual, lógica e física. Teoria relacional: dependências funcionais e multivaloradas, formas normais. Restrições de integridade e de segurança em Banco de Dados Relacional. Sistemas Gerenciadores de Banco de Dados – objetivo e funções. Linguagens de declaração e de manipulação de dados.", 4,10));
lista.add(new Disciplina("Sistemas Operacionais II","Apresentação de um sistema operacional específico utilizado em ambiente corporativo. Requisitos de hardware para instalação do sistema. Processo de instalação, personalização, operação, administração e segurança sobre o sistema operacional focado.  Elaboração de projetos de seleção e implantação de um sistema operacional.", 4,10));
lista.add(new Disciplina("Engenharia de Software III","Conceitos, evolução e importância de arquitetura de software. Padrões de Arquitetura. Padrões de Distribuição. Camadas no desenvolvimento de software. Tipos de Arquitetura de Software. Visões na arquitetura de software. Modelo de Análise e Projetos. Formas de representação. O processo de desenvolvimento. Mapeamento para implementação. Integração do sistema. Testes: planejamento e tipos. Manutenção. Documentação.", 4,10));
lista.add(new Disciplina("Inglês IV","Consolidação da compreensão e produção oral e escrita por meio da integração das habilidades linguístico-comunicativas desenvolvidas na disciplina Inglês 3. Ênfase na oralidade, atendendo às especificidades acadêmico-profissionais da área e abordando aspectos socioculturais da língua inglesa.", 4,10));
lista.add(new Disciplina("Linguagem de Programação IV","Comandos de linguagens usadas na construção e estruturação de sites para a Web, com páginas dinâmicas e interativas. Definição de layouts e formatação em geral. Adição de algoritmos usando laços, matrizes, datas, funções e condições. Introdução a Orientação a Objetos utilizando objetos, métodos e propriedades. Integração com Banco de Dados. Exercícios práticos com projeto de criação de sites.", 4,10));
lista.add(new Disciplina("Metodologia da Pesquisa Científico-Tecnológica","O Papel da ciência e da tecnologia. Tipos de conhecimento. Método e técnica. O processo de leitura e de análise textual. Citações e bibliografias. Trabalhos acadêmicos: tipos, características e composição estrutural. O projeto de pesquisa experimental e não-experimental. Pesquisa qualitativa e quantitativa. Apresentação gráfica. Normas da ABNT.", 4,10));
lista.add(new Disciplina("Programação Orientada à Objetos","Conceitos e evolução da tecnologia de orientação a objetos. Limitações e diferenças entre o paradigma da programação estruturada em relação à orientação a objetos. Conceito de objeto, classe, métodos, atributos, herança, polimorfismo, agregação, associação, dependência, encapsulamento, mensagem e suas respectivas notações na linguagem padrão de representação da orientação a objetos. Implementação de algoritmos orientado a objetos utilizando linguagens de programação. Aplicação e uso das estruturas fundamentais da orientação a objetos.", 4,10));


application.setAttribute("lista",lista);}
double novanota = 0.00;
    if(request.getParameter("alterar")!= null){
        int i = Integer.parseInt(request.getParameter("i"));
        Disciplina alt = lista.get(i);
        alt.setNota(Double.parseDouble(request.getParameter("novanota")));
    }%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Minhas Disciplina</title>
    </head>
    <body>
         <%@include file="WEB-INF/menu.jspf"%>
        <h1>P1 - POO</h1>
        <hr/>
        <table border ="2">
            </hr>
        <tr> 
            <th>Número</th>
            <th>Nome</th>
            <th>Ementa</th>
            <th>Ciclo</th>
            <th>Nota</th>
            <th>Editar</th>
        </tr>
        <%for(int i=0; i<lista.size(); i++){%>
        <tr>
            <td><%=i +1%></td>
            <%Disciplina u = lista.get(i);%>
            <%Disciplina alt = lista.get(i);%>
            <td><%=u.getNome()%></td>
            <td><%=u.getEmenta()%></td>
            <td><%=u.getCiclo()%></td>
            <td><%=alt.getNota()%></td>
            <td>
                <form>
                    <input type="number" name="novanota"/>
                    <input type="hidden" name="i" value="<%=i%>"/>
                    <input type="submit" name="alterar" value="salvar"/>
                    
                </form>
            </td>
        </tr>
        <% } %>
        </table>
        
    </body>
</html>
