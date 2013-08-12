<% if MoreThanOnePage %>
<div id="" class="pagination clear">
	<span class="nonvisual-indicator">Page pagination</span>
	<ul id="PageNumbers">
	<% if NotFirstPage %>
		<li class="prev"><a title="View previous page of results" class="prev paginate-left" href="$PrevLink">&lt; Prev</a></li>
	<% else %>	
		<li class="prev disabled"><a title="View previous page of results" class="prev paginate-left disabled">&lt; Prev</a></li>
	<% end_if %>
	
	<% loop PaginationSummary(4) %>
		<% if CurrentBool %>
			<li class="active"><a title="Viewing page $PageNum of results" class="disabled">$PageNum</a></li>
		<% else %>
			<% if Link %>
				<li><a title="View page $PageNum of results" class="<% if BeforeCurrent %>paginate-left<% else %>paginate-right<% end_if %>" href="$Link">$PageNum</a></li>
			<% else %>
				<li class="disabled"><a class="disabled">...</a></li>						
			<% end_if %>
		<% end_if %>
	<% end_loop %>
	<% if NotLastPage %>
		<li class="next"><a title="View next page of results" class="next paginate-right" href="$NextLink">Next &gt;</a></li>
	<% else %>
		<li class="next disabled"><a title="View next page of results" class="next paginate-right disabled">Next &gt;</a></li>
	
	<% end_if %>
	</ul>
</div>
<% end_if %>