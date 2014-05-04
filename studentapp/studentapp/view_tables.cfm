
		<cfinclude template="header.cfm" >
		<cfif structkeyExists(session,"emp_num") or structkeyExists(session,"stu_num")>
		<form  action="view_action.cfm" method="post" accept-charset="utf-8">
			select a table to view: 
		 <select NAME="tablename">
  <option value="STUDENT">STUDENT</option>
  <option value="ENROLL">ENROLL</option>
  <option value="COURSE">COURSE</option>
  <option value="EMPLOYEE">EMPLOYEE</option>
  <option value="CLASS">CLASS</option>
  <option value="PROFESSOR">EMPLOYEE</option>
  <option value="DEPARTMENT"></option>
</select>
	<p><input type="submit" value="Continue" /></p>
</form>

		</cfif>
	</body>

</html>
