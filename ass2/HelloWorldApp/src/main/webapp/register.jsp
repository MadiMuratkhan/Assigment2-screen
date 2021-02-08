<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<head>
    <title>Sign Up</title>
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
<div class="wrapper fadeInDown">
    <div id="formContent">
        <!-- Tabs Titles -->
        <h2 class="inactive underlineHover"><a href="login.jsp">Sign In</a></h2>
        <h2 class="active"><a href="register.jsp">Sign Up</a></h2>

        <!-- Register Form -->
        <form action="/registerAction" method="post" onsubmit="return fnCheckFields(this)" >
            <p>Enter your name:</p>
            <input type="text"name="login" placeholder="Madi Muratkhan" required="required">
            <p>Enter e-mail address:</p>
            <input type="text"name="email" placeholder="madi.muratkhan@gmail.com" required="required">
            <p>Enter password:</p>
            <input type="text" name="password" placeholder="Password" required="required">
            <input type="submit" name="submit" value="Register">
        </form>
    </div>
</div>
</body>
</html>