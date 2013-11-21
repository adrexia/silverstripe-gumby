<div class="row">
	<% include Breadcrumbs %>
	<div class="row">
		<div class="columns three">
			<div class="sidebar-form filter">
				<div id="{$DataClass}_searchform" class="searchForm">
					<h2 class="small">Search Filter</h2>
					<% if RegistryEntries %>
					$RegistryFilterForm
					<% end_if %>
				</div>
			</div>
		</div>

		<div class="columns nine">
			<div id="main" class="main" role="main">
				<h1 class="page-header">$Title</h1>

				$Content.RichLinks

				<div id="{$DataClass}_results" class="results-container">
					<% if RegistryEntries %>
						<table class="results" summary="Search results for $DataClass">
							<thead>
								<tr>
									<% loop Columns %>
										<th><a href="$Top.QueryLink&amp;Sort={$Name}&amp;Dir={$Top.OppositeDirection}#results"><i class="icon-arrow-combo"></i> $Title</a></th>
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

						<% with RegistryEntries %>
							<% include Pagination %>
						<% end_with %>
					<% else %>
						<p class="no-results">No results to show.</p>
					<% end_if %>
					
				</div>
				<footer class="content-footer columns twelve">
					<% if RegistryEntries %>
						<p class="pull-left result-actions">
							<a class="export" href="$Link(export)?$AllQueryVars" title="Export all results to a CSV spreadsheet file"><i class="icon-export" aria-hidden="true"></i>Export results to CSV</a>
							<a class="history-feed-link" href="registry-feed/latest/{$DataClass}" title="View imported data history"><i class="icon-back-in-time" aria-hidden="true"></i>View imported data history</a>
						</p>
					<% end_if %>
					<% include PrintShare %>
					<% include LastEdited %>
				</footer>
			</div>
		</div>
	</div>
</div>
