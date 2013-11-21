<div class="row layout">
	<% include Breadcrumbs %>
	<div class="row">
		<div class="columns columns three">
			<% include Filter %>
		</div>
		<div class="columns nine">
			<div id="main" class="results-list typography" role="main">
				<h1 class="page-header">$Title</h1>

				<div class="clearfix">
					$Content.RichLinks
				</div>

				<% include MonthFilter %>

				<div class="results-header">
					<p class="subtitle pull-left">
						<% if FilterDescription %>
						$FilterDescription
						<% else %>
						Upcoming events
						<% end_if %>
					</p>
					<p class="pull-right">
						<% if FilteredUpdates %>
						<% with FilteredUpdates %>$FirstItem - $LastItem of $count
						<% end_with %>
						<% else %>
						none
						<% end_if %>
					</p>
				</div>

				<% if FilteredUpdates %>
					<% loop FilteredUpdates %>
						<article class="item $EvenOdd $FirstLast <% if $First %>clearfix<% end_if %>">
							<% include EventItem %>
						</article>
					<% end_loop %>

					<% with FilteredUpdates %>
						<% include Pagination %>
					<% end_with %>
				<% else %>
					<article class="odd first clearfix">
						<p>No events</p>
					</article>
				<% end_if %>

				$Form
				<% include RelatedPages %>
				$PageComments
				
				<footer class="content-footer columns twelve">
					<% include PrintShare %>
					<% include LastEdited %>
				</footer>
			</div>
		</div>
	</div>
</div>
