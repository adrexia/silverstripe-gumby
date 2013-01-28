<p class="pull-right printShare" role="menu" aria-label="Print and share menu">
	<a href="#" role="menuitem" onclick="window.print(); return false;">Print</a>

	<% if SiteConfig.AddThisProfileID %>
		<a class="divider-left addthis_button" role="menuitem" href="http://www.addthis.com/bookmark.php?v=250&pubid=$SiteConfig.AddThisProfileID">Share</a>
	<% end_if %>

	<% if $RSSLink %>
		<a class="divider-left" href="$RSSLink" role="menuitem" target="_blank">Subscribe</a>
	<% else_if $DefaultRSSLink %>
		<a class="divider-left" href="$DefaultRSSLink" role="menuitem" target="_blank">Subscribe</a>
	<% end_if %>
</p>
