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
        flex-basis: 70%;
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

    #content h2 {
        color: green;
    }

    #aside {
        flex-basis: 30%;
        background-color: #333;
        color: #fff;
        padding: 20px;
    }

    #aside form {
        margin-top: 20px;
    }

    #aside h2 {
        color: #fff;
    }
</style>
<div id="container">

    <div id="content-container">
        <div id="content">
            <center>
                <marquee>
                    <h2 style="color: red;"><i>- Welcome Guest -</i></h2>
                </marquee><br /><br />
                <h2 style="color: green;">You are logged out!!</h2>
                &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            </center>
        </div>

        <div id="aside">
            <h2>Login :-</h2>
            <jsp:include page="login.jsp"></jsp:include>
        </div>

    </div>

</div>