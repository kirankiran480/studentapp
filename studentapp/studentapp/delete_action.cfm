<html> 
<head> 
<title>Delete Employee Record</title> 
</head> 
<body> 
 
<cfquery name="DropRegistration" 
    datasource="stcenroll"> 
        DELETE FROM Enroll 
        WHERE STU_NUM = <cfqueryparam 
                value="#Form.STU_NUM#" 
                cfsqltype="CF_SQL_VARCHAR" 
                maxlength="17">  and CLASS_CODE=<cfqueryparam 
                value="#Form.CLASS_CODE#" 
                cfsqltype="CF_SQL_VARCHAR" 
                maxlength="17">
</cfquery> 
 <cfoutput> 
<h1>The Student is un-registered </h1> 

</cfoutput> 
</body> 
</html>