<% if AvailableMonths %>
	<div class="month-filter">
		<h2 class="nonvisual-indicator">Month filter:</h2>
		<% if FilteredUpdates %>
			<% if FilterDescription %>
				<p>
					<span class="btn metro rounded small default">
						<a href="$Link"><i class="icon-calendar"></i>
							<% if Top.ClassName == EventHolder %>
								Show all upcoming events
							<% else_if Top.ClassName == NewsHolder %>
								Show all news
							<% else %>
								Show all
							<% end_if %>
						</a>
					</span>
				</p>
			<% end_if %>
		<% end_if %>
		<% loop AvailableMonths %>
			<h3 class="year small">$YearName:</h3>
			<ol class="nav nav-pills months">
				<% loop Months %> 
					<li class="label <% if Active %>active primary<% else %> default<% end_if %>"><a href="$MonthLink.XML">$MonthName</a></li>
				<% end_loop %>
			</ol>
		<% end_loop %>
	</div>
<% end_if %>