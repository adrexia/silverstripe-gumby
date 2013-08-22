<div id="BlogContent" class="blogcontent typography">
	<div class="row">
		<% include BreadCrumbs %>
		<div class="span3">
			<div class="sidebar-nav well">
				<% include BlogSideBar %>
			</div>
		</div>
		<div id="main" class="span9">
			<h1 class="page-header">$Title</h1>
			<% if SelectedTag %>
				<h3><% _t('VIEWINGTAGGED', 'Viewing entries tagged with') %> '$SelectedTag'</h3>
			<% else_if SelectedDate %>
				<h3><% _t('VIEWINGPOSTEDIN', 'Viewing entries posted in') %> $SelectedNiceDate</h3>
			<% else_if SelectedAuthor %>
				<h3><% _t('VIEWINGPOSTEDBY', 'Viewing entries posted by') %> $SelectedAuthor</h3>
			<% end_if %>
			
			<% if BlogEntries %>
				<% loop BlogEntries %>
					<% include BlogSummary %>
				<% end_loop %>
			<% else %>
				<h2><% _t('NOENTRIES', 'There are no blog entries') %></h2>
			<% end_if %>
			
			<% include BlogPagination %>
		</div>
	</div>
</div>
