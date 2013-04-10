<?xml version="1.0"?>
<rss version="2.0" xmlns:dc="http://purl.org/dc/elements/1.1/" xmlns:atom="http://www.w3.org/2005/Atom">
	<channel>
		<title>$Title</title>
		<link>$Link</link>
		<atom:link href="$Link" rel="self" type="application/rss+xml" />

		<% cached 'page_changes_rss', ID, Entries.First.Version %>
			<% loop Results %>
				<item>
					<title>$Title.XML</title>
					<link>$AbsoluteLink</link>
					<description>
						$Content.AbsoluteLinks.XML
					</description>
					<pubDate>$LastEdited.Rfc822</pubDate>
					<guid>$AbsoluteLink</guid>
				</item>
			<% end_loop %>
		<% end_cached %>
	</channel>
</rss>
