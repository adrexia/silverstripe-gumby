<div id="$Name" class="control-group field<% if extraClass %> $extraClass<% end_if %>">
	<% if Title %><label class="left" for="$ID" id="$ID-label">$Title <% if $Required %><span class="req-indicator">(required)</span><% end_if %></label><% end_if %>
	<% if RightTitle %><span class="extra" for="$ID" aria-describedby="$ID" id="$ID-extra">$RightTitle</span><% end_if %>

	$Field

	<% if Message %><span class="message $MessageType" id="$ID-message">$Message</span><% end_if %>
</div>