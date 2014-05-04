<cfinclude template="header.cfm" >




<div id="contents">
		
		
		<cfif structkeyExists(session,"stu_num")>
		<a href="registerupdate.cfm">EDIT STUDENT REGISTRATION </a>
		</cfif>
		<cfif structkeyExists(session,"emp_num")>
		<a href="registerupdate.cfm">EDIT STUDENT REGISTRATION </a>
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		<a href="student_selection.cfm">EDIT STUDENT DATA </a>
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		<a href="course_selection.cfm">EDIT COURSE DATA</a>
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		<a href="professor_selection.cfm">EDIT PROFESSOR DATA</a>
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		<a href="class_selection.cfm">EDIT CLASS DATA</a>
		
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
<cfif structkeyExists(session,"stu_num")>
		<cfinclude template="update_page.cfm" >
		</cfif>