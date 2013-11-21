<div class="results-header">
	<p class="subtitle pull-left">
		<% if FilterDescription %>
		$FilterDescription
		<% else %>
			<% if Top.ClassName == EventHolder %>
				Upcoming events
			<% else_if Top.ClassName == NewsHolder %>
				News
			<% else %>
				Items
			<% end_if %>
		<% end_if %>
	</p>
	<p class="pull-right">
		<% if FilteredUpdates %>
		<% with FilteredUpdates %>$FirstItem - $LastItem of $count
		<% end_with %>
		<% else %>
		none
		<% end_if %>
	</p>
</div>