<cfoutput>
<table> 
<!--- begin html form;  
put action page in the "action" attribute of the form tag. ---> 
<form name = "addstudent" action="addstudent_action.cfm" method="post"> 
 <td><input type="hidden" name="action" value="addstudent" ></td> 
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
</table> </cfoutput>