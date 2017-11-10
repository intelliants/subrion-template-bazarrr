{if $core.config.directory_listings_tabs_new ||
    $core.config.directory_listings_tabs_popular ||
    $core.config.directory_listings_tabs_random}
    <div class="tabbable dir-tabs">
        <ul class="nav nav-tabs" id="dirListingsTabs">
            {if $core.config.directory_listings_tabs_new}
                <li class="active"><a href="#tab-dirListingsLatest" data-toggle="tab"><span class="fa fa-bolt"></span> {lang key='new'}</a></li>
            {/if}
            {if $core.config.directory_listings_tabs_popular}
                <li><a href="#tab-dirListingsPopular" data-toggle="tab"><span class="fa fa-star"></span> {lang key='popular'}</a></li>
            {/if}
            {if $core.config.directory_listings_tabs_random}
                <li><a href="#tab-dirListingsRandom" data-toggle="tab"><span class="fa fa-random"></span> {lang key='random'}</a></li>
            {/if}
        </ul>

        <div class="tab-content" id="dirListingsTabsContent">
            {if $core.config.directory_listings_tabs_new}
                <div id="tab-dirListingsLatest" class="tab-pane active">
                    {if !empty($listingsBlocksData.tabs_new)}
                        {include 'module:directory/tab.latest-listings.tpl'}
                    {else}
                        <div class="alert alert-info">
                            {lang key='no_listings'}
                        </div>
                    {/if}
                </div>
            {/if}
            {if $core.config.directory_listings_tabs_popular}
                <div id="tab-dirListingsPopular" class="tab-pane">
                    {if !empty($listingsBlocksData.tabs_popular)}
                        {include 'module:directory/tab.popular-listings.tpl'}
                    {else}
                        <div class="alert alert-info">
                            {lang key='no_listings'}
                        </div>
                    {/if}
                </div>
            {/if}
            {if $core.config.directory_listings_tabs_random}
                <div id="tab-dirListingsRandom" class="tab-pane">
                    {if !empty($listingsBlocksData.tabs_random)}
                        {include 'module:directory/tab.random-listings.tpl'}
                    {else}
                        <div class="alert alert-info">
                            {lang key='no_listings'}
                        </div>
                    {/if}
                </div>
            {/if}
        </div>
    </div>
{/if}