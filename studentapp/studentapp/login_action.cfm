<cfif isDefined("form.STU_NUM")>
	<cfquery name="studentlogincheck" datasource="stcenroll">
		select STU_FNAME,stu_num from student where stu_num=<cfqueryparam value="#FORM.STU_NUM#" cfsqltype="CF_SQL_VARCHAR">
	</cfquery>
  
	<cfif studentlogincheck.RecordCount eq 1>
	<cfset session.username = "#studentlogincheck.stu_fname#">
    <cfset session.stu_num= "#studentlogincheck.stu_num#">
	      <cflocation url="index.cfm">
	<cfelse>
		<cflocation  url="notloggedin.cfm">
    </cfif>
</cfif>
<cfif isDefined("form.EMP_NUM")>
	<cfquery name="Stafflogincheck" datasource="stcenroll">
		select EMP_FNAME,emp_num from employee where emp_num=<cfqueryparam value="#FORM.EMP_NUM#" cfsqltype="CF_SQL_VARCHAR">
	</cfquery>

	<cfif Stafflogincheck.RecordCount eq 1>
	<cfset session.username = Stafflogincheck.emp_fname>
	    <cfset session.emp_num= "#stafflogincheck.emp_num#">
	      <cflocation url="index.cfm">
	<cfelse>
		<cflocation  url="notloggedin.cfm">
    </cfif>
</cfif>
	