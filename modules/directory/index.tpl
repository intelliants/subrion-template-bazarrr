{if !empty($category.description)}
    <div class="cat-desc">{$category.description}</div>
{/if}

{if 'directory_home' == $core.page.name}
    {ia_hooker name='smartyFrontDirectoryCategories'}
{/if}

{if $listings}
    {if !in_array($core.page.name, array('top_listings', 'new_listings', 'random_listings'))}
        {if !isset($listings_sorting) || $listings_sorting}
            <div class="ia-sorting">
                <span class="ia-sorting__found">{lang key='listings_found'}: {$pagination.total}</span>

                <div class="ia-sorting__by">
                    <span>{lang key='sort_by'}:</span>
                    <div class="btn-group">
                        <a class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" href="#">
                            {lang key=$sort_name}
                            <span class="fa fa-angle-down"></span>
                        </a>
                        <ul class="dropdown-menu pull-right">
                            <li><a href="{$smarty.const.IA_SELF}?sort_by=date_added" rel="nofollow"><span class="fa fa-clock-o"></span> {lang key='date_added'}</a></li>
                            <li><a href="{$smarty.const.IA_SELF}?sort_by=title" rel="nofollow"><span class="fa fa-font"></span> {lang key='title'}</a></li>
                            <li><a href="{$smarty.const.IA_SELF}?sort_by=rank" rel="nofollow"><span class="fa fa-signal"></span> {lang key='rank'}</a></li>
                        </ul>
                    </div>

                    <div class="btn-group">
                        <a class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" href="#">
                            {if $sort_type == 'asc'}
                                {lang key='asc'}
                            {else}
                                {lang key='desc'}
                            {/if}
                            <span class="fa fa-angle-down"></span>
                        </a>
                        <ul class="dropdown-menu pull-right">
                            <li><a href="{$smarty.const.IA_SELF}?order_type=asc" rel="nofollow"><span class="fa fa-long-arrow-down"></span> {lang key='asc'}</a></li>
                            <li><a href="{$smarty.const.IA_SELF}?order_type=desc" rel="nofollow"><span class="fa fa-long-arrow-up"></span> {lang key='desc'}</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        {/if}
    {/if}

    <div class="cards">
        <div class="row">
            {foreach $listings as $listing}
                <div class="col-md-{$core.config.num_columns}">
                    {include 'module:directory/list-listings.tpl'}
                </div>

                {if ($core.config.num_columns == 4 && $listing@iteration % 3 == 0 && !$listing@last) || ($core.config.num_columns == 6 && $listing@iteration % 2 == 0 && !$listing@last)}
                    </div>
                    <div class="row">
                {/if}
            {/foreach}
        </div>

        {navigation aTotal=$pagination.total aTemplate=$pagination.url aItemsPerPage=$pagination.limit aIgnore=true aTruncateParam=1}
    </div>
{elseif isset($category) && $category.parent_id > 0}
    <div class="alert alert-info">{lang key='no_web_listings'}</div>
{elseif !isset($category)}
    <div class="alert alert-info">{lang key='no_web_listings'}</div>
{/if}