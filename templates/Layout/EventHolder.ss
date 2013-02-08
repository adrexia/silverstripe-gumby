<div class="row">
	<% include Breadcrumbs %>
	<div class="span3">
		<div class="sidebar-nav well">
			<nav role="navigation">
				<h2 class="nonvisual-indicator">Available tags filter:</h2>
				<ul class="nav nav-list">
					<li class="nav-header">In $Title</li>
					<li <% if CurrentTag %><% else %>class="active"<% end_if %>><a href="$Link" title="View all news">View all events</a></li>
					<% loop EventTagsWithLinks %>
						<li <% if $Top.CurrentTag.ID==$ID %>class="active"<% end_if %>><a href="$Link" title="View $Name">$Name</a></li>
					<% end_loop %>
				</ul>
			</nav>
		</div>

		<div class="sidebar-nav well">
			<nav role="navigation">
				<h2 class="nonvisual-indicator">Date range filter:</h2>

				<% with DateRangeForm %>
					<form $FormAttributes>
						<fieldset>
							<div id="from" class="field datetime">
								<label class="left" for="{$FormName}_from">From (at):</label>
								$Fields.dataFieldByName(from)
							</div>
							<div id="to" class="field datetime">
								<label class="left" for="{$FormName}_to">To:</label>
								$Fields.dataFieldByName(to)
							</div>
							$Fields.dataFieldByName(tag)
							$Fields.dataFieldByName(SecurityID)
						</fieldset>

						<% if Actions %>
							<% loop Actions %>$Field<% end_loop %>
						<% end_if %>
					</form>
				<% end_with %>

			</nav>
		</div>
	</div>
	<div class="span9 resultsList" role="main">
		<h1>$Title</h1>

		$Content.RichLinks
	
		<% if AvailableMonths %>
			<div class="month-filter">
				<h2 class="nonvisual-indicator">Month filter:</h2>
				<ol class="unstyled years">
					<% loop AvailableMonths %>
						<li>
							<span class="year">$YearName:</span>
							<ol class="nav nav-pills unstyled months">
							<% loop Months %>
								<li <% if Active %>class="active"<% end_if %>><a href="$MonthLink.XML">$MonthName</a></li>
							<% end_loop %>
							</ol>
						</li>
					<% end_loop %>
				</ol>
			</div>
		<% end_if %>

		<% if FilteredEvents %>
			<header class="resultsHeader">
				<h2 class="pull-left">Latest in <% if CurrentTag %>"$CurrentTag.Name"<% else %>$Title<% end_if %></h2>
				<p class="pull-right"><% with FilteredEvents %>Displaying $FirstItem - $LastItem of $count<% end_with %></p>
			</header>
		
			<% loop FilteredEvents %>
				<article class="$EvenOdd">
					<header>
						<h3><a href="$Link">$Title</a></h3>
					</header>
					<p><time datetime="$Date">$Date.nice</time></p>
					<p>$Content.LimitWordCount</p>
				</article>
			<% end_loop %>

			<% with FilteredEvents %>
				<% include Pagination %>
			<% end_with %>
		<% end_if %>

		$Form
		<% include RelatedPages %>
		$PageComments
		<% include PrintShare %>
	</div>
</div>
