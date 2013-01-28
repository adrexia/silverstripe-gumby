<p class="pull-right printShare" role="menu" aria-label="Print and share menu">
	<span id="print-placeholder"></span>

	<% if SiteConfig.AddThisProfileID %>
		<a class="addthis_button" role="menuitem" href="http://www.addthis.com/bookmark.php?v=250&pubid=$SiteConfig.AddThisProfileID">Share</a>
	<% end_if %>

	<% if $RSSLink %>
		<a href="$RSSLink" role="menuitem" target="_blank">Subscribe</a>
	<% else_if $DefaultRSSLink %>
		<a href="$DefaultRSSLink" role="menuitem" target="_blank">Subscribe</a>
	<% end_if %>
</p>
