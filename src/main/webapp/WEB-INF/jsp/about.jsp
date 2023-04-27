<style>
    #container {
        max-width: 800px;
        margin: 0 auto;
        background-color: #f2f2f2;
    }

    #header {
        background-image: url('header.jpg');
        background-color: #333;
        color: white;
        font-size: 24px;
        text-align: center;
        padding: 10px;
    }

    #content {
        font-size: 16px;
        line-height: 1.5;
        padding: 20px;
    }

    #aside {
        float: right;
        width: 30%;
        margin: 20px;
        padding: 10px;
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

            <p>

                Online banking is the practice of making bank
                transactions or paying bills via the Internet.
                Thanks to technology, and the Internet in
                particular, people no longer have to leave the
                house to shop, communicate, or even do their
                banking. Banking online allows a customer to
                make deposits, withdrawals, and pay bills all with
                the click of a mouse.<br /><br />

                Since the cost to the bank is minimal, the cost to
                the consumer, in many cases, is also minimal.
                While there may be a fee for some online banking
                transactions, they are often extremely low. Those
                who use this type of banking often agree it's
                worth every penny , and not having to spend all
                Saturday morning standing in a crowded bank
                line is justification for most. It can even pay for
                itself since costs like postage and ATM fees are
                reduced.<br /><br />

                Online banking also eliminates paper waste, which
                is a plus not only for those who have to handle
                all the paper work, but also for the environment.
                Of course, there are also disadvantages. Security
                is always an issue with Internet transactions.
                Although information is encrypted , and the
                chances of an account being hacked are slim, it
                happens. Banks pay a lot of money to install high
                tech firewalls, however, and chances are good that
                a customer's money is in good hands.<br /><br />



            </p>
        </div>

    </div>
    <jsp:include page="footer.jsp"></jsp:include>

</div>