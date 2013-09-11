<div id="$Name" class="control-group field<% if extraClass %> $extraClass<% end_if %>">
	<% if Title %>
		<label class="left" for="$ID">
			<% if Message %><span class="message $MessageType">$Message</span><% end_if %>
			$Title <% if $Required %><span class="req-indicator">(required)</span><% end_if %>
	</label><% end_if %>
	<% if RightTitle %><span class="extra" id="$ID-extra">$RightTitle</span><% end_if %>

	$Field
</div>