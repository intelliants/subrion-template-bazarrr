{if !empty($latest_listings)}
	<div class="cards">
		<div class="row">
			{foreach $latest_listings as $listing}
				<div class="col-md-3">
					{include file='extra:directory/list-listings' decorate=false}
				</div>

				{if $listing@iteration % 4 == 0 && !$listing@last}
					</div>
					<div class="row">
				{/if}
			{/foreach}
		</div>
	</div>
{/if}