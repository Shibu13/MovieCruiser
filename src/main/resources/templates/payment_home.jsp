<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en" xmlns:th="http://www.thymeleaf.org">
<head>
    <meta charset="UTF-8"/>
    <title>Payment</title>
    <link rel="stylesheet" th:href="@{/style1.css}"/>
    <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css"/>
    <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
    <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
</head>
<body>
<form  action="/pgredirect">
    <div class="container register">
        <div class="row">
            <div class="col-md-3 register-left">
                <img src="https://image.ibb.co/n7oTvU/logo_white.png" alt=""/>
                <h3>Welcome</h3>
                
            </div>
            <div class="col-md-9 register-right">
                <div class="tab-content" id="myTabContent">
                    <div class="tab-pane fade show active" id="home" role="tabpanel" aria-labelledby="home-tab">
                        <h3 class="register-heading">Welcome to Paytm Payment</h3>
                        <div class="row register-form">
                            <div class="col-md-10">
                                <div class="form-group">
                                    <input id="ORDER_ID" tabindex="1" maxlength="20" size="20" value="${orderid}"
                                           name="ORDER_ID" placeholder="Order ID" autocomplete="off" class="form-control" >
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Customer ID" value="${custid}"
                                           name="CUST_ID"/>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="INDUSTRY_TYPE_ID" value="Retail"
                                           name="INDUSTRY_TYPE_ID"/>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Channel" value="WEB"
                                           name="CHANNEL_ID"/>
                                </div>
                                <div class="form-group">
                                    <input type="text" class="form-control" placeholder="Amount" value="${TXN_AMT}"
                                           name="TXN_AMOUNT"/>
                                </div>
                                <!--  <input type="submit" class="btnRegister"  value="Pay with Paytm"/>   -->
                                <button type="submit" class="btnRegister" style="align : center">Pay with Paytm</button>
                            </div>
                        </div>
                    </div>
                </div>

            </div>
        </div>
    </div>
</form>
</body>
</html>