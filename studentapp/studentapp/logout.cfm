<cfinclude template="header.cfm" >
<cfif structkeyExists(session,"username")>
	
	<cfset StructClear(session)>
	<cfif structkeyExists(session,"username")>
	<cfset this.sessionTimeout = createTimeSpan( 0, 0, 0, 1 ) />

	</cfif>
	<cflogout>
	<cfoutput >logged out successfully</cfoutput>
		
	<a href="index.cfm">Login </a>

<cfelse>
   
    <cfoutput>already logged out</cfoutput>

</cfif>