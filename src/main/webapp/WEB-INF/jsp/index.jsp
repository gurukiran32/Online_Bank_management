<style>
        #container {
                max-width: 800px;
                margin: 0 auto;
                background-color: #f2f2f2;
        }

        #content {
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

        #content img {
                display: block;
                margin: 0 auto;
        }

        #content p {
                margin-top: 20px;
        }

        #footer {
                background-color: #333;
                color: white;
                text-align: center;
                padding: 10px;
        }
</style>
<div id="container">
        <jsp:include page="header.jsp"></jsp:include>

        <div id="content-container">
                <div id="content">

                        <marquee>
                                <h2 style="color: red;"><i>

                                                - Welcome Guest -


                                        </i></h2>
                        </marquee><br /><br />
                        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                        <center><img src="images/index.jpg" width="550" height="400px" /></center>
                </div>

                <p>* Online banking is the practice of making bank transactions or paying bills via the Internet.
                        <br /></br>* Banking online allows a customer to make deposits, withdrawals, transfers with the
                        click of a mouse.
                        <br /><br />* Online banking also eliminates paper waste, which is a plus not only for those who
                        have to handle all the paper work, but also for the environment.
                        <br /><br />* Security is always an issue with Internet transactions. Although information is
                        encrypted , and the chances of an account being hacked are slim, it happen.
                </p>

        </div>

</div>
<jsp:include page="footer.jsp"></jsp:include>

</div>