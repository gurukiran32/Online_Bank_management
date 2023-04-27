<style>
    #content-container {
        width: 100%;
        display: flex;
        justify-content: center;
        align-items: center;
        background-color: #f2f2f2;
        padding: 50px 0;
    }

    #content {
        max-width: 500px;
        background-color: #fff;
        padding: 40px;
        border-radius: 10px;
        box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        text-align: center;
    }

    #content h2 {
        font-size: 28px;
        font-weight: bold;
        margin-bottom: 20px;
    }

    form {
        max-width: 400px;
        margin: 0 auto;
    }

    form input[type="text"] {
        display: block;
        width: 100%;
        padding: 10px;
        margin-bottom: 20px;
        border: 1px solid #ccc;
        border-radius: 5px;
        font-size: 16px;
    }

    form input[type="submit"],
    form input[type="reset"] {
        display: inline-block;
        margin-right: 10px;
        padding: 10px 20px;
        border: none;
        border-radius: 5px;
        background-color: #333;
        color: #fff;
        font-size: 16px;
        cursor: pointer;
    }

    form input[type="submit"]:hover,
    form input[type="reset"]:hover {
        background-color: #555;
    }

    b {
        font-size: 20px;
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

        }
    </script>

    <div id="content-container">
        <div id="content">
            <center>



                <br><br>
                <h2>Withdraw :-</h2><br /><br />

                <div id="messageBox">
                    ${message}
                </div>

                <form action="withdraw" name="f1" onsubmit="return check();" method="post">
                    <input type="hidden" id="username" name="username" value=${username}>
                    <b>Amount:</b> &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp; &nbsp; &nbsp; &nbsp;
                    &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; &nbsp; <input type="text" name="amount" /><br /><br />
                    &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; <br>&nbsp;
                    <input type="submit" value="Withdraw" />
                    &nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="Clear" />
                </form><br />
            </center>

        </div>

    </div>
    <jsp:include page="footer.jsp"></jsp:include>
</div>