{extends "page.tpl"}

{block name="content_header"}
    {if $api.config.name}
      <div class="row justify-content-center position-absolute top-0 me-0" style="z-index: -1;">
        <img class="img-fluid px-0" src="{$api.config.banner.0}" style="min-height: 100px; width:auto;" />
      </div>
      <div class="container-md px-md-3 py-3">
        <h5 class="">{$api.config.name}</h5>
      </div>
      <style type="text/css">
        #block_header .navbar {
          background-color: transparent !important;
        }
      </style>   
    {/if}  
{/block}

{block name="content_top"}
    {if $html.show_author}                      
    <div class="row pt-0 pb-3">
      <div class="col-auto">
        {'By'|trans} {foreach $page.creator AS $creator}{$creator}{/foreach}
      </div>  
      <div class="col text-end js-sg-date">{$page.created}</div>
    </div>
    {/if}
{/block}

{block name="content_right"}
  {if $api.related}
  <div class="col-12 col-md-3 mb-3">
    <h6 class="ps-3 pb-2">{'Related Topics'|trans}</h6>
    <ul class="list-group">
    {foreach $api.related AS $collection}
      <a href="{$collection.slug}" class="list-group-item d-flex justify-content-between align-items-center">
        {$collection.name}
        {if $collection.quantity}
          <span class="badge bg-primary rounded-pill">{$collection.quantity}</span>
        {/if}  
      </a>
    {/foreach}  
    </ul>
  </div>
  {/if}  
{/block} 