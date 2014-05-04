

 <cfinclude template="header.cfm" >

<h2>professor data update Form</h2> 


	<cfquery name="GetRecordtoUpdate" datasource="stcenroll"> 
    SELECT * FROM professor
    where emp_num = <cfqueryparam cfsqltype="cf_sql_varchar" value="#form.emp_num#">
</cfquery>


	

<cfoutput  query="GetRecordtoUpdate" >
<table> 
<!--- begin html form;  
put action page in the "action" attribute of the form tag. ---> 

<form action="professorupdate_action.cfm" method="post"> 




 <cfset colNames = listToArray(getRecordtoUpdate.columnList)>
  <cfloop array="#colNames#" index="col1">
				
				 <tr> 
    <td>#col1#</td> 
    <td><input type="text" name="#col1#" value="#evaluate('GetRecordtoUpdate.#col1#')#"></td> 
</tr> 

				 </cfloop>



<tr> 
    <td>&nbsp;</td> 
    <td><input type="Submit" value="update">
</tr> 
</form> 

<!--- end html form ---> 
</table> 
 </cfoutput>
