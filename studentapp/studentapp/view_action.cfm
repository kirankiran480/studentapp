		<cfinclude template="header.cfm" >
<cfquery name="view" datasource="stcenroll">
select * from #FORM.tablename#
</cfquery>


	
	 <cfset colNames = listToArray(view.columnList)>
	   <table style="border: dashed">
   	  	<tr>
   	  	<thead>
   	  		<cfloop array="#colNames#" index="col1">
				 	<th><cfoutput>#col1#</cfoutput></th>
				 
				 </cfloop>
   	  	</thead>
		</tr>
         <cfloop query="view" startrow="1" endrow="#view.RecordCount#" >
		 	 <tr>
	  	  <cfloop array="#colNames#" index="col1">
	  	  	<td>
	  	  		
           <cfoutput>  #view[col1][view.CurrentRow]# </cfoutput>
   
            </td>
			</cfloop>
			</tr>
      </cfloop>
      
      
	   </table>
  

