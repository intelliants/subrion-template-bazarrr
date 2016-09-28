<div class="cards">
	<div class="row">
		{foreach $random_listings as $listing name=random_listings}
			<div class="col-md-4">
				{include file='extra:directory/list-listings' decorate=false}
			</div>

			{if $listing@iteration % 3 == 0 && !$listing@last}
				</div>
				<div class="row">
			{/if}
		{/foreach}
	</div>
</div>