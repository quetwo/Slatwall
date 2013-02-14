<h3>Requirements</h3>
<ul>
<li>CFML Server Version: Coldfusion 9.0.1 or Railo 4.0.1.003</li>
<li>Database Engine: MySQL, Microsoft SQL or Other*</li>
<li>Operating System: Windows, Mac OSX, Linux</li>
</ul>
<small>*Slatwall is built on top of Java's Hibernate.  Theoretically any of the databases that Hibernate supports should work, but as of right now only MS SQL & MySQL are tested with every release. Use other engines at your own risk</small>
<br />
<h3>Selecting Install Style</h3>
<p>You can install Slatwall a handful of different ways.  Selecting the correct option really depends on your situation and how you intend to use Slatwall.  At it's core you can think of Slatwall as your back-office commerce management solution, Slatwall by itself does not have any CMS built in, so if you planing to be building a public faceing eCommerce website we hightly recommend selecting an option that includes a CMS</p>
<dl class="dl-horizontal">
	<dt>Standalone</dt>
	<dd>This is a good option for anyone who already has a CFML engine like Adobe Coldfusion or Railo running on your server, and either don't plan to use a CMS or you plan to impliment a custom CMS that we don't already have an integration built for.</dd>
</dl>
<dl class="dl-horizontal">
	<dt>Integrated w/Mura</dt>
	<dd>Mura is one of the most powerful Content Management System on the market.  If you plan to roll out a public facing eCommerce site, we highly recommend this option</dd>
</dl>
<dl class="dl-horizontal">
	<dt>Integrated w/Coldbox</dt>
	<dd>Coldbox is an extreamly flexible Web Application framework.  If you already have a coldbox application, content-box website, or plan to build a custom app ontop of Coldbox, then this is the option for you.</dd>
</dl>
<dl class="dl-horizontal">
	<dt>Railo Extension</dt>
	<dd>Railo is a free, open source, fast, scalable and reliable CMFL rendering engine.  We have leverage the Railo extension manager so that you can install the Standalone version of Slatwall right from the Railo administrator.</dd>
</dl>
<h3>Installing</h3>
<h5>Standalone</h5>
<ol>
	<li>Navigate to <a href="http://www.getslatwall.com/">http://www.getslatwall.com/</a> and click the "Download" link.  If given an option, we recommend the Latest Stable Release</li>
	<li>The file should be downloaded as a .zip file that you will need to unzip</li>
	<li>Once the application is unziped, place it in your web root and configure it to run either via IIS or Apache</li>
	<li>Create a datasource called 'Slatwall' in your CFIDE or Railo administrator, and point it to a fresh database.</li>
	<li>Navigate to the site in your browser and follow the steps on the screen.</li>
</ol>
<h5>Integrated w/Mura</h5>
<ol>
	<li>...</li>
</ol>
<h5>Integrated w/Coldbox</h5>
<ol>
	<li>...</li>
</ol>
<h5>Railo Extension</h5>
<ol>
	<li>...</li>
</ol>