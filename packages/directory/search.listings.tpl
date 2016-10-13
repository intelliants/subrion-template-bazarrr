{if isset($listings) && $listings}
	<div class="cards">
		<div class="row">
			{foreach $listings as $listing}
				<div class="col-md-4">
					{include 'extra:directory/list-listings'}
				</div>

				{if $listing@iteration % 3 == 0 && !$listing@last}
					</div>
					<div class="row">
				{/if}
			{/foreach}
		</div>
	</div>
{else}
	<div class="alert alert-info">
		{lang key='no_web_listings2'}
	</div>
{/if}