<!---
		This file is part of the Google Translation Widget plugin for Mura CMS,
		
		This plugin is free software: you can redistribute it and/or modify
		it under the terms of the GNU General Public License as published by
		the Free Software Foundation, Version 2 of the License.
		
		This plugin is distributed in the hope that it will be useful,
		but WITHOUT ANY WARRANTY; without even the implied warranty of
		MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
		GNU General Public License for more details.

		You should have received a copy of the GNU General Public License
		along with Mura CMS.  If not, see <http://www.gnu.org/licenses/>.
--->

<cfinclude template="plugin/config.cfm" />
<cfsavecontent variable="body">
<cfoutput>
<h2>#request.pluginConfig.getName()#</h2>
<h3>Overview</h3>
<p>This plugin adds a Google Translation Widget to your Mura page</p>
<h3>Installation</h3>
<ol>
	<li>Login to your Mura CMS admin</li>
	<li>Click on &quot;Site Settings&quot; on the (yellow) top admin bar.</li>
	<li>Select the &quot;Plugins&quot; tab</li>
	<li>Browse to the location of the GoogleTranslationWidget.zip file Do not extract unless you wish to examine the code. Mura needs to unpack and deploy the zip file.</li>
	<li>Click &quot;Deploy&quot;</li>
	<li>After Deployment, on the plugin edit page, use the &quot;Default Translate from&quot; and the &quot;Default Translate to&quot; drop-down lists to set default language preferences. </li>
	<li>Under &quot;Site Assignment&quot; select any/all site(s) you wish this plugin assigned to</li>
	<li>Click the &quot;Update&quot; Button</li>
	<li>Go to the &quot;Site Manager&quot; of the site you wish to display this on</li>
	<li>Select a page to edit</li>
	<li>Select the &quot;Content Objects&quot; tab</li>
	<li>From the &quot;Available Content Objects&quot; dropdown, select &quot;Plugins&quot;</li>
	<li>Then select &quot;GoogleTranslationWidget&quot; and choose which area to display on by clicking the &quot;&gt;&gt;&quot; button</li>
	<li>Click &quot;Publish&quot;</li>
</ol>
<p>Be sure to add styling to your site.css.</p>
<div style="background:##ccc; width:200px; padding:5px; margin:5px;">
 Relevant CSS IDs:
<ul style="list-style-type: none;margin-left:20px;">
<li>&lt;div id=&quot;googleTranslate&quot;&gt;</li>
<li>&lt;div id=&quot;transfrom&quot;&gt;</li>
<li>&lt;select name=&quot;sl&quot; id=&quot;sl&quot;&gt;</li>
<li>&lt;div id=&quot;transto&quot;&gt;</li>
<li>&lt;select name=&quot;tl&quot; id=&quot;tl&quot;&gt;</li>
</ul>
</div>
</cfoutput>
</cfsavecontent>
<cfoutput>
#application.pluginManager.renderAdminTemplate(body=body,pageTitle=request.pluginConfig.getName())#
</cfoutput>

