<style>
    form {
        max-width: 400px;
        margin: 0 auto;
        padding: 20px;
        background-color: #f2f2f2;
        border: 1px solid #ccc;
    }

    input[type="text"],
    input[type="password"] {
        width: 100%;
        padding: 10px;
        margin: 10px 0;
        border: none;
        border-radius: 5px;
        background-color: #fff;
    }

    input[type="submit"],
    input[type="reset"] {
        display: inline-block;
        padding: 10px 20px;
        margin: 10px 5px;
        border: none;
        border-radius: 5px;
        background-color: #333;
        color: #fff;
        font-size: 16px;
        cursor: pointer;
    }

    input[type="submit"]:hover {
        background-color: #fff;
        color: #333;
    }

    input[type="reset"]:hover {
        background-color: #fff;
        color: #333;
    }

    form b {
        font-weight: bold;
    }
</style>
<center>
    <form name="f2" action="validateadminlogin" onsubmit="return check();" method="POST"><br>
        <b>Username:</b> <input type="text" name="username" /><br><br>
        <b>Password: </b>&nbsp;<input type="password" name="password" /><br><br>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;<input
            type="submit" value="Submit" />
        &nbsp;&nbsp;&nbsp;&nbsp;<input type="reset" value="Clear" />
    </form>
</center>