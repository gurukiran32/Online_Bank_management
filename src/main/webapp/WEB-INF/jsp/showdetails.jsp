<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
    <style>
        #container {
            display: flex;
            flex-direction: column;
            min-height: 100vh;
            background-color: #f2f2f2;
        }

        #container>jsp\\:include {
            flex-shrink: 0;
        }

        #content-container {
            flex: 1;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 50px 0;
        }

        #content {
            max-width: 800px;
            background-color: #fff;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
            text-align: center;
        }

        marquee {
            margin-bottom: 20px;
        }

        marquee h2 {
            color: red;
            font-style: italic;
            font-size: 24px;
        }

        table {
            width: 100%;
            border-collapse: collapse;
            margin-bottom: 20px;
            font-size: 16px;
        }

        td {
            padding: 10px;
            border: 1px solid #ccc;
        }

        th {
            padding: 10px;
            border: 1px solid #ccc;
            background-color: #f9f9f9;
            font-weight: bold;
        }
    </style>
    <div id="container">
        <jsp:include page="home-header.jsp"></jsp:include>

        <div id="content-container">
            <div id="content">
                <center>
                    <marquee>
                        <h2 style="color: red;"><i>--- Welcome ${username} ---</i></h2>
                    </marquee><br /><br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

                    <table cellpadding="10" border="1">
                        <c:forEach items="${user}" var="user">
                            <tr>
                                <td><b>Name</b></td>
                                <td>${user.name}</td>
                            </tr>
                            <tr>
                                <td><b>Email</b></td>
                                <td>${user.email}</td>
                            </tr>
                            <tr>
                                <td><b>Account No.</b></td>
                                <td>${user.accno}</td>
                            </tr>
                            <tr>
                                <td><b>Balance</b></td>
                                <td>${user.balance}</td>
                            </tr>
                            <tr>
                                <td><b>Address</b></td>
                                <td>${user.address}</td>
                            </tr>
                            <tr>
                                <td><b>Contact No</b></td>
                                <td>${user.mobno}</td>
                            </tr>
                        </c:forEach>
                    </table>

            </div>
        </div>

        <jsp:include page="footer.jsp"></jsp:include>
    </div>