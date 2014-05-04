<!DOCTYPE HTML>

<html>
<head>
	<meta charset="UTF-8">
	<title>STUDENT ENROLLMENT APPLICATION</title>
	<link rel="stylesheet" href="css/style.css" type="text/css">
	<link rel="stylesheet" href="http://code.jquery.com/ui/1.10.4/themes/smoothness/jquery-ui.css">
 
  


</head>
<body>
	<div id="header">
		<div>
			<div class="logo">
				<a href="index.cfm">STUDENT ENROLLMENT</a>
			</div>
			<ul id="navigation">
				<li class="active">
					<a href="index.cfm">HOME</a>
				</li>
				<li>
					<a href="add.cfm">ADD</a>
				</li>
				<li>
					<a href="edit.cfm">EDIT</a>
				</li>
				<li>
					<a href="delete.cfm">DELETE</a>
				</li>
				<li>
					<a href="search.cfm">SEARCH</a>
				</li>
				
				<li>
					<a href="logout.cfm">LOGOUT</a>
				</li>
			</ul>
		</div>
	</div>
	
	<div id="contents">
		<div id="tagline" class="clearfix">
		<a href="studentlogin.cfm">STUDENT LOGIN</a>
		&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
		
		<br>
		<br>
		<form  action="login_action.cfm" method="post" >
		<table>
		  <tr>
		  	<td>ENTER STUDENT ID NUMBER : </td>
			<td></td>
			<td></td>
			<td><input type="text" name="STU_NUM" size="4" maxlength="6"></td>
			
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