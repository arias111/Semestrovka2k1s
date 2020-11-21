<#ftl encoding="utf-8">
<!DOCTYPE html>
<html lang="ru">

<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"
      integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">
<link href="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<link href='http://fonts.googleapis.com/css?family=Open+Sans' rel='stylesheet' type='text/css'>
<script src="//maxcdn.bootstrapcdn.com/bootstrap/3.3.0/js/bootstrap.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.1.min.js"></script>
<#--скорее всего надо будет установить либы чтобы заработало (аль+энтер жмешь и ура все работает)-->
<head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="assets/css/style.css">
    <title>Home page</title>
</head>

<style>
    body
    {
        background: #333333;
        font-family: 'Open Sans', sans-serif;
        color: white;
    }

    .fb-profile img.fb-image-lg{
        z-index: 0;
        width: 100%;
        margin-bottom: 10px;
    }

    .fb-image-profile
    {
        margin: -90px 10px 0px 50px;
        z-index: 9;
        width: 20%;
    }

    @media (max-width:768px)
    {

        .fb-profile-text>h1{
            font-weight: 700;
            font-size:16px;
        }

        .fb-image-profile
        {
            margin: -45px 10px 0px 25px;
            z-index: 9;
            width: 20%;
        }
    }
    .navbar-dark {
        /*background: #000;*/
        background: #333333;
        transition: background-color .15s linear;
    }
    .fixed-top {
        position: fixed;
        top: 0;
        right: 0;
        left: 0;
        z-index: 1030;
    }
    .navbar {
        position: relative;
        display: flex;
        flex-wrap: wrap;
        align-items: center;
        justify-content: space-between;
        padding: 0.8333333333rem 3rem;
    }
</style>
<body>
    <div class = "top_menu">
        <nav class="navbar navbar-expand-lg fixed-top navbar-dark">
            <a class="mx-auto navbar-brand" href="http://localhost:8086/mainPage">
                <#--                    TODO(поменяй на 8081 и ссылку на сервлет с меню)-->
                <img src="https://dfd5gcc6b7vw5.cloudfront.net/assets/logo-8a7bb8b7de46c1b7163081c1d735c55860cf8d83689ad0a98a1865826a82b7cc.svg" width="34" height="34" class="d-inline-block align-top" alt="Thenx">
            </a>    </nav>
    </div>
<div class="container">
    <div class="fb-profile">
        <img align="left" class="fb-image-lg" src="../../images/favouriteman.jpg" alt="Profile image example" height="250px" width="500px"/>
        <img align="left" class="fb-image-profile thumbnail" src="../../images/" alt="Profile image example"/>
        <div class="fb-profile-text">
            <h1>$username</h1>
<#--            че ты там передаешь $username вроде, поменяй-->
            <p>da</p>
<#--            тут я хз что вставлять, у тебя атрибутов то больше нет у юзера-->
        </div>
    </div>
</div>
</body>
</html>