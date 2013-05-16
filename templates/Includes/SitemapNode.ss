<% if Children %>
	<div class="page-toggle">
		<a href="{$CurrentPage.Link}page/$ID<% loop Parents %>$ID<% end_loop %>" class="button" data-toggle="collapse" data-target="#children-$ID">
			<span class="toggleIco icon-plus"></span>
		</a>
	</div>
<% end_if %>

<a href="$Link" class="sitemap-link"><span class="sitetree-icon">
	<img src="{$baseURL}cwp/<% if $pageIcon %>$pageIcon<% else %>images/icons/sitetree_images/page.png<% end_if %>" alt="$ClassName"></span>
	<span class="title">$MenuTitle</span>
</a>

<div id="children-$ID" class="collapse"></div>
