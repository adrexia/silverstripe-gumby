<% if MoreThanOnePage %>
<div id="PageNumbers" class="pagination">
	<h3 class="nonvisual-indicator">Results</h3>
	<ol>
		<li>
			<% if $NotFirstPage %>
				<a class="prev" href="$PrevLink" title="View the previous page">Prev</a>
			<% else %>
				<span class="disabled">Prev</span>
			<% end_if %>
		</li>
	
		<% loop PaginationSummary %>
			<li>
				<% if $CurrentBool %>
				<span class="active">$PageNum</span>
				<% else %>
				<a href="$Link" title="View page number $PageNum">$PageNum</a>
				<% end_if %>
			</li>
		<% end_loop %>
		<li>
		<% if $NotLastPage %>
			<a class="next" href="$NextLink" title="View the next page">Next</a>
		<% else %>
			<span class="disabled">Next</span>
		<% end_if %>
		</li>
	</ul>
</div>
<% end_if %>