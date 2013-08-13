<% if Children %>
	<div class="page-toggle">
		<a href="{$CurrentPage.Link}page/$ID<% loop Parents %>$ID<% end_loop %>" class="button" data-toggle="collapse" data-target="#children-$ID" tabindex="0" label="Expand $Title" title="Show pages beneath this page">
			<span class="linkText">Expand/collapse section</span>
			<span class="toggleIco icon-plus"></span>
		</a>
	</div>
<% end_if %>

<a href="$Link" class="sitemap-link" title="Go to $MenuTitle page">
	<span class="sitetree-icon">
	<img src="{$baseURL}cwp/<% if $pageIcon %>$pageIcon<% else %>images/icons/sitetree_images/page.png<% end_if %>" alt=""></span>
	<span class="title">$MenuTitle</span>
</a>

<div id="children-$ID" class="collapse"></div>