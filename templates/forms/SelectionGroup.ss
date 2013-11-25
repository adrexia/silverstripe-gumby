<ul class="SelectionGroup<% if extraClass %> $extraClass<% end_if %>">
	<% if IsReadonly %>
		<% loop FieldSet %>
			<% if Selected %>
			<li$Selected>
				$RadioLabel
				$FieldHolder
			</li>
			<% end_if %>
		<% end_loop %>
	<% else %>
		<% loop FieldSet %>
			<li$Selected>{$RadioButton}{$RadioLabel}{$FieldHolder}</li>
		<% end_loop %>
	<% end_if %>
</ul>
