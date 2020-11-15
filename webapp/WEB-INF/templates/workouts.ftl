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