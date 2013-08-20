<% if Children %>
	<div class="page-toggle">
		<a href="{$CurrentPage.Link}page/$ID<% loop Parents %>$ID<% end_loop %>" role="button" class="button" data-toggle="collapse" data-target="#children-$ID" aria-controls="children-$ID" aria-expanded="false" tabindex="0">
			<span class="toggleIco icon-plus"></span>
			<span class="linkText">Expand section</span>
		</a>
	</div>
<% end_if %>

<a href="$Link" class="sitemap-link" title="Go to $MenuTitle page">
	<span class="sitetree-icon">
	<img src="{$baseURL}cwp/<% if $pageIcon %>$pageIcon<% else %>images/icons/sitetree_images/page.png<% end_if %>" alt=""></span>
	<span class="title">$MenuTitle</span>
</a>

<div id="children-$ID" class="collapse"></div>