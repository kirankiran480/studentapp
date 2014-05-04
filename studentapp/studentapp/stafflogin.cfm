<cfinclude template="header.cfm" >
	
	<div id="contents">
		<div id="tagline" class="clearfix">
		
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		<a href="stafflogin.cfm">STAFF LOGIN</a>
		<br>
		
		<br>
		<form  action="login_action.cfm" method="post" >
		<table>
		  <tr>
		  	<td>ENTER STAFF ID NUMBER : </td>
			<td></td>
			<td></td>
			<td><input type="text" name="EMP_NUM" size="4" maxlength="6"></td>
			
		  </tr>
		  <tr>
		  	<td></td>
			<td></td>
			<td><input type="submit" value="ENTER"></td>
		  </tr>
		</table>
		</form>
		</div>	
	</div>
	<div id="footer">
		<div class="clearfix">
			<div id="connect">
				
			</div>
			
		</div>
	</div>
</body>
</html>