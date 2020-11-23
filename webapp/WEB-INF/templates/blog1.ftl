<#ftl encoding="utf-8">
<!DOCTYPE html>
<html lang="ru">

<#--<link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.5.3/dist/css/bootstrap.min.css"-->
<#--      integrity="sha384-TX8t27EcRE3e/ihU7zmQxVncDAy5uIKz4rEkgIXeMed4M0jlfIDPvg6uqKI2xXr2" crossorigin="anonymous">-->
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script><head>
    <meta charset="UTF-8">
    <link rel="stylesheet" href="css/catStyle.css">
    <link rel="stylesheet" href="modal.css">
<#--    <script src="modal.js"></script>-->
    <title>Blog page</title>
        <script src="../templates/navbar.js"></script>

</head>
<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">

<#--<nav class="navbar navbar-expand-lg navbar-light bg-header">-->
<#--    <div class="collapse navbar-collapse" id="navbarSupportedContent">-->
<div class="navbar navbar-expand-md navbar-dark bg-dark mb-4" role="navigation">
    <img src="https://dfd5gcc6b7vw5.cloudfront.net/assets/logo-8a7bb8b7de46c1b7163081c1d735c55860cf8d83689ad0a98a1865826a82b7cc.svg" width="34" height="34" class="d-inline-block align-top" alt="Thenx">
    <a class="navbar-brand" href="#" margin-left = 23%>Thenx</a>
    <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarCollapse" aria-controls="navbarCollapse" aria-expanded="false" aria-label="Toggle navigation">
        <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarCollapse">
        <ul class="navbar-nav mr-auto">
            <li class="nav-item">
                <a class="nav-link" href="/mainPage">Главная страница<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/profil">Профиль<span class="sr-only">(current)</span></a>
            </li>
            <li class="nav-item">
                <a class="nav-link" href="/tech">Тренировки<span class="sr-only">(current)</span></a>
            </li>
<#--            <li class="nav-item">-->
<#--            <input type="submit" class="btn" name="workout" value="workout"/>-->
<#--            </li>-->
            <li class="nav-item dropdown">
                <a class="nav-link dropdown-toggle" id="dropdown1" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">Какаято штука</a>
                <ul class="dropdown-menu" aria-labelledby="dropdown1">
                    <li class="dropdown-item" href="#"><a>Сделать то</a></li>
                    <li class="dropdown-item" href="#"><a>Сделать се</a></li>
                </ul>
            </li>
        </ul>
        <!--        <form class="form-inline mt-2 mt-md-0">-->
        <!--            <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">-->
        <!--            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>-->
        <!--        </form>-->
    </div>
</div>
<#--    <script src="modal.js"></script>-->
<#--    <script>-->
<#--        (function () {-->
<#--            // создаём модальное окно-->
<#--            var modal = $modal();-->
<#--            // при клике по кнопке #show-modal-->
<#--            document.querySelector('#show-modal').addEventListener('click', function () {-->
<#--                // отобразим модальное окно-->
<#--                modal.show();-->
<#--            });-->
<#--        })();-->
<#--    </script>-->
<#--    <br>-->
    <div class="container">
        <h3 class="pb-3 mb-4 font-italic border-bottom">
             Workouts
        </h3>
    <div class="row">
        <div class="col-md-4">
            <div class="card mb-4">
                <img class="card-img-top" src="https://cdn.shopify.com/s/files/1/2531/2180/articles/abs_540x.jpg?v=1605062900" alt="Card image cap">
                <div class="card-body">
                    <p class="card-text">Тренировка для всего тела</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card mb-4">
                <img class="card-img-top" src="https://cdn.shopify.com/s/files/1/2531/2180/articles/super_human_540x.jpg?v=1605491405" alt="Card image cap">
                <!--            меняешь тут ссылку на фоточку и в остальных так же-->
                <div class="card-body">
                    <p class="card-text">6 простых упражнений на пресс</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card mb-4">
                <img class="card-img-top" src="https://cdn.shopify.com/s/files/1/2531/2180/articles/firstpullup_540x.jpg?v=1604337311" alt="Card image cap">
                <div class="card-body">
                    <p class="card-text">Как сделать первое подтягивание</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card mb-4">
                <img class="card-img-top" src="https://cdn.shopify.com/s/files/1/2531/2180/articles/armss_540x.jpg?v=1604335770" alt="Card image cap">
                <div class="card-body">
                    <p class="card-text">Прокачай большие руки</p>
                </div>
            </div>
        </div>

        <div class="col-md-4">
            <div class="card mb-4">
                <img class="card-img-top" src="https://cdn.shopify.com/s/files/1/2531/2180/articles/back_540x.jpg?v=1604335785" alt="Card image cap">
                <div class="card-body">
                    <p class="card-text">супер эффективная тренировка спины</p>
                </div>
            </div>
        </div>
        <div class="col-md-4">
            <div class="card mb-4">
                <img class="card-img-top" src="https://cdn.shopify.com/s/files/1/2531/2180/articles/chestgains_540x.jpg?v=1600651645" alt="Card image cap">
                <div class="card-body">
                    <p class="card-text">Тренировка отжиманий</p>
                </div>
            </div>
        </div>
    </div>
</div>
</div>
</html>