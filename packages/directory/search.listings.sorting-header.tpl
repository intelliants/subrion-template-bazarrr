<div class="btn-toolbar filters-sorting m-b" id="js-listings-sorting-options">
	<div class="btn-group pull-right">
		<a class="btn btn-default btn-xs" href="#" data-order="asc" title="{lang key='asc'}"><span class="fa fa-long-arrow-down"></span></a>
		<a class="btn btn-default btn-xs" href="#" data-order="desc" title="{lang key='desc'}"><span class="fa fa-long-arrow-up"></span></a>
	</div>
	<div class="btn-group pull-right">
		<span class="btn btn-default btn-xs disabled">{lang key='sort_by'}:</span>
		<a class="btn btn-default btn-xs" href="#" data-field="date">{lang key='date_added'}</a>
		<a class="btn btn-default btn-xs" href="#" data-field="title">{lang key='title'}</a>
		<a class="btn btn-default btn-xs" href="#" data-field="rank">{lang key='rank'}</a>
	</div>
</div>
{ia_add_js}
$(function()
{
	$('a', '#js-listings-sorting-options').on('click', function(e)
	{
		var $this = $(this);
		$this.parent().find('a').not($this).removeClass('active');
		$this.addClass('active');
	});
});
{/ia_add_js}