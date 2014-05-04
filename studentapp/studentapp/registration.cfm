<cfinclude template="header.cfm" >
<cfif structkeyExists(url,"action") and (url.action eq "registerstudent")>
<h2>Student Registration Form</h2> 
 
<table> 
<!--- begin html form;  
put action page in the "action" attribute of the form tag. ---> 
<cfoutput>
<form action="insert_action.cfm?action=#url.action#" name=addregistration  method="post"> 
<tr> 
    <td>Student Number</td> 
	<cfif structkeyExists(session,"stu_num") >
		
    <td><input type="hidden" name="STU_NUM" value = "#session.stu_num#" > </td> 
	<cfelse>
		 <td><input type="text" name="STU_NUM"  size="8" maxlength="8"></td> 
	</cfif>
</tr>  
 
 
<tr> 
    <td>Class Code</td> 
    <td><input type="Text" name="CLASS_CODE" size="5" maxlength="5"></td> 
</tr> 
<tr> 
    <td>Course Code</td>
    <td><input type="Text" name="CRS_CODE" size="10" maxlength="10"></td> 
</tr> 
<tr> 
    <td>Enroll grade</td> 
    <td><input type="Text" name="ENROLL_GRADE" size="3" maxlength="1"></td> 
</tr> 

<tr> 
    <td>&nbsp;</td> 
    <td><input type="Submit" value="Submit">&nbsp;<input type="Reset" 
value="Clear Form"></td> 
</tr> 
</form> 
<!--- end html form ---> 
</table> 
</cfoutput>
</cfif>


<cfif structkeyExists(url,"action") and (url.action eq "addstudent")>
	<cfoutput> 	
<h2>#url.action#</h2> 
 
<table> 
<!--- begin html form;  
put action page in the "action" attribute of the form tag. ---> 
<form name = "addstudent" action="addstudent_action.cfm" method="post"> 

<cfquery name="view" datasource="stcenroll">
select * from student
</cfquery>
 <cfset colNames = listToArray(view.columnList)>
  <cfloop array="#colNames#" index="col1">
				
				 <tr> 
    <td>#col1#</td> 
    <td><input type="text" name="#col1#"></td> 
</tr> 

				 </cfloop>



<tr> 
    <td>&nbsp;</td> 
    <td><input type="Submit" value="Submit">&nbsp;<input type="Reset" 
value="Clear Form"></td> 
</tr> 
</form> 
<!--- end html form ---> 
</table> 
</cfoutput>
</cfif>



<cfif structkeyExists(url,"action") and (url.action eq "addcourse")>
	<cfoutput> 	
<h2>#url.action#</h2> 
 
<table> 
<!--- begin html form;  
put action page in the "action" attribute of the form tag. ---> 
<form action="addcourse_action.cfm" method="post"> 

<cfquery name="view" datasource="stcenroll">
select * from course
</cfquery>
 <cfset colNames = listToArray(view.columnList)>
  <cfloop array="#colNames#" index="col1">
				
				 <tr> 
    <td>#col1#</td> 
    <td><input type="text" name="#col1#"></td> 
</tr> 

				 </cfloop>

 

<tr> 
    <td>&nbsp;</td> 
    <td><input type="Submit" value="Submit">&nbsp;<input type="Reset" 
value="Clear Form"></td> 
</form>
</tr> 
<!--- end html form ---> 
</table> 
</cfoutput>
</cfif>


<cfif structkeyExists(url,"action") and (url.action eq "addprofessor")>
	<cfoutput> 	
<h2>#url.action#</h2> 
 
<table> 
<!--- begin html form;  
put action page in the "action" attribute of the form tag. ---> 
<form action="addprofessor_action.cfm" method="post"> 

<cfquery name="view" datasource="stcenroll">
select * from professor
</cfquery>
 <cfset colNames = listToArray(view.columnList)>
  <cfloop array="#colNames#" index="col1">
				
				 <tr> 
    <td>#col1#</td> 
    <td><input type="text" name="#col1#"></td> 
</tr> 

				 </cfloop>

 

<tr> 
    <td>&nbsp;</td> 
    <td><input type="Submit" value="Submit">&nbsp;<input type="Reset" 
value="Clear Form"></td> 
</form>
</tr> 
<!--- end html form ---> 
</table> 
</cfoutput>
</cfif>

<cfif structkeyExists(url,"action") and (url.action eq "addclass")>
	<cfoutput> 	
<h2>#url.action#</h2> 
 
<table> 
<!--- begin html form;  
put action page in the "action" attribute of the form tag. ---> 
<form action="addclass_action.cfm" method="post"> 

<cfquery name="view" datasource="stcenroll">
select * from class
</cfquery>
 <cfset colNames = listToArray(view.columnList)>
  <cfloop array="#colNames#" index="col1">
				
				 <tr> 
    <td>#col1#</td> 
    <td><input type="text" name="#col1#"></td> 
</tr> 

				 </cfloop>



<tr> 
    <td>&nbsp;</td> 
    <td><input type="Submit" value="Submit">&nbsp;<input type="Reset" 
value="Clear Form"></td> 
</tr> 
</form> 
<!--- end html form ---> 
</table> 
</cfoutput>
</cfif>

 </body>
 </html>
