{if $listingsBlocksData.recent}
    <div class="cards">
        <div class="row">
            {foreach $listingsBlocksData.recent as $listing}
                <div class="col-md-3">
                    {include 'module:directory/list-listings.tpl' decorate=false}
                </div>

                {if $listing@iteration % 4 == 0 && !$listing@last}
                    </div>
                    <div class="row">
                {/if}
            {/foreach}
        </div>
    </div>
{/if}