<% if AvailableMonths %>
	<div class="month-filter">
		<h2 class="nonvisual-indicator">Month filter:</h2>
		<% if FilteredUpdates %>
			<% if FilterDescription %>
				<p><a href="$Link">Show all upcoming events</a></p>
			<% end_if %>
		<% end_if %>
		<% loop AvailableMonths %>
			<h3 class="year h6-style">$YearName:</h3>
			<ol class="nav nav-pills unstyled months">
				<% loop Months %>
					<li <% if Active %>class="active"<% end_if %>><a href="$MonthLink.XML">$MonthName</a></li>
				<% end_loop %>
			</ol>
		<% end_loop %>
	</div>
<% end_if %>