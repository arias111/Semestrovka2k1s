<#ftl encoding="utf-8">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>mainPage</title>
</head>
<body class="mainPage">
<#if message?has_content>
    <p>${message}</p>
</#if>
<form method="post" action="/mainPage">
    <div class="block">
        <input type="submit" name="start" value="mainPage" class="start"/>
    </div>
</form>
</body>
</html>
