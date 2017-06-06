<div class="card {if !isset($decorate) || $decorate}{if $listing.sponsored} card--sponsored{/if}{if $listing.featured} card--featured{/if}{/if}">
    <div class="card__header">
        <div class="card__image">
            {if $core.config.directory_enable_thumbshots}
                <img src="http://free.pagepeeker.com/v2/thumbs.php?size=m&url={$listing.url|escape:url}" class="img-responsive">
            {else}
                <img src="{$img}no-preview.png" class="img-responsive" alt="">
            {/if}
        </div>
        <div class="card__title">
            <h4>
                {if !empty($listing.crossed)}@ {/if}
                {if !$core.config.directory_redirect_to_site}
                    {ia_url type='link' item='listings' data=$listing text=$listing.title}
                {else}
                    <a href="{$listing.url}" target="_blank">{$listing.title|escape}</a>
                {/if}
            </h4>
            <p class="text-overflow"><a href="{$listing.url}" class="url">{$listing.url}</a></p>
            {if !isset($category) || $listing.category_id != $category.id}
                <a class="card__title__category" href="{ia_url type='url' item='categs' data=$listing}">{$listing.category_title}</a>
            {/if}
        </div>
    </div>
    <div class="card__body">{$listing.description|strip_tags|truncate:120:'...'}</div>
    <div class="card__info">
        <div class="card__info__date">
            {if $listing.sponsored}
                <span class="label label-warning" title="{lang key='sponsored'}">{lang key='sponsored'}</span>
            {elseif $listing.featured}
                <span class="label label-info" title="{lang key='featured'}">{lang key='featured'}</span>
            {/if}
            <span class="fa fa-clock-o"></span> {$listing.date_added|date_format:$core.config.date_format}
        </div>
        {if $listing.rank}
            <div class="card__info__views text-warning">
                <span class="fa fa-star"></span> {$listing.rank}
            </div>
        {/if}
        <div class="card__info__views">
            <span class="fa fa-eye"></span> {$listing.views_num}
        </div>
    </div>
    <div class="card__actions">
        {printFavorites item=$listing itemtype='listings' guests=true}
        {accountActions item=$listing itemtype='listings'}
        <a href="
            {if !$core.config.directory_redirect_to_site}
                {ia_url type='url' item='listings' data=$listing}
            {else}
                {$listing.url}
            {/if}
        "><span class="fa fa-long-arrow-right"></span></a>
    </div>
</div>