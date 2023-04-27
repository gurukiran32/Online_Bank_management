<style>
    #navigation {
        background-color: #333;
        color: #fff;
        font-size: 18px;
        text-align: center;
    }

    #navigation ul {
        list-style: none;
        margin: 0;
        padding: 0;
    }

    #navigation li {
        display: inline-block;
        margin: 0 10px;
    }

    #navigation a {
        display: block;
        padding: 10px;
        text-decoration: none;
        color: #fff;
    }

    #navigation a:hover {
        background-color: #fff;
        color: #333;
    }
</style>
<div id="navigation">
    <ul>

        <li> <a href="emphome">Home</a></li>
        <li><a href="showemp">Show All Employees</a></li>
        <li><a href="addcust">Add Customer</a></li>
        <li><a href="deposit">Deposit</a></li>
        <li><a href="withdraw">Withdraw</a></li>
        <li><a href="getDetails?username=${username}">View Account</a></li>
        <li> <a href="logout">Logout</a></li>

    </ul>
</div>