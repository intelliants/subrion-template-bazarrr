{if isset($directory_categories_tree)}
    <div class="list-group">
        {foreach $directory_categories_tree as $sideCategory}
            <a class="list-group-item" href="{ia_url type='url' item='categs' data=$sideCategory}">{$sideCategory.title} <span>{$sideCategory.num_all_listings}</span></a>
        {/foreach}
    </div>
{/if}