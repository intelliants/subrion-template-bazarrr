<div class="cards">
    <div class="row">
        {foreach $listingsBlocksData.tabs_new as $listing}
            <div class="col-md-{$core.config.num_columns}">
                {include 'extra:directory/list-listings' decorate=false}
            </div>

            {if ($core.config.num_columns == 4 && $listing@iteration % 3 == 0 && !$listing@last) || ($core.config.num_columns == 6 && $listing@iteration % 2 == 0 && !$listing@last)}
                </div>
                <div class="row">
            {/if}
        {/foreach}
    </div>
</div>