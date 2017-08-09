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
<cfcomponent output="false">

	<cfset variables.config=""/>
	
	<cffunction name="init" returntype="any" access="public" output="false">
		<cfargument name="config"  type="any" default="">
		<cfset variables.config = arguments.config>
	</cffunction>
	
	<cffunction name="install" returntype="void" access="public" output="false">

	</cffunction>
	
	<cffunction name="update" returntype="void" access="public" output="false">
		
	</cffunction>
	
	<cffunction name="delete" returntype="void" access="public" output="false">

	</cffunction>


</cfcomponent>
