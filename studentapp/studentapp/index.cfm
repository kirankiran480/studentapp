<cfinclude template="header.cfm" >
	
	<div id="contents">
		
	
		<cfif structKeyExists(session,"username") eq "false">
		<div id="tagline" class="clearfix">
		
		<a href="studentlogin.cfm">STUDENT LOGIN</a>
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		<a href="stafflogin.cfm">STAFF LOGIN</a>
		
		</div>
		<cfelse>
		
		
			<cfoutput>welcome, #session.username#</cfoutput>
		</cfif>
	</div>
	<div id="footer">
		<div class="clearfix">
			<div id="connect">
				
			</div>
			
		</div>
	</div>
</body>
</html>