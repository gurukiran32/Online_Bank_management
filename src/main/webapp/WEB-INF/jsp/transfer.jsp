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

    h2 {
        margin-bottom: 20px;
    }

    form {
        display: flex;
        flex-direction: column;
    }

    form input[type="hidden"] {
        display: none;
    }

    form input[type="text"] {
        padding: 10px;
        border: 1px solid #ccc;
        margin-bottom: 10px;
        width: 100%;
        box-sizing: border-box;
        font-size: 16px;
    }

    form input[type="submit"],
    form input[type="reset"] {
        padding: 10px;
        border: none;
        background-color: #007bff;
        color: #fff;
        font-size: 16px;
        cursor: pointer;
    }

    form input[type="submit"]:hover,
    form input[type="reset"]:hover {
        background-color: #0069d9;
    }

    form input[type="submit"]:active,
    form input[type="reset"]:active {
        background-color: #005cbf;
    }

    form input[type="submit"]:focus,
    form input[type="reset"]:focus {
        outline: none;
        box-shadow: 0 0 0 3px rgba(0, 123, 255, 0.5);
    }
</style>
<div id="container">
    <jsp:include page="home-header.jsp"></jsp:include>

    <script type="text/javascript">

        function check() {

            if (document.f1.amount.value == "") {
                alert("plz enter amount!");
                return false;
            }

            if (document.f1.user.value == "") {
                alert("plz enter username!");
                return false;
            }

            if (document.f1.user.value != document.f1.reuser.value) {
                alert("username does not match!");
                return false;
            }


        }
    </script>

    <div id="content-container">
        <div id="content">
            <center>
                <br><br>
                <h2>Transfer :-</h2><br /><br />

                <div id="messageBox">
                    ${message}
                </div>

                <form action="transfermoney" name="f1" onsubmit="return check();" method="post">
                    <input type="hidden" id="username" name="username" value=${username}>
                    <b>Amount:</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <input type="text" name="amount" /><br /><br />
                    <b>Destination Username:&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;</b> <input type="text"
                        name="user" /><br /><br />
                    <b>Retype
                        Username:&nbsp;</b>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                    <input type="text" name="reuser" /><br /><br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>&nbsp;
                    <input type="submit" value="Transfer" />
                </form><br />
            </center>

        </div>
    </div>
    <jsp:include page="footer.jsp"></jsp:include>
</div>