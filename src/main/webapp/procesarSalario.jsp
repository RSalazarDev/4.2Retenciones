<%-- 
    Document   : procesarSalario
    Created on : 15-ene-2021, 21:26:15
    Author     : DAW-B
<%-- 
Para un salario de hasta 1000€ no hay retención, por encima de 1000 y hasta 3000€ tiene una retención del 10% y
por encima de 3000 una retención del 20%. Hacer un JSP que reciba el nombre y el salario bruto de un empleado.que
devuelva el nombre, el salario bruto, la retención y el salario neto.
--%>


<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>SALARIO CALCULADO:</h1>

        <% float salarioBruto = Float.parseFloat(request.getParameter("salario"));
        String nombre = request.getParameter("nombre");
        float retencion = 0;
        float salarioNeto = 0;
        
        %>

        <%if (salarioBruto <= 1000) {
        %><h1>Nombre: <%=nombre%></h1>
        <h2>Salario Bruto: <%=salarioBruto%> €</h2>
        <h2>Retencion: <%=retencion%> €</h2>
        <h2>Salario Neto <%=salarioBruto%> €</h2>
        <%
        } 
        else if (salarioBruto > 1000 && salarioBruto <= 3000) {
        retencion = (salarioBruto*10)/100;
        salarioNeto = salarioBruto-retencion;
        %><h1>Nombre: <%=nombre%></h1>
        <h2>Salario Bruto: <%=salarioBruto%> €</h2>
        <h2>Retencion: <%=retencion%> €</h2>
        <h2>Salario Neto <%=salarioNeto%> €</h2>
        <%
        } 
        else{
        retencion = (salarioBruto*20)/100;
        salarioNeto = salarioBruto-retencion;
        %><h1>Nombre: <%=nombre%></h1>
        <h2>Salario Bruto: <%=salarioBruto%> €</h2>
        <h2>Retencion: <%=retencion%> €</h2>
        <h2>Salario Neto <%=salarioNeto%> €</h2>
        <%
        } 
        %>


    </body>
</html>
