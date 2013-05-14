<% cached 'menu2', ID, List(SiteTree).max(LastEdited) %>
<div class="sidebar-nav well">
	<nav role="navigation">
		<h2 class="nonvisual-indicator">Secondary Navigation</h2>
		<ul class="nav nav-list">
			<% loop Menu(2) %>

				<%-- second level pages --%>
				<li class="$LinkingMode <% if $LinkingMode = current %>active<% end_if %>">
					<a href="$Link"><span></span>$MenuTitle</a>
					<% if LinkOrSection = section %>
						<% if Children %>
							<ul class="nav nav-list">
								<% loop Children %>

									<%-- third level pages --%>
									<li class="$LinkingMode <% if $LinkingMode = current %>active<% end_if %>">
										<a href="$Link"><span></span>$MenuTitle</a>
										<% if LinkOrSection = section %>
											<% if Children %>
												<ul class="nav nav-list">
													<% loop Children %>

														<%-- fourth level pages --%>
														<li class="$LinkingMode <% if $LinkingMode = current %>active<% end_if %>">
															<a href="$Link"><span></span>$MenuTitle</a>
															<% if LinkOrSection = section %>
																<% if Children %>
																	<ul class="nav nav-list">
																		<% loop Children %>

																			<%-- fifth level pages --%>
																			<li class="$LinkingMode <% if $LinkingMode = current %>active<% end_if %>">
																				<a href="$Link"><span></span>$MenuTitle</a>
																			</li>
																			<%-- end fifth level pages --%>

																		<% end_loop %>
																	</ul>
																<% end_if %>
															<% end_if %>
														</li>
														<%-- end fourth level pages --%>

													<% end_loop %>
												</ul>
											<% end_if %>
										<% end_if %>
									</li>
									<%-- end third level pages --%>

								<% end_loop %>
							</ul>
						<% end_if %>
					<% end_if %>
				</li>
				<%-- end second level pages --%>

			<% end_loop %>
		</ul>
	</nav>
</div>
<% end_cached %>
