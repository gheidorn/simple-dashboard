<?php

?>
<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" 
   "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">
<html xmlns="http://www.w3.org/1999/xhtml" lang="en" xml:lang="en">
<head>
  <title>Simple Dashboard</title>
  <link rel="stylesheet" type="text/css" href="reset.css" />
  <link rel="stylesheet" type="text/css" href="stylesheet.css" />
</head>
<body>
<div id="page">
	<div id="header">
		<h1><a href="index.php">Simple Dashboard</a></h1>
	</div>
	<div id="content">
		<div class="resource">
			<div class="resource-details">
				<div id="dpe01-status" class="resource-status">
					<h2>dpe01 is <span>having the gold stack installed on it</span></h2>
				</div>
				<div id="dpe01-status-form" class="resource-status-form">
					<h2>
						dpe01 is <input class="resource-status-form-txt" type="text" name="status" value="having the gold stack installed on it" />
						<button class="save">Save</button><button class="cancel">Cancel</button>
					</h2>
  					<input type="hidden" name="resource" value="dpe01" />
				</div>
				<h3>by perkins @ 16:23:12 on 05/18</h3>
			</div>
			<div id="dpe01-log" class="resource-log">
    			<p>05/18/09 14:08:21 oakes: Under going re-provisioning.  ETA may 25th.  installing global premier, id&amp;v, and ldap</p>
    			<p>05/15/09 15:00:33 kasher: completed project XYZ; ready for re-provisioning</p>
    			<p>05/14/09 15:00:33 gu: running a load test</p>
    			<p>05/13/09 15:00:33 heidorn: troubleshooting memory issue...</p>
    			<p>05/13/09 09:34:01 gu: running soak test</p>
    			<a href="#">more ...</a>
			</div>
		</div>
		<div class="resource">
			<div class="resource-details">
				<div id="dpe02-status" class="resource-status">
					<h2>dpe02 is <span>ready for testing</span></h2>
				</div>
				<div id="dpe02-status-form" class="resource-status-form">
  					<h2>
  						dpe02 is <input class="resource-status-form-txt" type="text" name="status" value="ready for testing" />
  						<button class="save">Save</button><button class="cancel">Cancel</button>
  					</h2>
      				<input type="hidden" name="resource" value="dpe02" />
				</div>
				<h3>by mccarthy @ 08:15:43 on 05/19</h3>
			</div>
			<div id="dpe02-log" class="resource-log">
				<p>05/15/09 15:00:33 perkins:  Completed re-provisioning for US PIB.</p>
			</div>
		</div>
		<div class="resource">
			<div class="resource-details">
				<div id="dpe03-status" class="resource-status">
					<h2>dpe03 is <span>running a load test</span></h2>
				</div>
				<div id="dpe03-status-form" class="resource-status-form">
  					<h2>
  						dpe03 is <input class="resource-status-form-txt" type="text" name="status" value="running a load test" />
  						<button class="save">Save</button><button class="cancel">Cancel</button>
  					</h2>
      				<input type="hidden" name="resource" value="dpe03" />
				</div>
				<h3>by mccarthy @ 08:32:10 on 05/19</h3>
			</div>
			<div id="dpe03-log" class="resource-log">
				<p>05/15/09 15:00:33 heidorn:  installing profiler...</p>
			</div>
		</div>
	</div>
	<div id="footer">
		<a href="#">faq</a> | <a href="#">help</a>
	</div>
</div>
<script type="text/javascript" src="http://ajax.googleapis.com/ajax/libs/jquery/1.3.2/jquery.min.js"></script>
<script type="text/javascript" src="ui.js"></script>
</body>
</html>