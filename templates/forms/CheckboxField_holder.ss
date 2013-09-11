<div id="$Name" class="field<% if extraClass %> $extraClass<% end_if %>">
	<label class="checkbox" for="$ID">
		$Field
		$Title
	</label>
	<% if Message %><span class="message $MessageType" id="$ID-message">$messageBlock</span><% end_if %>
</div>