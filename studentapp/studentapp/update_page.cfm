

 

<h2>Student Update Registration Form</h2> 
<cfset URL.STU_NUM= "324257">
 <cfquery name="GetRecordtoUpdate" datasource="stcenroll"> 
    SELECT * FROM ENROLL 
    WHERE STU_NUM = #URL.STU_NUM# 
</cfquery> 
<cfoutput  query="GetRecordtoUpdate" >
<table> 
<!--- begin html form;  
put action page in the "action" attribute of the form tag. ---> 

<form action="update_action.cfm" method="post"> 
 <input type="Hidden" name="STU_NUM" value="#STU_NUM#"><br> 
 
 
<tr> 
    <td>Class Code</td> 
    <td><input type="Text" name="CLASS_CODE" size="4" maxlength="5" value="#CLASS_CODE#"></td> 
</tr> 
<tr> 
    <td>Course Code</td>
    <td><input type="Text" name="CRS_CODE" size="10" maxlength="10" value="#CRS_CODE#"></td> 
</tr> 
<tr> 
    <td>Enroll grade</td> 
    <td><input type="Text" name="ENROLL_GRADE" size="3" maxlength="1" value="#ENROLL_GRADE#"></td> 
</tr> 

<tr> 
    <td>&nbsp;</td> 

	<td><input type="Submit" value="Update Information"></td> 
</tr> 
</form> 

<!--- end html form ---> 
</table> 
 </cfoutput>
