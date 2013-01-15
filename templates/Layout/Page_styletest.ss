<div class="row">
	<div class="span3">
		<% include SidebarNav %>
	</div>
	<section class="span9">
		<header class="page-header subhead">
			<h1>Style test-drive</h1>
		</header>

		<div id="elements">
			<a href=#"">link with href</a>
			<a name="blah">link with name</a>
			<abbr title="Abbreviation">abbr</abbr>
			<address>address</address>

			<img src="http://www.accessibleculture.org/misc-tests/w3c/html-api/assets/shapes.png" usemap="#shapes"
			  alt="Four shapes are available: a red hollow box, a green circle, a blue triangle, and a yellow four-pointed star.">
			<map name="shapes">
			<area shape=rect coords="50,50,100,100"> <!-- the hole in the red box -->
			<area shape=rect coords="25,25,125,125" href="red.html" alt="Red box.">
			<area shape=circle coords="200,75,50" href="green.html" alt="Green circle.">
			<area shape=poly coords="325,25,262,125,388,125" href="blue.html" alt="Blue triangle.">
			<area shape=poly coords="450,25,435,60,400,75,435,90,450,125,465,90,500,75,465,60" alt="Yellow star.">
			</map>
			<article>Article</article>
			<aside>Aside</aside>
			<audio title="audio" tabindex="0" autobuffer="" controls="">
				 <source src="http://www.accessibleculture.org/misc-tests/w3c/html-api/assets/1.mp3"></source>
				  <source src="http://www.accessibleculture.org/misc-tests/w3c/html-api/assets/kahvi285d_jim_black-yoctosecond.ogg"></source>
				  <!-- Find the audio file here: http://www.kahvi.org/releases.php?release_number=285 -->
				  Your browser does not support OGG audio. Try using Safari, Chrome or Firefox.</audio>
			<b>bold</b>
			<bdo dir="rtl">abba</bdo>
			<blockquote>
			<p>This is a blockquote.</p>
			</blockquote>
			<br id="break" title="break">
			<button>This is a button</button>
			<br>
			<canvas></canvas>
			<cite>Cite</cite>
			<code>&lt;code&gt;</code>
			<figure>
				<img width="240" height="160" alt="Watching the Sky by Nathaniel Reinhart" src="http://www.accessibleculture.org/misc-tests/w3c/html-api/assets/sky.jpg"><br>
				<figcaption>Figcaption: Watching the Sky by Nathaniel Reinhart</figcaption>
			</figure>
			<table cellspacing="10">
			<caption>Table Caption</caption>
			<thead>
				<tr><th></th><th>col header 2</th></tr>
			</thead>
			<tfoot>
				<tr><td>tfoot cell 1</td><td>tfoot cell 2</td></tr>
			</tfoot>
			<tbody>
			<tr>
				<th>row header 1</th>
				<td>table cell 1</td>
			</tr>
			<tr>
				<th>row header 2</th>
				<td>table cell 2</td>
			</tr>
			</tbody>
			</table>
			<table id="col">
				<colgroup><col><col><col>
				<colgroup><col><col><col>
				<colgroup><col><col><col>
				<tbody>
				<tr> <td> 1 <td>   <td> 3 <td> 6 <td>   <td> 4 <td> 7 <td>   <td> 9
				<tr> <td>   <td> 2 <td>   <td>   <td> 9 <td>   <td>   <td> 1 <td>
				<tr> <td> 7 <td>   <td>   <td>   <td>   <td>   <td>   <td>   <td> 6
				<tbody>
				<tr> <td> 2 <td>   <td> 4 <td>   <td> 3 <td>   <td> 9 <td>   <td> 8
				<tr> <td>   <td>   <td>   <td>   <td>   <td>   <td>   <td>   <td>
				<tr> <td> 5 <td>   <td>   <td> 9 <td>   <td> 7 <td>   <td>   <td> 1
				<tbody>
				<tr> <td> 6 <td>   <td>   <td>   <td> 5 <td>   <td>   <td>   <td> 2
				<tr> <td>   <td>   <td>   <td>   <td> 7 <td>   <td>   <td>   <td>
				<tr> <td> 9 <td>   <td>   <td> 8 <td>   <td> 2 <td>   <td>   <td> 5
			</table>
			<menu type="toolbar">
				<li>
					<menu label="File">
					<button type="button" onclick="fnew()">New...</button>
					<button type="button" onclick="fopen()">Open...</button>
					<button type="button" onclick="fsave()">Save</button>
					<button type="button" onclick="fsaveas()">Save as...</button>
					</menu>
				</li>
				<li>
					<menu label="Edit">
					<button type="button" onclick="ecopy()">Copy</button>
					<button type="button" onclick="ecut()">Cut</button>
					<button type="button" onclick="epaste()">Paste</button>
					</menu>
				</li>
				<li>
					<menu label="Help">
					<li><a href="help.html">Help</a></li>
					<li><a href="about.html">About</a></li>
					</menu>
				</li>
			</menu>
			<menu type="context">
				<command label="Left" onclick="setAlign('left')">
				<command label="Center" onclick="setAlign('center')">
				<command label="Right" onclick="setAlign('right')">
			</menu>
			<menu type="list">
				<input id="commandCheckbox" type="checkbox" value="Checkbox">
				<input id="radioCheckbox" type="radio" value="Radio">
				<button type="button" onclick="doSomething()">Do Something</button>
			</menu>
			<form>
				<fieldset>
				<legend>Form legend</legend>
			<div class="entry">
				<label for="form-1">Text (required &amp; autofocus) </label>
				<input id="form-1"  name="haha" type="text" autofocus required>
			 </div>
			<div class="entry">
				<label for="form-1a">Text with place holder</label>
				<input id="form-1a"  name="hah" type="text" placeholder="place holder">
			</div>
			<div class="entry">
				<label for="form-2">Text with Datalist</label>
				<input id="form-2" list="mylist" type="text">
				<datalist id="mylist">
					<option label="Mr" value="Mr">
					<option label="Ms" value="Ms">
					<option label="Prof" value="Mad Professor"> 
				</datalist>
			</div>
			<div class="entry">
				<label for="form-4">Number</label>
				<input id="form-4"  name="age" type="number" min="18" max="25">
			</div>
			<div class="entry">
				<label for="form-5">Email</label>
				<input id="form-5"  name="email" type="email">
			</div>
			<div class="entry">
				<label for="form-6">URL</label>
				<input id="form-6"  name="url" type="url">
			</div>
			<div class="entry">
				<label for="form-7">Date</label>
				<input id="form-7"  name="dob" type="date">
			</div>
			<div class="entry">
				<label for="form-8">Date Time</label>
				<input id="form-8"  name="dt" type="datetime">
			</div>
			<div class="entry">
				<label for="form-9">Date Time-local</label>
				<input id="form-9"  name="dtl" type="datetime-local">
			</div>
			<div class="entry">
				<label for="form-10">Month</label>
				<input id="form-10"  name="m" type="month">
			</div>
			<div class="entry">
				<label for="form-11">Time</label>
				<input id="form-11"  name="t" type="time">
			</div>
			<div class="entry">
				<label for="form-12">Week</label>
				<input id="form-12"  name="w" type="week">
			</div>
			<div class="entry">
				<label for="form-13">Telephone</label>
				<input id="form-13"  name="tel" type="tel">
			</div>
			<div class="entry">
				<label for="form-14">Range</label>
				<input id="form-14"  name="a" type="range" min="1" max="10" value="0">
				output: <output name="result"  onforminput="value=a.value" aria-live="polite">0</output>
			</div>
			<div class="entry">
				<label for="form-15">Color</label>
				<input id="form-15" name="tel" type="color">
			</div>
			<div class="entry">
				<label for="checkbox">Checkbox</label>
				<input id="checkbox" name="checkbox" type="checkbox">
			</div>
			<br>
			<div class="entry">
				<label for="radio">Radio</label>
				<input id="radio" name="radio" type="radio">
			</div>
			<br>
			<div class="entry">
				<label for="file">File upload</label>
				<input id="file" name="file" type="file">
			</div>
			<br>
			<div class="entry">
				<label for="hidden">Hidden</label>
				<input id="hidden" name="hidden" type="hidden" value="Hidden">
			</div>
			<div class="entry">
				<label for="image">Image</label>
				<input id="image" name="image" type="image" src="http://www.accessibleculture.org/misc-tests/w3c/html-api/assets/shapes.png">
			</div>
			<div class="entry">
				<label for="pw">Password</label>
				<input id="pw" name="pw" type="password">
			</div>
			<div class="entry">
				<label for="reset">Reset</label>
				<input id="reset" name="reset" type="reset">
			</div>
			<div class="entry">
				<label for="search">Search</label>
				<input id="search" name="search" type="search">
			</div>
			<div class="entry">
				<label for="emailData">Email with datalist</label>
				<input id="emailData" name="emailData" list="mylist" type="email">
			</div>
			<div class="entry">
				<label for="urlData">URL with datalist</label>
				<input id="urlData" name="urlData" list="mylist" type="url">
			</div>
			<div class="entry">
				<label for="searchData">Search with datalist</label>
				<input id="searchData" name="searchData" list="mylist" type="search">
			</div>
			<div class="entry">
				<label for="telData">Telephone with datalist</label>
				<input id="telData"  name="telData" list="mylist" type="tel">
			</div>
			<div class="entry">
				<label for="keygen">Keygen</label>
				<keygen id="keygen" name="keygen">
			</div>
			<div class="entry">
				<label for="select1">Select</label>
				<select id="select1">
					<optgroup label="optgroup 1">
					<option value="1">Miner</option>
					<option value="2">Puffer</option>
					<optgroup label="optgroup 2">
					<option value="3">Otter</option>
					<option value="4">Ladder</option>
				</select>
			</div>
			<div class="entry">
				<label for="selectMultiple">Select Multiple</label>
				<select id="selectMultiple" multiple>
					<optgroup label="optgroup 1">
					<option value="1">Miner</option>
					<option value="2">Puffer</option>
					<optgroup label="optgroup 2">
					<option value="3">Otter</option>
					<option value="4">Ladder</option>
				</select>
			</div>
			<div class="entry">
				<label for="tarea">Textarea</label>
				<textarea id="tarea"></textarea>
			</div>
			<div class="button">
				<button type=submit>Submit</button>
			</div>
			</fieldset>
			</form>
			<dl>
				<dt>Term</dt><dd>Term Definition</dd>
			</dl>
			<dfn>Definition Element</dfn>
			<del>Deleted</del>
			<ins>Inserted</ins>
			<details>
				<summary>Details Summary</summary>
				<p>Detail content</summary>
			</details>
			<div id="div">Div</div>
			<em>Emphasis</em>
			<embed src="http://www.accessibleculture.org/misc-tests/w3c/html-api/assets/sky.jpg">
			<footer>Footer element</footer>
			<header>Header element</header>
			<hgroup>
				<h1>Level One Heading in hgroup</h1>
				<h2>Level Two Heading in hgroup</h2>
			</hgroup>
			<h1>Level One Heading</h1>
			<hr id="hr">
			<i>italic</i>
			<br>
			<iframe src="http://www.accessibleculture.org" width="468" height="60"></iframe>
			<br>
			<img src="http://www.accessibleculture.org/misc-tests/w3c/html-api/assets/sky.jpg" alt="alt text for sky.jpg">
			<br>
			<img src="http://www.accessibleculture.org/misc-tests/w3c/html-api/assets/sky.jpg" alt="">
			<kbd>keyboard</kbd>
			<ul>
				<li>unordered list item</li>
			</ul>
			<ol>
				<li>ordered list item</li>
			</ol>
			<mark>mark</mark>
			<p>Meter: <meter min=0 max=20 value=12>12cm</meter></p>
			<nav>Navigation</nav>
			<pre>Preformatted text</pre>
			<object data="http://www.accessibleculture.org/misc-tests/w3c/html-api/assets/sky.jpg"></object>
			<p>Progress: <progress id="p" max=100><span>0</span>%</progress></p>
			<p><q>inline quote.</q></p>
			<p>Ruby with rp and rt: <ruby> 漢 <rp>(</rp><rt>かん</rt><rp>)</rp></ruby></p>
			<p><s>s element</s></p>
			<p><samp>samp element</p>
			<section>section</section>
			<p><small>small</small></p>
			<p><span>span</span></p>
			<p><strong>strong</strong></p>
			<p><sub>sub</sub></p>
			<p><sup>sup</sup></p>
			<time datetime="2007-10-05">October 5</time>
			<p><var>var</var></p>
			<video width="320" height="240" tabindex="0" autobuffer="" controls="" src="http://www.accessibleculture.org/misc-tests/w3c/html-api/assets/sample_iPod.m4v"></video>
			<p>wbr<wbr>wbr<wbr>wbr<wbr>wbr</p>
			
		</div>

	</section>
</div>



