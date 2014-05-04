
 <cfinclude template="header.cfm" >
<body>
<h2>delete Student Registration </h2> 

<table> 
<!--- begin html form;  
put action page in the "action" attribute of the form tag. ---> 

<form action="delete_action.cfm" method="post"> 
<cfoutput>
<cfif structkeyExists(session,"stu_num")>
<input type="hidden" name="stu_num" ></td>
	<cfelse>
</cfif>
<tr>
	 <td>student number</td> 
    <td><input type="Text" name="stu_num" ></td> 
</tr> 
</cfoutput>

	
<tr> 
    <td>Class Code</td> 
    <td><input type="Text" name="CLASS_CODE" size="4" maxlength="5"></td> 
</tr> 
<tr> 
    <td>Course Code</td>
    <td><input type="Text" name="CRS_CODE" size="10" maxlength="10" ></td> 
</tr> 
<tr> 
    <td>&nbsp;</td> 
    <td><input type="Submit" value="Submit"></td> 
</tr> 
</form> 
<!--- end html form ---> 
</table> 
 
</body> 
</html>