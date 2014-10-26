<p class="print-share">
	<span id="print-placeholder"></span>

	<% if SiteConfig.AddThisProfileID %>
		<a class="addthis_button" href="http://www.addthis.com/bookmark.php?v=250&pubid=$SiteConfig.AddThisProfileID">Share</a>
	<% end_if %>


	<% if $AtomLink || $RSSLink || $DefaultAtomLink || $DefaultRSSLink %>
		<a href="<% if $AtomLink %>$AtomLink<% else_if $RSSLink %>$RSSLink<% else_if $DefaultAtomLink %>$DefaultAtomLink<% else_if $DefaultRSSLink %>$DefaultRSSLink<% end_if %>">
			<i class="icon-rss icon-dark" aria-hidden="true"></i>
			Subscribe
		</a>
	<% end_if %>
	<% if PdfLink %><a href="$PdfLink" class="pdf">Export PDF</a><% end_if %>
</p>
