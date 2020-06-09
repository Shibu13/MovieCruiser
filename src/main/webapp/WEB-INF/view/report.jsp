<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>

<head>
    <meta charset="UTF-8"/>
    <title>Payment Report</title>
    <link href="//netdna.bootstrapcdn.com/bootstrap/3.0.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"/>
    <script src="//netdna.bootstrapcdn.com/bootstrap/3.0.0/js/bootstrap.min.js"></script>
    <script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
</head>
<body>
<div class="container">
    <div class="row">
        <div class="well col-xs-10 col-sm-10 col-md-6 col-xs-offset-1 col-sm-offset-1 col-md-offset-3">
            <div class="row">
                <div class="col-xs-6 col-sm-6 col-md-6">
                    <strong th:text="${result}"></strong>
                    <br>
                </div>
                <div class="col-xs-6 col-sm-6 col-md-6 text-right">
                    <p>
                        <em>Receipt #: 34522677W</em>
                    </p>
                </div>
            </div>
            <div class="row">
                <div class="text-center">
                    <h1>Receipt</h1>
                </div>
               
                <table class="table table-hover">
                    <thead>
                    <tr>
                        <th>Componentssss</th>
                    </tr>
                    </thead>
                    <tbody>

                    <tr th:each="entry : ${parameters}">

                        <td th:text="${entry.key} + '  : -  ' + ${entry.value}"></td>
                     
                    </tr>
                   
                   
                   
                    <c:forEach items="${parameters}" var="entry">
<tr>
   
    <td><c:out value="${entry.key}" /></td>
    <td><c:out value="${entry.value}" /></td>
<tr>
</c:forEach>
                   
                   
                   
                   
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</div>
</body>
</html>