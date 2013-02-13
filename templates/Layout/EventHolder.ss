<div class="row">
	<% include Breadcrumbs %>
	<div class="span3">
		<div class="sidebar-nav well">
			<h6>Tags filter</h6>
			<nav role="navigation">
				<ul class="nav nav-list">
					<li <% if CurrentTag %><% else %>class="active"<% end_if %>><a href="$AllTagsLink" title="View all tags">View all tags</a></li>
					<% loop EventTagsWithLinks %>
						<li <% if $Top.CurrentTag.ID==$ID %>class="active"<% end_if %>><a href="$Link" title="View $Name">$Name</a></li>
					<% end_loop %>
				</ul>
			</nav>
		</div>

		<div class="sidebar-form well">
			<h6>Date range filter</h6>

			<% with DateRangeForm %>
				<form $FormAttributes>
					<% if ErrorMessage %>
						<div id="{$FormName}_error" class="message $ErrorMessageType">$ErrorMessage</div>
					<% else %>
						<div id="{$FormName}_error" class="message $ErrorMessageType" style="display: none"></div>
					<% end_if %>

					<fieldset>
						<div id="from" class="field date text">
							<label class="left" for="{$FormName}_from">From:</label>
							$Fields.dataFieldByName(from)
						</div>
						<div id="to" class="field date text">
							<label class="left" for="{$FormName}_to">To:</label>
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
	<div class="span9 resultsList" role="main">
		<h1>$Title</h1>

		$Content.RichLinks
	
		<% if AvailableMonths %>
			<div class="month-filter">
				<h2 class="nonvisual-indicator">Month filter:</h2>
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

		<% if FilteredEvents %>
			<header class="resultsHeader">
				<h2 class="pull-left"><% if CurrentTag %>Tagged as "$CurrentTag.Name"<% else %>Latest to earliest<% end_if %></h2>
				<p class="pull-right"><% with FilteredEvents %>$FirstItem - $LastItem of $count<% end_with %></p>
			</header>
		
			<% loop FilteredEvents %>
				<article class="$EvenOdd">
					<header>
						<h3><a href="$Link">$Title</a></h3>
					</header>
					<p><time datetime="$Date">$Date.nice</time></p>
					<p>
						<% if Abstract %>
							$Abstract
						<% else %>
							$Content.LimitWordCount
						<% end_if %>
					</p>
				</article>
			<% end_loop %>

			<% with FilteredEvents %>
				<% include Pagination %>
			<% end_with %>
		<% else %>
			<header class="resultsHeader">
				<h2 class="pull-left"><% if CurrentTag %>Tagged as "$CurrentTag.Name"<% else %>Latest to earliest<% end_if %></h2>
				<p class="pull-right">None</p>
			</header>

			<article class="">
				<p>No events</p>
			</article>
		<% end_if %>

		$Form
		<% include RelatedPages %>
		$PageComments
		<% include PrintShare %>
	</div>
</div>
