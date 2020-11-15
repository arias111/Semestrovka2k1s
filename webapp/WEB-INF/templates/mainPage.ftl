<#ftl encoding="utf-8">
<#include "main.ftl"/>
<@main title="mainPage"/>
<#macro content>
    <#if message?has_content>
        <p>${message}</p>
    </#if>
    <form method="post" action="/mainPage">
        <div class="block">
            <input type="submit" name="start" value="mainPage" class="start"/>
            <input type="submit" name="workout" value="workout"/>
        </div>
    </form>
</#macro>


