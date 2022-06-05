<%@ page import="be.thomasmore.graduaten.frituurthalfkieke.entities.Tijdslot" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ page import="java.util.List" %>
<%@ page import="be.thomasmore.graduaten.frituurthalfkieke.entities.Categorie" %>
<%@ page import="be.thomasmore.graduaten.frituurthalfkieke.entities.Tijdslot" %>

<%
    List<Tijdslot> tijdsloten = (List<Tijdslot>) request.getAttribute("tijdsloten");
    List<List<Tijdslot>> Listtijdsloten = (List<List<Tijdslot>>) request.getAttribute("listtijdsloten");

%>
<%!
    public String getDayOfweek(int counter){
        switch(counter){
            case 0: return "Maandag";
            case 1: return "Dinsdag";
            case 2: return "Woensdag";
            case 3: return "Donderdag";
            case 4: return "Vrijdag";
            case 5: return "Zaterdag";
            case 6: return "Zondag";
        }
        return "";
    };
%>
<html lang="nl" class="h-100">
<head>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/css/bootstrap.min.css" rel="stylesheet"
          integrity="sha384-1BmE4kWBq78iYhFldvKuhfTAU6auU8tT94WrHftjDbrCEXSU1oBoqyl2QvZ6jIW3" crossorigin="anonymous">
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.8.1/font/bootstrap-icons.css">
    <script src="https://kit.fontawesome.com/29addfb8ae.js" crossorigin="anonymous"></script>
    <title>Frituur t'Half Kieke | Tijdsloten Beheren</title>
    <link rel="icon" type="image/x-icon" href="/images/drumstick-bite-solid.svg">
</head>
<body class="d-flex h-100">
<div class="container d-flex w-100 h-100 p-3 mx-auto flex-column">
    <jsp:include page="header.jsp" />

    <main class="px-3">
        <div class="row px-3 text-center">
            <h2 class="display-5 fw-bold"><i class="bi bi-stopwatch"></i> Tijdsloten</h2>
        </div>
        <div class="row p-3">
            <div class="col"><button class="btn btn-primary"><</button></div>
            <div class="col"><button class="btn btn-primary">></button></div>

        </div>
        <div class="row p-3">
            <table class="table" >

                <tbody>

                    <% if(Listtijdsloten != null){
                        int count = 0;
                        for (List<Tijdslot> item: Listtijdsloten
                            ){
                            out.println("<tr>");
                            out.println("<th scope=\"row\" class=\"text-center align-middle\" rowspan=" + (item.size() + 1) + ">" + getDayOfweek(count) + "<a href=" +  "/tijdslot/blokkeren/" + count +"\" class=\"btn btn-danger\">Blokeer</a>" + "</th>");
                            count++;

                            for (Tijdslot tijdslot : item
                                 ) {
                                out.println("<tr>");
                                out.println("<td class=\"col-1\">" +tijdslot.getStartuur() + "<td>");
                                out.println("<td class=\"col-1\">" +tijdslot.getEinduur() + "<td>");
                                out.println("<td class=\"col-1\"><input type=\"number\" value=\"" +tijdslot.getAantal() + "\"><td>");
                                out.println("</tr>");


                            }
                            out.println("</tr>");

                    }

} %>
                </tbody>
            </table>
        </div>
    </main>

    <jsp:include page="footer.jsp" />
</div>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</body>
</html>
