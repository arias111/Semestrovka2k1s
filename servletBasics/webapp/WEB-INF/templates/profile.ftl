<#ftl encoding="utf-8">
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <title>Profile view page!</title>
</head>
<body class="main">
<form method="post" action="/profile">
    <input type="submit" value="exit" name="exit" class="enter"/>
</form>
<img src ="${user.getImagePath()}" height="500" width="500"/>
</body>
</html>