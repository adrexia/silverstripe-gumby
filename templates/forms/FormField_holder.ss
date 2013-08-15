<%-- check to see if it is a checkbox/radio group and use legend rather than label --%>

<% if $class = CheckboxSetField || $class = OptionsetField %>
	<div id="$Name" class="field<% if extraClass %> $extraClass<% end_if %>">
		<fieldset>
			<% if Title %><legend class="left" for="$ID">$Title</legend><% end_if %>
			<% if RightTitle %><label class="extra" for="$ID" aria-describedby="$ID">$RightTitle</label><% end_if %>
		
			$Field
		
			<% if Message %><span class="message $MessageType">$Message</span><% end_if %>
		</fieldset>
	</div>
<% else %>
	<div id="$Name" class="field<% if extraClass %> $extraClass<% end_if %>">
		<% if Title %><label class="left" for="$ID">$Title</label><% end_if %>
		<% if RightTitle %><label class="extra" for="$ID" aria-describedby="$ID">$RightTitle</label><% end_if %>
	
		$Field
	
		<% if Message %><span class="message $MessageType">$Message</span><% end_if %>
	</div>
<% end_if %>