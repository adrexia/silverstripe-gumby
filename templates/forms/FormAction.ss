<% if UseButtonTag %>
	<button $AttributesHTML>
		<% if ButtonContent %>$ButtonContent<% else %>$Title<% end_if %>
	</button>
<% else %>
	<div class="btn medium primary metro">
		<input $AttributesHTML>
	</div>
<% end_if %>