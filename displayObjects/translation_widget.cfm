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
<!--- get & set the current url --->
<cfset thisPage = request.contentrenderer.getCurrentURL(complete=true) />
<!--- set language options lists  --->
<cfset langOptionList = "af^sq^ar^be^bg^ca^zh-CN^hr^cs^da^nl^en^et^tl^fi^fr^gl^de^el^iw^hi^hu^is^id^ga^it^ja^ko^lv^lt^mk^ms^mt^no^fa^pl^pt^ro^ru^sr^sk^sl^es^sw^sv^th^tr^uk^vi^cy^yi" />

<cfset langOptionLabelList = "Afrikaans^Albanian^Arabic^Belarusian^Bulgarian^Catalan^Chinese (Simplified)^Croatian^Czech^Danish^Dutch^English^Estonian^Filipino^Finnish^French^Galician^German^Greek^Hebrew^Hindi^Hungarian^Icelandic^Indonesian^Irish^Italian^Japanese^Korean^Latvian^Lithuanian^Macedonian^Malay^Maltese^Norwegian^Persian^Polish^Portuguese^Romanian^Russian^Serbian^Slovak^Slovenian^Spanish^Swahili^Swedish^Thai^Turkish^Ukrainian^Vietnamese^Welsh^Yiddish" />

<!--- test for form submission --->
<cfif StructKeyExists(form,"tl")>
<!--- send to google --->
<cflocation url="http://translate.google.com/translate?u=#URLEncodedFormat(thispage)#&hl=en&ie=UTF-8&layout=1&eotf=1&sl=#form.sl#&tl=#form.tl#" addtoken="no" />

<cfelse>
<!--- creat options lists  --->
<cfsavecontent variable="langOptionsFrom">
<cfoutput>
<cfloop from="1" to="#listLen(langOptionList,'^')#" index="o">
<cfset optionValue=listGetAt(langOptionList,o,'^') />
<option value="#XMLFormat(optionValue)#"<cfif pluginConfig.getSetting('transFrom') IS "#XMLFormat(optionValue)#"> SELECTED</cfif>><cfif len(langOptionLabelList)>#listGetAt(langOptionLabelList,o,'^')#
<cfelse>#optionValue#</cfif></option></cfloop>
</cfoutput>
</cfsavecontent>

<cfsavecontent variable="langOptionsTo">
<cfoutput>
<cfloop from="1" to="#listLen(langOptionList,'^')#" index="o">
<cfset optionValue=listGetAt(langOptionList,o,'^') />
<option value="#XMLFormat(optionValue)#"<cfif pluginConfig.getSetting('transTo') is "#XMLFormat(optionValue)#"> SELECTED</cfif>><cfif len(langOptionLabelList)>#listGetAt(langOptionLabelList,o,'^')#
<cfelse>#optionValue#</cfif></option></cfloop>
</cfoutput>
</cfsavecontent>
<!--- output the widget  --->
<div id="googleTranslate">
<!--- form --->
<h3>Translate Page</h3>
<form action="<cfoutput>#thispage#</cfoutput>" method="post">
<div id="transfrom">
Translate from: <select name="sl" id="sl"><cfoutput>#langOptionsFrom#</cfoutput>
</select>
</div>
<div id="transto">
Translate into: <select name="tl" id="tl"><cfoutput>#langOptionsTo#</cfoutput>
</select>
</div>
<input type="Submit" name="translateButton" value="Translate">
</form>

</div>
</cfif>