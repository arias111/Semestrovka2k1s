<#ftl encoding="utf-8">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>login</title>
</head>
<body>
<#if message?has_content>
    <p>${message}</p>
</#if>
<form method="post" action="/loginn">
    <label>login input</label>
    <input type="text" name="username" placeholder="enter login"/>
    <input type="password" name="password" placeholder="enter password"/>
    <input type="submit">Confirm</input>
    <a href="http://localhost:8081/registration">
        <button type="button" class="registration">REGISTRATION</button>
    </a>
</form>
</body>
</html>