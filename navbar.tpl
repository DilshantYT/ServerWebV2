<div class="silkyMobileNav">
    <div class="silkyMobileLinks">
        <li>
        {foreach from=$NAV_LINKS key=name item=item}
                {if isset($item.items)}
                <div class="ui dropdown item">
                    {$item.icon} {$item.title}
                    <i class="dropdown icon"></i>
                    <div class="menu">
                        <div class="header">{$item.title}</div>
                        {foreach from=$item.items item=dropdown}
                        {if isset($dropdown.separator)}
                        <div class="divider"></div>
                        {else}
                        <a class="item" href="{$dropdown.link}" target="{$dropdown.target}">{$dropdown.icon}
                            {$dropdown.title}</a>
                        {/if}
                        {/foreach}
                    </div>
                </div>
                {else}
                <a class="item{if isset($item.active)} active{/if}" href="{$item.link}"
                    target="{$item.target}">{$item.icon}
                    {$item.title}</a>
                {/if}
            {/foreach}
        </li>
    </div>
</div>
<div class="silkyMobileUser">
{foreach from=$USER_SECTION key=name item=item}
                    {if isset($item.items)}
                    {if ($name == "account")}
                    <a class="ui medium image label" data-toggle="popup" data-position="bottom right"
                        id="button-{$name}">{$item.icon} {$item.title}</a>
                    {else}
                    <a class="ui small default icon button" data-toggle="popup" data-position="bottom right"
                        id="button-{$name}">{$item.icon}</a>
                    {/if}
                    <div class="ui wide basic popup">
                        <h4 class="ui header">{$item.title}</h4>
                        <div class="ui relaxed link list" id="list-{$name}">
                            {foreach from=$item.items item=dropdown}
                            {if isset($dropdown.separator)}
                            <div class="ui divider"></div>
                            {else}
                                {if isset($dropdown.action)}
                                    <a class="item" href="#" data-link="{$dropdown.link}" data-action="{$dropdown.action}">
                                        {$dropdown.icon} {$dropdown.title}
                                    </a>
                                {else}
                                    <a class="item" href="{$dropdown.link}" target="{$dropdown.target}">
                                        {$dropdown.icon} {$dropdown.title}
                                    </a>
                                {/if}
                            {/if}
                            {/foreach}
                        </div>
                        {if !empty($item.meta)}
                        <div class="ui link list">
                            <div class="ui divider"></div>
                            <a class="item" href="{$item.link}">{$item.meta}</a>
                        </div>
                        {/if}
                    </div>
                    {else}
                    {if ($name == "panel")}
                    <a class="ui small primary icon button" href="{$item.link}" target="{$item.target}">{$item.icon}</a>
                    {elseif ($name == "register")}
                    <a class="ui small primary button" href="{$item.link}" target="{$item.target}">{$item.title}</a>
                    {else}
                    <a class="ui small default button" href="{$item.link}" target="{$item.target}">{$item.title}</a>
                    {/if}
                    {/if}
                    {/foreach}
</div>
<div class="silkyHeader">
 <div class="partHeader">
    <div class="color-overlay"></div>
    <div class="ui container">
    <div class="aorakiContainer">
    <div class="aorakiMinecraft">
    <div class="aoraki-status-txt">
    <div class="text">
    <div class="top-text">hypixel.net</div>
    <div class="bottom-text">
    <div class="small-text"><span id="mc-online">0</span> players online</div>
    </div>
    </div>
    <div class="icon">
    <svg class="creeper" viewBox="0 0 24 24" xmlns="http://www.w3.org/2000/svg">
    <path d="M4,2H20A2,2 0 0,1 22,4V20A2,2 0 0,1 20,22H4A2,2 0 0,1 2,20V4A2,2 0 0,1 4,2M6,6V10H10V12H8V18H10V16H14V18H16V12H14V10H18V6H14V10H10V6H6Z">
    </path>
    </svg>
    </div>
    </div>
    </div>
    <div class="aorakiLogo">
        <a href="/"><img height="200px" src="https://quak.ovh/sNnnNCg.png"></a>
    </div>
    <div class="aorakiDiscord">
    <a href="https://treed.ro/discord">
    <div class="aoraki-ds-txt">
    <div class="icon">
    <svg class="discord" xmlns="http://www.w3.org/2000/svg" viewBox="0 0 245 240">
    <path class="st0" d="M104.4 103.9c-5.7 0-10.2 5-10.2 11.1s4.6 11.1 10.2 11.1c5.7 0 10.2-5 10.2-11.1.1-6.1-4.5-11.1-10.2-11.1zM140.9 103.9c-5.7 0-10.2 5-10.2 11.1s4.6 11.1 10.2 11.1c5.7 0 10.2-5 10.2-11.1s-4.5-11.1-10.2-11.1z">
    </path>
    <path class="st0" d="M189.5 20h-134C44.2 20 35 29.2 35 40.6v135.2c0 11.4 9.2 20.6 20.5 20.6h113.4l-5.3-18.5 12.8 11.9 12.1 11.2 21.5 19V40.6c0-11.4-9.2-20.6-20.5-20.6zm-38.6 130.6s-3.6-4.3-6.6-8.1c13.1-3.7 18.1-11.9 18.1-11.9-4.1 2.7-8 4.6-11.5 5.9-5 2.1-9.8 3.5-14.5 4.3-9.6 1.8-18.4 1.3-25.9-.1-5.7-1.1-10.6-2.7-14.7-4.3-2.3-.9-4.8-2-7.3-3.4-.3-.2-.6-.3-.9-.5-.2-.1-.3-.2-.4-.3-1.8-1-2.8-1.7-2.8-1.7s4.8 8 17.5 11.8c-3 3.8-6.7 8.3-6.7 8.3-22.1-.7-30.5-15.2-30.5-15.2 0-32.2 14.4-58.3 14.4-58.3 14.4-10.8 28.1-10.5 28.1-10.5l1 1.2c-18 5.2-26.3 13.1-26.3 13.1s2.2-1.2 5.9-2.9c10.7-4.7 19.2-6 22.7-6.3.6-.1 1.1-.2 1.7-.2 6.1-.8 13-1 20.2-.2 9.5 1.1 19.7 3.9 30.1 9.6 0 0-7.9-7.5-24.9-12.7l1.4-1.6s13.7-.3 28.1 10.5c0 0 14.4 26.1 14.4 58.3 0 0-8.5 14.5-30.6 15.2z">
    </path>
    </svg>
    </div>
    <div class="text">
    <div class="top-text">Join on discord</div>
    <div class="bottom-text">
    <div class="small-text"><span id="discord-online">0</span> users online</div>
    </div>
    </div>
    </div>
    </a>
    </div>
    </div>
</div>


<div class="silkyNav">
    {foreach from=$NAV_LINKS key=name item=item}
        {if isset($item.items)}
         <div class="ui dropdown item dropdownlinkz">
            {$item.icon} {$item.title}
            <i class="dropdown icon"></i>
             <div class="menu">
            <div class="header">{$item.title}</div>
                        {foreach from=$item.items item=dropdown}
                        {if isset($dropdown.separator)}
                        <div class="divider"></div>
                        {else}
                        <a class="item" href="{$dropdown.link}" target="{$dropdown.target}">{$dropdown.icon}
                            {$dropdown.title}</a>
                        {/if}
                        {/foreach}
                    </div>
                </div>
                {else}
                <a href="{$item.link}"> <div class="silkyItem {if isset($item.active)} silkyIActive{/if}" data-wenk="{$item.title}" data-wenk-pos="right">
                    {$item.icon}
                </div>
                </a>
                {/if}
     {/foreach}

    <div class="silkyUser">
    {foreach from=$USER_SECTION key=name item=item}
                    {if isset($item.items)}
                    {if ($name == "account")}
                    <a class="silkyUAvatar" data-toggle="popup" data-position="bottom right"
                        id="button-{$name}">{$item.icon} </a>
                    {else}
                    <a class="silkyItem" href="{$item.link}" data-wenk="{$item.title}" data-wenk-pos="right"
                        id="button-{$name}">{$item.icon}</a>
                    {/if}
                    <div class="ui wide basic popup">
                        <h4 class="ui header">{$item.title}</h4>
                        <div class="ui relaxed link list" id="list-{$name}">
                            {foreach from=$item.items item=dropdown}
                            {if isset($dropdown.separator)}
                            <div class="ui divider"></div>
                            {else}
                                {if isset($dropdown.action)}
                                    <a class="item" href="#" data-link="{$dropdown.link}" data-action="{$dropdown.action}">
                                        {$dropdown.icon} {$dropdown.title}
                                    </a>
                                {else}
                                    <a class="item" href="{$dropdown.link}" target="{$dropdown.target}">
                                        {$dropdown.icon} {$dropdown.title}
                                    </a>
                                {/if}
                            {/if}
                            {/foreach}
                        </div>
                        {if !empty($item.meta)}
                        <div class="ui link list">
                            <div class="ui divider"></div>
                            <a class="item" href="{$item.link}">{$item.meta}</a>
                        </div>
                        {/if}
                    </div>
                    {else}
                    {if ($name == "panel")}
                    <a class="silkyItem" href="{$item.link}" target="{$item.target}" data-wenk="{$item.title}" data-wenk-pos="right">{$item.icon}</a>
                    {elseif ($name == "register")}
                    <a class="silkyItem" href="{$item.link}" target="{$item.target}">{$item.title}</a>
                    {else}
                    <a class="silkyItem" href="{$item.link}" target="{$item.target}">{$item.title}</a>
                    {/if}
                    {/if}
                    {/foreach}
                </div>
            </div>
    </div>
</div>
