<div class="cards">
    <div class="row">
        {foreach $listingsBlocksData.tabs_popular as $listing}
            <div class="col-md-4">
                {include 'module:directory/list-listings.tpl' decorate=false}
            </div>

            {if $listing@iteration % 3 == 0 && !$listing@last}
                </div>
                <div class="row">
            {/if}
        {/foreach}
    </div>
</div>