<div class="ia-sorting">
	<div class="ia-sorting__by" id="js-listings-sorting-options">
		<span>{lang key='sort_by'}:</span>
		<div class="btn-group">
			<a class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" href="#">
				{lang key='date_added'}
				<span class="fa fa-angle-down"></span>
			</a>
			<ul class="dropdown-menu pull-right">
				<li><a href="#" data-field="date"><span class="fa fa-clock-o"></span> {lang key='date_added'}</a></li>
				<li><a href="#" data-field="title"><span class="fa fa-font"></span> {lang key='title'}</a></li>
				<li><a href="#" data-field="rank"><span class="fa fa-signal"></span> {lang key='rank'}</a></li>
			</ul>
		</div>
		
		<div class="btn-group">
			<a class="btn btn-default btn-xs dropdown-toggle" data-toggle="dropdown" href="#">
				{lang key='asc'}
				<span class="fa fa-angle-down"></span>
			</a>
			<ul class="dropdown-menu pull-right">
				<li><a href="#" data-order="asc"><span class="fa fa-long-arrow-down"></span> {lang key='asc'}</a></li>
				<li><a href="#" data-order="desc"><span class="fa fa-long-arrow-up"></span> {lang key='desc'}</a></li>
			</ul>
		</div>
	</div>
</div>

{ia_add_js}
$(function()
{
	$('.dropdown-menu a', '#js-listings-sorting-options').on('click', function(e)
	{
		var $this = $(this),
			text  = $this.text();

		$this.closest('.dropdown-menu').prev().html(text + ' <span class="fa fa-angle-down"></span>');
	});
});
{/ia_add_js}