<cfinclude template="header.cfm" >
	
	<div id="contents">
		
		
		<cfif structkeyExists(session,"stu_num")>
		<a href="registration.cfm?action=registerstudent">REGISTER STUDENT</a>
		</cfif>
		<cfif structkeyExists(session,"emp_num")>
		<a href="registration.cfm?action=registerstudent">REGISTER STUDENT</a>
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		<a href="registration.cfm?action=addstudent">ADD STUDENT</a>
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		<a href="registration.cfm?action=addcourse">ADD COURSE</a>
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		<a href="registration.cfm?action=addprofessor">ADD PROFESSOR</a>
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		<a href="registration.cfm?action=addclass">ADD CLASS</a>
		
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