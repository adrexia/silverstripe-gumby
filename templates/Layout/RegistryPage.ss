<div class="row">
	<% include Breadcrumbs %>
	<div class="span3">
		<div class="sidebar-form well">
			<div id="{$DataClass}_searchform" class="searchForm">
				<h2 class="h6-style">Search Filter</h2>
				$RegistryFilterForm
			</div>
		</div>
	</div>
	<div class="span9">
		<div id="main" role="main">
			<h1 class="page-header">$Title</h1>

			<div class="clearfix">
				$Content.RichLinks
			</div>

			<div id="{$DataClass}_results" class="resultsContainer">
				<% if RegistryEntries %>
					<table class="results" summary="Search results for $DataClass">
						<thead>
							<tr>
								<% loop Columns %>
									<th><a href="$Top.QueryLink&amp;Sort={$Name}&amp;Dir={$Top.OppositeDirection}#results">$Title</a></th>
								<% end_loop %>
							</tr>
						</thead>
						<tbody>
							<% loop RegistryEntries %>
								<tr class="<% if FirstLast %>$FirstLast <% end_if %>$EvenOdd">
									<% loop Columns %>
										<td><% if Link %><a href="$Link">$Value</a><% else %>$Value<% end_if %></td>
									<% end_loop %>
								</tr>
							<% end_loop %>
						</tbody>
					</table>

					<% if RegistryEntries.MoreThanOnePage %>
						<div class="pagination pagination-centered">
							<h3 class="nonvisual-indicator">Pages</h3>
							<ul id="PageNumbers">
								<% if RegistryEntries.NotFirstPage %>
									<li class="prev"><a href="$RegistryEntries.PrevLink" title="View the previous page of results">&laquo; Prev</a></li>
								<% end_if %>
								<% loop RegistryEntries.PaginationSummary(5) %>
									<% if CurrentBool %>
										<li class="active"><a href="$Link" title="Viewing page $PageNum of results">$PageNum</a></li>
									<% else_if PageNum %>
										<li><a href="$Link" title="View page $PageNum of results">$PageNum</a></li>
									<% else %>
										<li class="disabled"><a><span class="disabled">...</span></a></li>
									<% end_if %>
								<% end_loop %>
								<% if RegistryEntries.NotLastPage %>
									<li class="next"><a href="$RegistryEntries.NextLink" title="View next page of results">Next &raquo;</a></li>
								<% end_if %>
							</ul>
						</div>
					<% end_if %>
					
				<% else %>
					<p class="noResults">No results to show.</p>
				<% end_if %>
				<div class="resultActions">
					<p>
					<% if RegistryEntries %>
						<a class="export" href="$Link(export)?$AllQueryVars" title="Export all results to a CSV spreadsheet file">Export results to CSV</a> | 
					<% end_if %>
					<a class="historyFeedLink" href="registry-feed/latest/{$DataClass}" title="View imported data history">View imported data history</a>
					</p>
				</div>
				<% include PrintShare %>
			</div>
		</div>
	</div>
</div>
