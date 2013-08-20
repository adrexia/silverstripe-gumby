<% if MoreThanOnePage %>
<div id="" class="pagination pagination-centered clear">
	<h3 class="nonvisual-indicator">Page pagination</h3>
	<ul id="PageNumbers">
	<% if NotFirstPage %>
		<li class="prev"><a title="View previous page of results" class="prev paginate-left" href="$PrevLink">&laquo; Prev</a></li>
	<% else %>	
		<li class="prev disabled"><a title="View previous page of results" class="prev paginate-left disabled">&laquo; Prev</a></li>
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
		<li class="next"><a title="View next page of results" class="next paginate-right" href="$NextLink">Next &raquo;</a></li>
	<% else %>
		<li class="next disabled"><a title="View next page of results" class="next paginate-right disabled">Next &raquo;</a></li>
	
	<% end_if %>
	</ul>
</div>
<% end_if %>