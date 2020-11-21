<#ftl encoding="utf-8">
<#include "main.ftl"/>

<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/twitter-bootstrap/3.3.7/css/bootstrap.min.css" />
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css" />
<@main title="login"/>

<style>
    body{    margin: 0px;
        background:
    /*papayawhip;*/
    /*darkslategray;*/
        lightgray;
            /*url(/WEB-INF/templates/background.jpg)*/
            }

    /* Form Style */
    .form-horizontal{
        background: #fff;
        padding-bottom: 40px;
        border-radius: 15px;
        text-align: center;
    }
    .form-horizontal .heading{
        display: block;
        font-size: 35px;
        font-weight: 700;
        padding: 35px 0;
        border-bottom: 1px solid #f0f0f0;
        margin-bottom: 30px;
    }
    .form-horizontal .form-group{
        padding: 0 40px;
        margin: 0 0 25px 0;
        position: relative;
    }
    .form-horizontal .form-control{
        background: #f0f0f0;
        border: none;
        border-radius: 20px;
        box-shadow: none;
        padding: 0 20px 0 45px;
        height: 40px;
        transition: all 0.3s ease 0s;
    }
    .form-horizontal .form-control:focus{
        background: #e0e0e0;
        box-shadow: none;
        outline: 0 none;
    }
    .form-horizontal .form-group i{
        position: absolute;
        top: 12px;
        left: 60px;
        font-size: 17px;
        color: #c8c8c8;
        transition : all 0.5s ease 0s;
    }
    .form-horizontal .form-control:focus + i{
        color: #00b4ef;
    }
    .form-horizontal .fa-question-circle{
        display: inline-block;
        position: absolute;
        top: 12px;
        right: 60px;
        font-size: 20px;
        color: #808080;
        transition: all 0.5s ease 0s;
    }
    .form-horizontal .fa-question-circle:hover{
        color: #000;
    }
    .form-horizontal .main-checkbox{
        float: left;
        width: 20px;
        height: 20px;
        background: #11a3fc;
        border-radius: 50%;
        position: relative;
        margin: 5px 0 0 5px;
        border: 1px solid #11a3fc;
    }
    .form-horizontal .main-checkbox label{
        width: 20px;
        height: 20px;
        position: absolute;
        top: 0;
        left: 0;
        cursor: pointer;
    }
    .form-horizontal .main-checkbox label:after{
        content: "";
        width: 10px;
        height: 5px;
        position: absolute;
        top: 5px;
        left: 4px;
        border: 3px solid #fff;
        border-top: none;
        border-right: none;
        background: transparent;
        opacity: 0;
        -webkit-transform: rotate(-45deg);
        transform: rotate(-45deg);
    }
    .form-horizontal .main-checkbox input[type=checkbox]{
        visibility: hidden;
    }
    .form-horizontal .main-checkbox input[type=checkbox]:checked + label:after{
        opacity: 1;
    }
    .form-horizontal .text{
        float: left;
        margin-left: 7px;
        line-height: 20px;
        padding-top: 5px;
        text-transform: capitalize;
    }
    .form-horizontal .btn{
        float: right;
        font-size: 14px;
        color: #fff;
        background: #00b4ef;
        border-radius: 30px;
        padding: 10px 25px;
        border: none;
        text-transform: capitalize;
        transition: all 0.5s ease 0s;
    }
    @media only screen and (max-width: 479px){
        .form-horizontal .form-group{
            padding: 0 25px;
        }
        .form-horizontal .form-group i{
            left: 45px;
        }
        .form-horizontal .btn{
            padding: 10px 20px;
        }
    }

    .navbar-dark {
        /*background: #000;*/
        background: lightgray;
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
    .reg{
        float: bottom;
        font-size: 14px;
        color: #fff;
        background: #00b4ef;
        border-radius: 30px;
        padding: 10px 25px;
        border: none;
        text-transform: capitalize;
        transition: all 0.5s ease 0s;
    }
</style>

<#macro content>
<#--<div class="container">-->
<#--    <div class="row">-->
    <div class = "top_menu">
        <nav class="navbar navbar-expand-lg fixed-top navbar-dark">
            <a class="mx-auto navbar-brand" href="http://localhost:8086/registration">
                <#--                    TODO(поменяй на 8081 и ссылку на сервлет с меню)-->
                <img src="https://dfd5gcc6b7vw5.cloudfront.net/assets/logo-8a7bb8b7de46c1b7163081c1d735c55860cf8d83689ad0a98a1865826a82b7cc.svg" width="34" height="34" class="d-inline-block align-top" alt="Thenx">
            </a>    </nav>
    </div>



<#--            <label>login input</label>-->
<#--            <input type="text" name="username" placeholder="enter login"/>-->
<#--            <input type="password" name="password" placeholder="enter password"/>-->
<#--            <input type="submit">Confirm</input>-->
<#--            <a href="http://localhost:8081/registration">-->
<#--                <button type="button" class="registration">REGISTRATION</button>-->
<#--            </a>-->
    <div class="container">
        <div class="row">
            <div class="col-md-offset-3 col-md-6">
                <#if message?has_content>
                    <p>${message}</p>
                </#if>
                <form method="post" action="/login">
                    <div class="form-horizontal">
                        <span class="heading">АВТОРИЗАЦИЯ</span>
                        <#--                <form method="post" action="/login">-->
                        <div class="form-group">
                            <input type="text" class="form-control" id="" name="username" placeholder="username">
                            <#--                    TODO(name должен быть username)-->
                            <i class="fa fa-user"></i>
                        </div>
                        <div class="form-group help">
                            <input type="password" class="form-control" name="password" id="inputPassword" placeholder="Password">
                            <i class="fa fa-lock"></i>
                        </div>
                        <div class="form-group">
                            <div class="main-checkbox">
                                <input type="checkbox" value="none" id="checkbox1" name="check"/>
                                <label for="checkbox1"></label>
                            </div>
                            <span class="text">Запомнить</span>
                            <input type="submit" class="btn btn-default" value="ВХОД">
                            <#--                    <button type="submit" class="btn btn-default">ВХОД</button>-->
                        </div>
                        <a href="http://localhost:8086/registration">
                            <#--                    TODO(поменяй на 8081)-->
                            <button type="button" class="reg" >РЕГИСТРАЦИЯ</button>
                        </a>
                    </div>
                </form>
            </div>

        </div><!-- /.row -->
    </div><!-- /.container -->
<#--</form>-->

</#macro>

</html>