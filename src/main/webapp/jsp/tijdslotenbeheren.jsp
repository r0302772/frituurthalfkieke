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
            <div class="col-2"><button class="btn btn-primary" value="<"></button></div>
            <div class="col-2"></div>
            <div class="col-4"></div>
            <div class="col-2"></div>
            <div class="col-2"><button class="float-end btn btn-primary" value=">"></button></div>

        </div>

<%--        <div class="row">--%>
<%--            <div class="col-10"></div>--%>
<%--            <div class="col-2"><input type="submit" value="Update" class="btn btn-primary"></div>--%>
<%--        </div>--%>

        <div class="row p-3">


<%--                <table class="table" >--%>

<%--                    <tbody>--%>

<%--                        <% if(Listtijdsloten != null){--%>
<%--                            int count = 0;--%>

<%--                            for (List<Tijdslot> item: Listtijdsloten--%>
<%--                                ){--%>
<%--                                boolean first = true;--%>
<%--                                out.print("<tr");--%>
<%--                                if(item.size() > 0 && item.get(0).getGeblokeerd()){--%>
<%--                                    out.print(" class=\"table-danger\"");--%>

<%--                                }--%>
<%--                                out.print(">\n");--%>
<%--                                int rowspan = 1;--%>
<%--                                if(item != null && item.size() > 0){rowspan = item.size();}--%>
<%--                                out.println("<th scope=\"row\" class=\"text-center align-middle\" rowspan=" + rowspan + ">"--%>

<%--                                        + getDayOfweek(count));--%>
<%--                                if(item!=null && item.size() > 0) {--%>
<%--                                    if(item.get(0).getGeblokeerd()){--%>
<%--                                        out.println(--%>
<%--                                                "<a href=\"" + "/tijdslot/deblokkeren/" + count + "\" class=\"ml-5 btn btn-primary\">Deblokkeer</a>"--%>
<%--                                                        );--%>
<%--                                    }--%>
<%--                                    else{--%>
<%--                                    out.println("<a href=\"" + "/tijdslot/blokkeren/" + count + "\" class=\"ml-2 btn btn-danger\">Blokkeer</a>");--%>

<%--                                    }--%>

<%--                                }--%>
<%--                                else {--%>
<%--                                    out.println("<td></td>");--%>
<%--                                }--%>
<%--                                out.println("</th>");--%>
<%--//                                out.print("</tr>");--%>



<%--                                for (Tijdslot tijdslot : item--%>
<%--                                     ) {--%>

<%--                                        if(!first) {--%>
<%--                                            out.print("<tr");--%>
<%--                                            if (item.get(0).getGeblokeerd()) {--%>
<%--                                                out.print(" class=\"table-danger\"");--%>
<%--                                            }--%>
<%--                                            out.print(">\n");--%>
<%--                                        }--%>
<%--                                        else{--%>
<%--                                            first = false;--%>
<%--                                        }--%>

<%--                                        out.println("<form id=\""+tijdslot.getId() + "\" action=\"/tijdslot/update\" method=\"post\">");--%>
<%--                                        out.println("<td class=\"col-1\">" +tijdslot.getStartuur() + "</td>");--%>
<%--                                        out.println("<td class=\"col-1\">" +tijdslot.getEinduur() + "</td>");--%>
<%--                                        out.print("<td class=\"col-1\"><input" /*form=\"" +tijdslot.getId()*/ + " type=\"number\" min=\"0\"  name=\"amounts\" value=\"");--%>
<%--                                        out.println(tijdslot.getAantal());--%>
<%--                                        out.print("\"");--%>
<%--                                        if(tijdslot.getGeblokeerd()){--%>
<%--                                            out.print(" disabled=\"disabled\"");--%>
<%--                                        }--%>
<%--                                        out.print("></td>");--%>
<%--                                        out.println("<td class=\"col-1\"><input class=\"btn btn-primary\" type=\"submit\" form=\"" + tijdslot.getId()+ "\" </td>");--%>
<%--                                        out.println("</form>");--%>
<%--                                        out.println("</tr>");--%>
<%--                                }--%>

<%--                                if(item==null || item.size() == 0) {--%>
<%--                                    out.println("</tr>");--%>
<%--                                }--%>
<%--                                count++;--%>
<%--                        }--%>

<%--    } %>--%>
<%--                    </tbody>--%>
<%--                </table>--%>
            <%
                int count = 0;
                for (List<Tijdslot> DagLijst: Listtijdsloten
                    ) {
                out.println("<div class=\"row\"");
                if(DagLijst.size() > 0 && DagLijst.get(0).getGeblokeerd()){
                    out.print(" \"bg-danger\"");
                }
                out.println(">");
                out.println("<div class=\"col\">");

                out.println("<h2>" + getDayOfweek(count) +"<h2>");
                out.println("</div>");
                out.println("<div class=\"col\">");
                if(DagLijst!=null && DagLijst.size() > 0) {
                    if(DagLijst.get(0).getGeblokeerd()){
                        out.println(
                                "<a href=\"" + "/tijdslot/deblokkeren/" + count + "\" class=\"ml-5 btn btn-primary\">Deblokkeer</a>"
                                        );
                    }
                    else{
                    out.println("<a href=\"" + "/tijdslot/blokkeren/" + count + "\" class=\"ml-2 btn btn-danger\">Blokkeer</a>");

                    }

                }

                out.println("</div>");
                out.println("<div class=\"col\">");
                if(DagLijst != null && DagLijst.size() > 0){
                    for (Tijdslot tijdslot: DagLijst
                         ) {
                        out.println("<form id=\""+tijdslot.getId() + "\" action=\"/tijdslot/update\" method=\"post\">");
                        out.println("<div class=\"row\">");

                        out.println("<div class=\"col\">"+ tijdslot.getStartuur() + "</div>");
                        out.println("<div class=\"col\">"+ tijdslot.getEinduur() + "</div>");
                        out.println("<div class=\"col\"><input type=\"number\" name=\"amount\" class=\"form-control\" value=\"" + tijdslot.getAantal() + "\">"+"</div>");
                        out.println("<input type=\"hidden\" name=\"tijdslotid\" value=\""+ tijdslot.getId()+"\">");
                        if(!tijdslot.getGeblokeerd()){
                            out.println("<div class=\"col\"><input class=\"btn btn-primary\" type=\"submit\" value=\"update\">"+"</div>");
                        }

                        out.println("</div>");
                        out.println("</form>");

                                            }

                    }

                out.println("</div>");
                out.println("</div>");
                out.println("<hr>");
                count++;
            }
            %>

        </div>
        <input type="hidden">
    </main>

    <jsp:include page="footer.jsp" />
</div>

</body>

<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.1.3/dist/js/bootstrap.bundle.min.js"
        integrity="sha384-ka7Sk0Gln4gmtz2MlQnikT1wXgYsOg+OMhuP+IlRH9sENBO0LRn5q+8nbTov4+1p"
        crossorigin="anonymous"></script>
</html>
