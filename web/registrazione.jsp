<%-- 
    Document   : registrazione
    Created on : 15-apr-2019, 9.01.48
    Author     : Studente
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Registrati!</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <meta name="author" content="F.serra">
        <meta name="keywords" content="HTML, Esercizio, fpw">
        <meta name="description" content="Esercizio fpw, pagina registrazione">
        <link rel="stylesheet" type="text/css" href="style.css" media="screen">
    </head>
    <body>
        <jsp:include page="header.jsp"/>
        <nav>
            <ul>
                <li><a href="index.html">Home</a></li>
                <li><a href="articoli.html">Articoli</a></li>
                <li><a href="https://google.com">Ti sei perso?</a></li>
            </ul>
        </nav>
        <aside>
            <div>
                <ol>
                    <li>Art 1</li>
                    <li>Art 2</li>
                    <li>Art 3</li>
                    <li>Art 4</li>
                </ol>
            </div>
        </aside>
        <main>
            <form action="registrazione" method="post">
                <c:if test="${param[\"nametext\"] != null}">
                
                    <p>Lo username inserito è ${param["nametext"]}</p>
                
                </c:if>
                <label class="label" for="nameID">Nome: </label>
                <input type="text" name="nametext" id="nameID" value="Nome Utente"/>
                <br/>
                <label class="label" for="userID">Forum ID: </label>
                <input type="text" name="usertext" id="userID" value="Nome Forum"/>
                <br/>
                <label class="label" for="passwordID">Password: </label>
                <input type="password" name="passwordtext" id="passwordID" value="123456"/>
                <br/>
                <label class="label" for="writer">Scrittore: </label>
                <input type="radio" name="statusradio" id="writerID"/>
                <br/>
                <label class="label" for="author">Autore: </label>
                <input type="radio" name="statusradio" id="authorID"/>
                <br/>
                <p class="label">Scegli colore: </p>
                <br/>
                <select size="5" multiple="">
                    <option value="red">Rosso</option>
                    <option value="green">Verde</option>
                    <option value="blue">Blu</option>
                    <option value="yellow">Giallo</option>
                    <option value="purple">Viola</option>
                </select>
                <br/>
                <input type="submit" value="Invia"/>
            </form>            
        </main>
        <footer>
            <p>Developed by Fabio Serra</p>
        </footer>
    </body>
</html>
