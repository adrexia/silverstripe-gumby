<p class="pull-right printShare">
	<span id="print-placeholder"></span>

	<% if SiteConfig.AddThisProfileID %>
		<a class="addthis_button" href="http://www.addthis.com/bookmark.php?v=250&pubid=$SiteConfig.AddThisProfileID">Share</a>
	<% end_if %>

	<% if $RSSLink %>
		<a href="$RSSLink">Subscribe</a>
	<% else_if $DefaultRSSLink %>
		<a href="$DefaultRSSLink">Subscribe</a>
	<% end_if %>

	<% if PdfLink %><a href="$PdfLink" class="pdf">Export PDF</a><% end_if %>
</p>
