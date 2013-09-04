<div id="$Name" class="field<% if $extraClass %> $extraClass<% end_if %>">
	<fieldset>
		<% if $Title %><legend class="left" for="$ID">$Title <% if $Required %><span class="req-indicator">(required)</span><% end_if %></legend><% end_if %>
		<% if $RightTitle %><span class="extra">$RightTitle</span><% end_if %>
			$Field
		
		<% if $Message %><span class="message $MessageType">$Message</span><% end_if %>
		<% if $Description %><span class="description">$Description</span><% end_if %>
	</fieldset>
</div>