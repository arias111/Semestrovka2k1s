<#ftl encoding="utf-8">

<!doctype html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <meta http-equiv="X-UA-Compatible" content="ie=edge">
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
    <title>Search page</title>
    <style>
        .main{
            margin:0px 0px;
            background-color:#99b1c6  ;
            background-size:100%;
        }
        .tickets{
            margin:10px 26%;
            width:600px;
            height:100px;
            background-color:#ffffff;
            border-radius:10px;
        }
        .com{
            margin:0px 0px;
            text-align:center;
        }
        .depT{
            margin:20px 50px;
        }
        .ariT{
            margin:-45px 320px;
        }
        .depP{
            margin:47px 50px;
        }
        .ariP{
            margin:-65px 320px;
        }
        .notF{
            margin:30px 0px;
            text-align:center;
        }
        .price{
            margin:0px 480px;
        }
    </style>
</head>
<body class="main">
<form method="post" action="/mainPage">
</form>
<p>
    <input type="submit" value="Отправить" onclick="f()"/>
</p>
<script type="application/javascript">
    function f() {
        $.ajax({
            url: "/workouts",
            // data: {"query": $("#query").val()},
            dataType: "json",
            success: function (msg) {
                // document.getElementById("workouts").remove();
                // if (msg.length < 1) {
                //     $("body").append("<div class=\"workouts\">\n" +
                //         "<h3 class=\"notF\">NOT FOUND</h3>\n" +
                //         "</div>");
                // } else {
                //     for (var i = 0; i < msg.length; i++) {
                //         $("body").append("<div id=\"tickets\" class=\"tickets\">\n" +
                //             "<p><h3 class=\"com\">" + msg[i].workouts + "</h3></p>\n" +
                //             "</div>");
                //     }
                // }
                for (var i = 0; i < msg.length; i++) {
                    $("body").append("<p>" + msg[i].workouts + "</p>")
                }
            }
        })
    }
</script>
</body>
</html>