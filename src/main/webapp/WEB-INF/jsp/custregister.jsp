<style>
    #container {
        max-width: 800px;
        margin: 0 auto;
        background-color: #f2f2f2;
    }

    #content-container {
        display: flex;
        flex-wrap: wrap;
    }

    #content {
        flex-basis: 100%;
        font-size: 16px;
        line-height: 1.5;
        padding: 20px;
    }

    marquee {
        margin-bottom: 20px;
    }

    marquee h2 {
        color: red;
        font-style: italic;
    }

    form {
        max-width: 500px;
        margin: 0 auto;
    }

    form input[type="text"],
    form input[type="password"] {
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
</style>
<script type="text/javascript">

    function check() {
        if (document.f1.username.value == "") {
            alert("plz enter username!");
            return false;
        }

        if (document.f1.password.value == "") {
            alert("plz enter password!");
            return false;
        }

        if (document.f1.password.value != document.f1.repassword.value) {
            alert("password does not match!");
            return false;
        }

        if (document.f1.amount.value == "") {
            alert("plz enter amount!");
            return false;
        }

        if (document.f1.address.value == "") {
            alert("plz enter address!");
            return false;
        }

        if (document.f1.phone.value == "") {
            alert("plz enter phone no.!");
            return false;
        }
    }
</script>
<div id="container">
    <link href="css.css" rel="stylesheet" type="text/css">
    <jsp:include page="admin-header.jsp"></jsp:include>

    <div id="content-container">
        <div id="content">
            <center>
                <marquee>
                    <h2 style="color: red;"><i>--- Welcome ${username} ---</i></h2>
                </marquee><br /><br />
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;

        </div>
        <center>
            <br />
            <h2>Open Account :-</h2><br /><br />
            <form name="f1" action="addcust" onsubmit="return check();" method="post">
                <b>
                    Name: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="name" /><br /><br />
                    Username: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"
                        name="username" /><br /><br />
                    Acc. No.: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="accno" /><br /><br />
                    Password: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="password"
                        name="password" /><br /><br />
                    Re-Password: &nbsp;<input type="password" name="repassword" /><br /><br />
                    Balance: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"
                        name="balance" /><br /><br />
                    Address: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"
                        name="address" /><br /><br />
                    IFSC: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text"
                        name="ifsc" /><br /><br />
                    Phone No: &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input type="text" name="mobno" /><br /><br /></b>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                <input type="submit" value="Submit" />
                &nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="Clear" />
            </form>
        </center>
    </div>
</div>
</div>