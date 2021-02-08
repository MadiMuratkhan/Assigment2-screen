<%@page contentType="text/html;charset=UTF-8" language="java" %>

<html>
<head>
    <title>Log In</title>
    <link rel="stylesheet" type="text/css" href="main.css">
    <script type="text/javascript">
        function fnCheckFields(form_obj){
            var error_msg = "Please fill in all required fields.";
            var is_error = false;
            for (var i = 0; form_obj_elem = form_obj.elements[i]; i++)
                if (form_obj_elem.type  "input" || form_obj_elem.type  "text")
            if (form_obj_elem.getAttribute("required") && !form_obj_elem.value)
                is_error = true;
            if (is_error) alert(error_msg);
            return !is_error;
        }
    </script>
</head>
<body>
<%--<a href="index.jsp">Home</a>--%>
<%--<form action="login" method="POST">--%>
<%--    <h2>Registration</h2>--%>
<%--</form>--%>

<div class="wrapper fadeInDown">
    <div id="formContent">
        <!-- Tabs Titles -->
        <h2 class="active"><a href="login.jsp">Sign In</a></h2>
        <h2 class="inactive underlineHover"><a href="register.jsp">Sign Up</a></h2>

        <!-- Login Form -->
        <form action="/loginAction" method="post" onsubmit="return fnCheckFields(this)">
            <p>Enter name or e-mail:</p>
            <input type="text" name="name" placeholder="login" required="required">
            <p>Enter password:</p>
            <input type="text" name="password" placeholder="password"  required="required">

            <input type="submit" name="submit" value="Log In">

        </form>

        <!-- Remind Passowrd -->
        <div id="formFooter">
            <a class="underlineHover" href="#">Forgot Password?</a>
        </div>

    </div>
</div>
</body>
</html>