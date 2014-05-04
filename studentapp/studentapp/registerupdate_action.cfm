<cfinclude template="header.cfm" >
 
<cfupdate datasource="stcenroll" tablename="ENROLL"> 
 
<h1>Employee Updated</h1> 
<cfoutput> 
You have updated the information for #Form.STU_NUM#  in the enroll 
    database. 
</cfoutput> 
 
</body> 
</html>