{namespace name=frontend/plugins/b2b_debtor_plugin}

<div class="b2b--modal">
    <div class="block-content">

        <div class="topbar">
            <h3 class="panel--title">{s name="OfferDetail"}{/s}</h3>
        </div>

        {foreach $errors as $error}
            <div class="modal--errors error--list">
                {include file="frontend/_includes/messages.tpl" type="error" content=$error}
            </div>
        {/foreach}

        <div class="scrollable with--padding">
            <form action="{url controller=b2boffer action=update}" method="post" data-ajax-panel-trigger-reload="offer-grid" class="{b2b_acl controller=b2boffer action=update}">
                <input type="hidden" name="id" value="{$offer->id}" />
                {include file="frontend/b2boffer/_form.tpl"}
            </form>
        </div>
    </div>
</div>
