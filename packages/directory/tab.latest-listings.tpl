<div class="cards">
	<div class="row">
		{foreach $latest_listings as $listing name=latest_listings}
			<div class="col-md-4">
				{include file='extra:directory/list-listings'}
			</div>

			{if $listing@iteration % 3 == 0 && !$listing@last}
				</div>
				<div class="row">
			{/if}
		{/foreach}
	</div>
</div>