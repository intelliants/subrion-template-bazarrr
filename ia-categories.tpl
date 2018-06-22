{if !empty($categories)}
    {$num_columns = ((isset($num_columns)) ? $num_columns : 2)}
    {$class_names = ['col-md-12', 'col-md-6', 'col-md-4', 'col-md-3']}
    {$i = 0}

    <div class="cat-list-simple">
        <div class="row ia-cats">
            {foreach $categories as $entry}
                <div class="{$class_names[$num_columns - 1]}">
                    <div class="ia-cat">
                        {if !empty($icons)}
                            <span class="fa{if isset($entry.icon) && $entry.icon} {$entry.icon}{else} fa-folder-open{/if}"></span>
                        {/if}

                        {if !empty($entry.crossed)}@&nbsp;{/if}<a href="{ia_url type='url' item=$item data=$entry}">{$entry.title|escape}</a>
                        {if isset($show_amount) && $show_amount}
                            &mdash; {$entry.num|default:0}
                        {/if}

                        {if !empty($entry.subcategories)}
                            <div class="ia-cat__sub">
                                {foreach $entry.subcategories as $subcategory}
                                    <a href="{ia_url type='url' item=$item data=$subcategory}">{$subcategory.title}</a>{if !$subcategory@last}, {/if}
                                {/foreach}
                            </div>
                        {/if}
                    </div>
                </div>

                {if $entry@iteration % $num_columns == 0 && !$entry@last}
                    </div>
                {/if}

                {if $entry@iteration % $num_columns == 0}
                    {$i = $i+1}
                    {if !empty($category) && $i == $num_columns}
                        <div class="cat-list-simple__hidden">
                    {/if}
                {/if}

                {if $entry@iteration % $num_columns == 0 && !$entry@last}
                    <div class="row ia-cats">
                {/if}
            {/foreach}
        </div>

        {if !empty($category) && $i > $num_columns}
            </div>
        {/if}

        {if isset($category) && $category.parent_id >= 0 && $i > $num_columns}
            <div class="cat-list-simple__more"><a class="js-more-cats" href="#" data-less-cats-text="<span class='fa fa-angle-up'></span> {lang key='less_cats'}" data-more-cats-text="<span class='fa fa-angle-down'></span> {lang key='more_cats'}"><span class="fa fa-angle-down"></span> {lang key='more_cats'}</a></div>
        {/if}
    </div>
{/if}