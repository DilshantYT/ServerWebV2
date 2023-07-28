{if "HTML_CLASS"|defined}{assign var="HTMLCLASS" value=" {$smarty.const.HTML_CLASS}"}{else}{assign var="HTMLCLASS"
value=""}{/if}
{if "HTML_LANG"|defined}{assign var="HTMLLANG" value=" lang='{$smarty.const.HTML_LANG}'"}{else}{assign var="HTMLLANG"
value=" lang='en'"}{/if}
{if "HTML_RTL"|defined && $smarty.const.HTML_RTL eq true}{assign var="HTMLRTL" value=" dir='rtl'"}{else}{assign
var="HTMLRTL" value=" dir='ltr'"}{/if}
{if "LANG_CHARSET"|defined}{assign var="METACHARSET" value="{$smarty.const.LANG_CHARSET}"}{else}{assign
var="METACHARSET" value="utf-8"}{/if}
{if isset($PAGE_DESCRIPTION) && $PAGE_DESCRIPTION|count_characters > 0}{assign var="PAGEDESCRIPTION"
value="{$PAGE_DESCRIPTION}"}{else}{assign var="PAGEDESCRIPTION" value=" "}{/if}
{if isset($PAGE_KEYWORDS) && $PAGE_KEYWORDS|count_characters > 0}{assign var="PAGEKEYWORDS"
value="{$PAGE_KEYWORDS}"}{else}{assign var="PAGEKEYWORDS" value=" "}{/if}

<!DOCTYPE html>
<html{$HTMLCLASS}{$HTMLLANG}{$HTMLRTL}>

    <head>
        <script>
            var mc_ip = 'hypixel.net'; // minecraft server ip
            var mc_port = '25565'; // minecraft server port
            var widget_id = '511984944889987082'; // discord widget id ( Discord Server > Server Settings > Widget > Server ID )    
        </script> 
        <meta charset="{$METACHARSET}">
        <meta name="viewport" content="width=device-width, initial-scale=1.0, maximum-scale=1.0">
        <title>{$TITLE} &bull; {$smarty.const.SITE_NAME}</title>

        {if isset($FAVICON)}
        <link rel="shortcut icon" href="{$FAVICON}" type="image/x-icon" />
        {/if}

        <meta name="author" content="{$smarty.const.SITE_NAME}">
        <meta name='description' content='{$PAGEDESCRIPTION}' />
        <meta name='keywords' content='{$PAGEKEYWORDS}' />

        <meta property="og:title" content="{$TITLE} &bull; {$smarty.const.SITE_NAME}" />
        <meta property="og:type" content="website" />
        <meta property="og:url" content="{$OG_URL}" />
        <meta property="og:image" content="{$OG_IMAGE}" />
        <meta property='og:description' content='{$PAGEDESCRIPTION}' />

        <!-- Twitter Card Properties -->
        <meta name="twitter:title" content="{$TITLE} &bull; {$smarty.const.SITE_NAME}" />
        <meta name="twitter:card" content="summary" />
        <meta name="twitter:image" content="{$OG_IMAGE}" />

        {if isset($PAGE_DESCRIPTION) && $PAGE_DESCRIPTION|count_characters > 0}
        <meta name="twitter:description" content="{$PAGE_DESCRIPTION}" />
        {/if}

        {foreach from=$TEMPLATE_CSS item=css}
        {$css}
        {/foreach}

        {if isset($ANALYTICS_ID)}
        {literal}
        <script async src="https://www.googletagmanager.com/gtag/js?id={/literal}{$ANALYTICS_ID}{literal}"></script>
        <script>
            window.dataLayer = window.dataLayer || [];
            function gtag() { dataLayer.push(arguments); }
            gtag('js', new Date());

            gtag('config', '{/literal}{$ANALYTICS_ID}{literal}');
        </script>
        {/literal}
        {/if}

        {if isset($DEBUGBAR_JS)}
        {$DEBUGBAR_JS}
        {/if}

        <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.3/jquery.min.js"></script>
        <link rel="stylesheet" href="https://kit-pro.fontawesome.com/releases/latest/css/pro-v4-shims.min.css" media="all">
        <link rel="stylesheet" href="https://kit-pro.fontawesome.com/releases/latest/css/pro-v4-font-face.min.css" media="all">
        <link rel="stylesheet" href="https://kit-pro.fontawesome.com/releases/latest/css/pro.min.css" media="all">
        <link rel="stylesheet" href="https://unpkg.com/wenk/dist/wenk.css">
        <link rel="preconnect" href="https://fonts.googleapis.com">
        <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
        <script src="http://cdn.jsdelivr.net/particles.js/2.0.0/particles.min.js"></script> 
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet">

        <script>
        {literal}
            $.get(`https://mc-api.net/v3/server/ping/${mc_ip}:${mc_port}/`, function (data) {
                document.getElementById('mc-online').innerHTML = data["players"]["online"];
            });
            $.get(`https://discordapp.com/api/guilds/${widget_id}/embed.json`, function (data) {
                    document.getElementById('discord-online').innerHTML = data["presence_count"];
            });
            {/literal}
        </script>
        <script>
        </script>
    </head>

    <body id="page-{if is_numeric($smarty.const.PAGE)}{$TITLE}{else}{$smarty.const.PAGE}{/if}">