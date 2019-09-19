<%@ page import="java.util.Map" %>
<%@ page import="java.util.HashMap" %>
<%@ page import="java.util.function.DoubleUnaryOperator" %><%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 9/19/2019
  Time: 4:08 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Simple Dictionary</title>
</head>
<body>
    <%
        Map<String,String> dic = new HashMap<>();
     %>
    <%
        dic.put("hello","xin chao");
        dic.put("cat","meo");
        dic.put("dog","cho");
        dic.put("how","the nao");
        dic.put("eat","an");
        dic.put("banana","chuoi");
        String search = request.getParameter("search").toLowerCase();
        String result = dic.get(search);
        if (result != null) {
            out.println("word :" + search + "<br/>");
            out.println("result: " + result);
        }else {
            out.println("Not found");
        }
    %>


</body>
</html>
