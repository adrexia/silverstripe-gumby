<% include Slider %>

<!-- Main hero unit for a primary marketing message or call to action -->
<% include HeroUnit %>

$Form
$PageComments

<!-- Example row of columns -->
<h2 class="nonvisual-indicator">Features</h2>
<div class="row">
	
	<% if Quicklinks %>
	<div class="columns link-set three">
		<h3><i class="icon-link" aria-hidden="true"></i> Quicklinks</h3>
		<ul>
			<% loop Quicklinks %>
				<li class="$EvenOdd $FirstLast"><a href="$Link" class="$FirstLast">$Name</a></li>
			<% end_loop %>
		</ul>
	</div>
	<% end_if %>

	<% if NewsItems %>
	<div class="columns <% if not Quicklinks %>six<% else %>five<% end_if %> results-list">
		<h3><i class="icon-layout" aria-hidden="true"></i> <a href="$NewsPage.Link">$NewsPage.Title</a></h3>
		<% loop getNewsItems(3) %>
			<article class="$EvenOdd $FirstLast item">
				<% include NewsItem %>
			</article>
		<% end_loop %>
	</div>
	<% end_if %>

	<div class="columns <% if not Quicklinks %>six<% else %>four<% end_if %> feature">
		<% if $FeatureOneTitle %>
			<h3><% if $FeatureOneCategory %><i class="icon-$FeatureOneCategory" aria-hidden="true"></i> <% end_if %>$FeatureOneTitle</h3>
		<% end_if %>
		<% if FeatureOneContent %>
			$FeatureOneContent
		<% end_if %>
		<% if $FeatureOneLink && $FeatureOneButtonText %>
			<% if FeatureOneLink %>
				<p class="btn default metro medium"><a href="$FeatureOneLink.Link">$FeatureOneButtonText</a></p>
			<% end_if %>
		<% end_if %>

		<% if $FeatureTwoTitle %>
			<h3><% if $FeatureTwoCategory %><i class="icon-$FeatureTwoCategory" aria-hidden="true"></i> <% end_if %>$FeatureTwoTitle</h3>
		<% end_if %>
		<% if FeatureTwoContent %>
			$FeatureTwoContent
		<% end_if %>
		<% if $FeatureTwoLink && $FeatureTwoButtonText %>
			<% if FeatureTwoLink %>
				<p class="btn default metro medium"><a href="$FeatureTwoLink.Link">$FeatureTwoButtonText</a></p>
			<% end_if %>
		<% end_if %>
	</div>
	<footer class="content-footer columns twelve">
			<% include LastEdited %>
	</footer>
</div>
