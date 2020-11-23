<#ftl encoding="utf-8">
<!DOCTYPE html>
<html lang="ru">
<meta charset="UTF-8">
<script src="navbar.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<!------ Include the above in your HEAD tag ---------->
<head>

    <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.2.0/css/all.css" integrity="sha384-hWVjflwFxL6sNzntih27bfxkr27PmbbK/iSvJ+a4+0owXq79v+lsFkW54bOGbiDQ" crossorigin="anonymous">
    <div class="navbar navbar-expand-md navbar-dark bg-dark mb-4" role="navigation">
        <img src="https://dfd5gcc6b7vw5.cloudfront.net/assets/logo-8a7bb8b7de46c1b7163081c1d735c55860cf8d83689ad0a98a1865826a82b7cc.svg" width="34" height="34" class="d-inline-block align-top" alt="Thenx">
        <a class="navbar-brand" href="#">Thenx</a>
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
                    <a class="nav-link" href="/blog">Блог<span class="sr-only">(current)</span></a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="/tech">Тренировки<span class="sr-only">(current)</span></a>
                </li>
            </ul>
            <!--        <form class="form-inline mt-2 mt-md-0">-->
            <!--            <input class="form-control mr-sm-2" type="text" placeholder="Search" aria-label="Search">-->
            <!--            <button class="btn btn-outline-success my-2 my-sm-0" type="submit">Search</button>-->
            <!--        </form>-->
        </div>
    </div>

    <style>
        body { -webkit-font-smoothing: antialiased; text-rendering: optimizeLegibility; font-family: 'Roboto', sans-serif; letter-spacing: 0px; font-size: 16px; color: #7d7f82; font-weight: 400; line-height: 32px; }
        h1, h2, h3, h4, h5, h6 { color: #26282c; margin: 0px 0px 12px 0px; font-family: 'Glegoo', serif; font-weight: 700; line-height: 1; }
        h1 { font-size: 36px; }
        h2 { font-size: 26px; line-height: 38px; }
        h3 { font-size: 22px; line-height: 32px; }
        h4 { font-size: 20px; }
        h5 { font-size: 16px; line-height: 27px; }
        h6 { font-size: 12px; }
        p { margin: 0 0 20px; line-height: 1.7; }
        p:last-child { margin: 0px; }
        ul, ol { font-family: 'Roboto', sans-serif; }
        a { text-decoration: none; color: #7d7f82; -webkit-transition: all 0.3s; -moz-transition: all 0.3s; transition: all 0.3s; }
        a:focus, a:hover { text-decoration: none; color: #fe5b10; }



        .video-testimonial-block { position: relative; width: auto; height: 206px; overflow: hidden; margin-bottom: 30px; }
        .video-testimonial-block .video-thumbnail { height: 100%; width: 100%; position: absolute; z-index: 1; background-size: cover; top: 0; left: 0; }
        .video-testimonial-block .video { }
        .video-testimonial-block .video iframe { position: absolute; top: 0; left: 0; width: 100%; height: 100%; border: 0px; }
        .video-testimonial-block .video-play { position: absolute; z-index: 2; top: 50%; left: 50%; margin-left: -40px; margin-top: -18px; text-decoration: none; }
        .video-testimonial-block .video-play::before { content: "\f144"; font: normal normal normal 14px/1; font-family: 'Font Awesome\ 5 Free'; font-weight: 900; font-size: inherit; text-rendering: auto; -webkit-font-smoothing: antialiased; -moz-osx-font-smoothing: grayscale; font-size: 50px; color: #b3b5bc; }
        .video-testimonial-block .video-play:hover::before { color: #172651; }
        .mb10{margin-bottom:10px;}
        .section-title { margin-bottom: 40px; }
    </style>
    <script>
        $(".video-play").on('click', function(e) {
            e.preventDefault();
            var vidWrap = $(this).parent(),
                iframe = vidWrap.find('.video iframe'),
                iframeSrc = iframe.attr('src'),
                iframePlay = iframeSrc += "?autoplay=1";
            vidWrap.children('.video-thumbnail').fadeOut();
            vidWrap.children('.video-play').fadeOut();
            vidWrap.find('.video iframe').attr('src', iframePlay);


        });

    </script>
</head>

<link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.0.10/css/all.css" integrity="sha384-+d0P83n9kaQMCwj8F4RJB66tzIwOKmrdb46+porD/OvrJ+37WqIM7UoBtwHO6Nlg" crossorigin="anonymous">
<!-- video-testimonial-section -->
<div class="space-medium">
    <div class="container">
        <div class="row">
            <div class="offset-xl-2 col-xl-8 offset-lg-2 col-lg-8 col-md-12 col-sm-12 col-12 text-center">
                <!-- section-title -->
                <div class="section-title">
                    <h2>Видео трени</h2>
                    <p>Трени от Наиля</p>
                </div>
            </div>
            <!-- /.section-title -->
        </div>
        <div class="row">
            <!-- video-testimonail -->
            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12">
                <div class="video-testimonial-block">
                    <div class="video-thumbnail"><img src="https://res.cloudinary.com/thenx-production/image/upload/w_450/v1556029034/workouts/3335/1556028933.jpg" alt="" class="img-fluid"></div>
                    <div class="video">
                        <iframe src="https://www.youtube.com/watch?v=vr7R-yRFqgg" allowfullscreen>
                        </iframe>
                    </div>
                    <a href="#" class="video-play"></a>
                </div>
                <div class="video-testimonial-content">
                    <h4 class="mb10">Как Убрать Жир С Живота (ЭКСТРЕМАЛЬНЫЙ СПРСОБ!!)</h4>
                </div>
            </div>
            <!-- /.video-testimonail -->
            <!-- video-testimonail -->
            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12">
                <div class="video-testimonial-block">
                    <div class="video-thumbnail"><img src="https://res.cloudinary.com/thenx-production/image/upload/w_450/v1558975698/programs/48/1558975688.jpg" alt="" class="img-fluid"></div>
                    <div class="video">
                        <iframe src="https://www.youtube.com/watch?v=NgfkbU8Rhho"
                                allowfullscreen>
                        </iframe>
                    </div>
                    <a href="#" class="video-play"></a>
                </div>
                <div class="video-testimonial-content">
                    <h4 class="mb10">Делайте это КАЖДЫЙ день! (ЕСЛИ ХОЧЕШЬ 6 КУБИКОВ ПРЕССА)</h4>
                </div>
            </div>
            <!-- /.video-testimonail -->
            <!-- video-testimonail -->
            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12">
                <div class="video-testimonial-block">
                    <div class="video-thumbnail"><img src="https://res.cloudinary.com/thenx-production/image/upload/w_450/v1559250020/programs/46/1559249983.jpg" alt="" class="img-fluid"></div>
                    <div class="video">
                        <iframe src="https://www.youtube.com/watch?v=E5_SDJXuGkg" allowfullscreen>
                        </iframe>
                    </div>
                    <a href="#" class="video-play"></a>
                </div>
                <div class="video-testimonial-content">
                    <h4 class="mb10">ЛУЧШАЯ ТРЕНИРОВКА ГРУДИ в Домашних Условиях! (БЕЗ КАКОГО ЛИБО ОБОРУДОВАНИЯ)
                    </h4>
                </div>
            </div>
            <div class="col-xl-4 col-lg-4 col-md-6 col-sm-12 col-12">
                <div class="video-testimonial-block">
                    <div class="video-thumbnail"><img src="https://res.cloudinary.com/thenx-production/image/upload/w_450/v1558975663/programs/45/1558975654.jpg"></div>
                    <div class="video">
                        <iframe src="https://www.youtube.com/embed/KEiAVv1UNac" allowfullscreen>
                        </iframe>
                    </div>
                    <a href="#" class="video-play"></a>
                </div>
                <div class="video-testimonial-content">
                    <h4 class="mb10">5 Вещей, Которые Я Хотел Бы Знать (КОГДА НАЧИНАЛ ЗАНИМАТЬСЯ ВОРКАУТОМ)</h4>
                </div>
            </div>


            <!-- /.video-testimonail -->
        </div>

    </div>
</div>
<!-- /.video-testimonial-section -->