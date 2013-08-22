<div id="$Name" class="control-group field<% if extraClass %> $extraClass<% end_if %>">
	<% if Title %><label class="left" for="$ID">$Title</label><% end_if %>
	<% if RightTitle %><span class="extra" for="$ID" aria-describedby="$ID">$RightTitle</span><% end_if %>

	$Field

	<% if Message %><span class="message $MessageType">$Message</span><% end_if %>
</div>