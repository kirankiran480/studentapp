<cfinclude template="header.cfm" >
 
<body> 

 
<!--- Insert the new record ---> 
<cfif structkeyExists(url,"action") and (url.action eq "registerstudent")>
<cfinsert datasource="stcenroll" tablename="ENROLL"> 
 
<h1>Registration successfull</h1> 
<cfoutput> #Form.STU_NUM# is successfully registered to #Form.CRS_CODE#
</cfoutput> 
</cfif>








</body> 
</html>