<div class="row">
	<% include Breadcrumbs %>
	<div class="span3">
		<div class="sidebar-nav well">
			<h6>Filter by tag</h6>
			<nav role="navigation">
				<ul class="nav nav-list">
					<li <% if CurrentTag %><% else %>class="active"<% end_if %>><a href="$AllTagsLink" title="View all tags">View all tags</a></li>
					<% loop UpdateTagsWithLinks %>
						<li <% if $Top.CurrentTag.ID==$ID %>class="active"<% end_if %>><a href="$Link" title="View items tagged $Name">$Name</a></li>
					<% end_loop %>
				</ul>
			</nav>
		</div>

		<div class="sidebar-form well">
			<h6>Filter by date range</h6>

			<% with DateRangeForm %>
				<form $FormAttributes>
					<% if ErrorMessage %>
						<div id="{$FormName}_error" class="message $ErrorMessageType">$ErrorMessage</div>
					<% else %>
						<div id="{$FormName}_error" class="message $ErrorMessageType" style="display: none"></div>
					<% end_if %>

					<fieldset>
						<div id="from" class="field date text">
							<label class="left" for="{$FormName}_from">Filter from date <span class="field-note">(example: 31/12/13)</span></label>
							$Fields.dataFieldByName(from)
						</div>
						<div id="to" class="field date text">
							<label class="left" for="{$FormName}_to">Filter to date <span class="field-note">(example: 31/12/13)</span></label>
							$Fields.dataFieldByName(to)
							<div class="field-note">Tip: Leave one field blank to search for a single date.</div>
						</div>
						$Fields.dataFieldByName(tag)
						$Fields.dataFieldByName(SecurityID)
					</fieldset>

					<div class="Actions">
						<% if Actions %>
							<% loop Actions %>$Field<% end_loop %>
						<% end_if %>
					</div>
				</form>
			<% end_with %>
		</div>
	</div>
	<div id="main" class="span9 resultsList" role="main">
		<h1 class="page-header">$Title</h1>

		<div class="clearfix">
			$Content.RichLinks
		</div>
		
		<% if AvailableMonths %>
			<div class="month-filter">
				<h2 class="nonvisual-indicator">Month filter:</h2>
				
				<% if FilteredUpdates %>
					<% if FilterDescription %>
						<p><a href="$Link">Show all news</a></p>
					<% end_if %>
				<% end_if %>
				
				<% loop AvailableMonths %>
					<h6 class="year">$YearName:</h6>
					<ol class="nav nav-pills unstyled months">
					<% loop Months %>
						<li <% if Active %>class="active"<% end_if %>><a href="$MonthLink.XML">$MonthName</a></li>
					<% end_loop %>
					</ol>
				<% end_loop %>
			</div>
		<% end_if %>

		<% if FilteredUpdates %>
			<div class="resultsHeader">
				<h2 class="pull-left"><% if FilterDescription %>$FilterDescription<% else %>News<% end_if %></h2>
				<p class="pull-right"><% with FilteredUpdates %>$FirstItem - $LastItem of $count<% end_with %></p>
			</div>
		
			<% loop FilteredUpdates %>
				<article class="$EvenOdd">
					<% if FeaturedImage %>
						<figure>
							$FeaturedImage.SetHeight(150)
						</figure>
					<% end_if %>
					<header>
						<h3><a href="$Link">$Title</a></h3>
					</header>
					<p class="metaInfo"><time datetime="$Date">$Date.nice<% if $StartTime %> $StartTime.Nice<% if $EndTime %> - $EndTime.Nice<% end_if %><% end_if %></time><% if Author %> by $Author<% end_if %></p>
					<p>
						<% if Abstract %>
							$Abstract
						<% else %>
							$Content.LimitWordCount
						<% end_if %>
					</p>
				</article>
			<% end_loop %>

			<% with FilteredUpdates %>
				<% include Pagination %>
			<% end_with %>
		<% else %>
			<div class="resultsHeader">
				<h2 class="pull-left"><% if FilterDescription %>$FilterDescription <a href="$Link">Show all news</a><% else %>News<% end_if %></h2>
				<p class="pull-right">None</p>
			</div>

			<article class="">
				<p>No news</p>
			</article>
		<% end_if %>

		$Form
		<% include RelatedPages %>
		$PageComments
		<% include PrintShare %>
	</div>
</div>
