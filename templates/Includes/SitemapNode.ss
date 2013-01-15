<% if Children %>
	<div class="page-toggle">
	<a class="button" data-toggle="collapse" data-target="#children-$ID">
		<span class="toggleIco icon-plus"></span>
	</a>
	</div>
<% end_if %> 
<a href="$Link" class="sitemap-link"><span class="sitetree-icon"><img src="{$BaseHref}/themes/default/<%if $pageIcon %>$pageIcon<% else %>images/icons/sitetree_images/page.png<% end_if %>" alt="$ClassName"></span>$Title</a>

<% if Children %>
	<div id="children-$ID" class="collapse"> 
		<ul>
			<% loop Children %>
				<% if ShowInMenus %>
					<li data-pagetype="$ClassName" class="$FirstLast class-$ClassName">
					<% include SitemapNode %>
					</li>
				<% end_if %>
			<% end_loop %>
		</ul>
	</div>
<% end_if %>
