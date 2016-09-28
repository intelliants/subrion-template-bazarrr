{if !empty($common_statistics.directory)}
	{foreach $common_statistics.directory as $item}
		<div class="b-stat">
			<div class="b-stat__value">{$item.value}</div>
			<div class="b-stat__title">{$item.title}</div>
		</div>
	{/foreach}
{/if}
{if !empty($common_statistics.members)}
	{foreach $common_statistics.members as $item}
		<div class="b-stat">
			<div class="b-stat__value">{$item.value}</div>
			<div class="b-stat__title">{$item.title}</div>
		</div>
	{/foreach}
{/if}

{*foreach $common_statistics as $group => $data}
	<table class="table table-condensed table-striped statistics">
		<thead>
		<tr>
			<th colspan="2">{lang key=$group}</th>
		</tr>
		</thead>
		<tbody>
			{foreach $data as $item}
				<tr>
					<td>{$item.title}:</td>
					<td>{$item.value}</td>
				</tr>
			{/foreach}
		</tbody>
		<tfoot>
		{foreach $data as $item}
			{if isset($item.html)}
				<tr>
					<td colspan="2"><div class="user-list">{$item.html}</div></td>
				</tr>
			{/if}
		{/foreach}
		</tfoot>
	</table>
{/foreach*}