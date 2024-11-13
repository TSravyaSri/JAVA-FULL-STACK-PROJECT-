<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <title>Registration form</title>
<style>
        body {
            background-color: #f1f1f1;
        }

        #register_form {
            margin: 100px auto;
            width: 400px;
            padding: 20px;
            background-color: #ffffff;
            border: 2px solid #000000;
            border-radius: 20px;
        }

        #heading {
            color: #000000;
            text-align: center;
            text-decoration: underline;
        }

        table {
            width: 100%;
            margin-top: 30px;
            border-collapse: collapse;
        }

        tr {
            font-size: 18px;
            color: #210052;
        }

        td {
            padding: 10px;
        }

        input {
            font-size: 16px;
            border-radius: 2px;
            padding: 5px;
            width: 100%;
        }

        #submit {
            font-size: 18px;
            border-radius: 5px;
            margin-top: 10px;
            padding: 10px;
            background-color: #4CAF50;
            color: #ffffff;
            cursor: pointer;
            width: 100%;
            text-align: center;
        }

        #submit:hover {
            background-color: #45a049;
        }

        .error {
            color: red;
            font-size: 14px;
        }
    </style>


    <script>
    function validateForm() {
        var uname = document.forms["registerForm"]["uname"].value;
        var password = document.forms["registerForm"]["password"].value;
        var email = document.forms["registerForm"]["email"].value;
        var phone = document.forms["registerForm"]["phone"].value;

        if (uname === "" || password === "" || email === "" || phone === "") {
            alert("All fields must be filled out");
            return false;
        }

        var emailPattern = /^[\w-]+(\.[\w-]+)*@([\w-]+\.)+[a-zA-Z]{2,7}$/;
        if (!email.match(emailPattern)) {
            alert("Please enter a valid email address");
            return false;
        }

        var phonePattern = /^\d{10}$/;
        if (!phone.match(phonePattern)) {
            alert("Please enter a valid 10-digit phone number");
            return false;
        }

        var passwordPattern = /^(?=.*[a-z])(?=.*[A-Z])(?=.*\d)(?=.*[@$!%*?&])[A-Za-z\d@$!%*?&]{8,}$/;
        if (!password.match(passwordPattern)) {
            alert("Password must be at least 8 characters long and contain at least one uppercase letter, one lowercase letter, one number, and one special character");
            return false;
        }

        return true;
    }

    </script>
</head>
<body style="background-color: #f1f1f1;">
<h1 id="heading">Registration form</h1>
<div id="register_form">
    <form action="Register" method="post" name="registerForm" onsubmit="return validateForm()">
        <table>
            <tr>
                <td>User Name: </td>
                <td><input type="text" name="uname"></td>
            </tr>
            <tr>
                <td>Password: </td>
                <td><input type="password" name="password"></td>
            </tr>
            <tr>
                <td>Email: </td>
                <td><input type="text" name="email"></td>
            </tr>
            <tr>
                <td>Phone: </td>
                <td><input type="text" name="phone"></td>
            </tr>
            <tr>
                <td></td>
                <td><input type="submit" value="Register" id="submit"></td>
            </tr>
        </table>
    </form>
</div>
</body>
</html>
