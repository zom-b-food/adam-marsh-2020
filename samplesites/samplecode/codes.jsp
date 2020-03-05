

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
	<title>www.ui-design-engineering.com - code samples</title>
	<meta http-equiv="pragma" content="no-cache"/>
	<meta http-equiv="Content-Type" content="text/html; charset=iso-8859-1"/>
	<style type="text/css">

		body {
			background-color: #EBF2F4;
		}

		a {
			font-size: 10px;
			color: #000066;
			font-family: Verdana, Arial, Helvetica, sans-serif;
			font-weight: bold;
		}

		a:link {
			text-decoration: none;
		}

		a:visited {
			text-decoration: none;
			color: #993300;
		}

		a:hover {
			text-decoration: none;
			color: #FF9933;
		}

		a:active {
			text-decoration: none;
		}

		-->
	</style>
</head>
<body>

<table width="746" border="0" cellpadding="0" cellspacing="0" style="border: 1px solid #003366;">
	<tr align="center" valign="middle" bgcolor="#EBF2F4">
		<td height="20" colspan="6" align="center"><a href="javascript:window.close();" class="name">Close
		                                                                                             this window</a></td>
	</tr>
	<tr>
		<td width="122" height="33" align="center" valign="middle" bgcolor="#c8c6a5"><a href="jsp2.php" target="results">jsp</a></td>
		<td width="122" align="center" valign="middle" bgcolor="#e9e5c0"><a href="jsp1.php" target="results">jhtml</a></td>
		<td width="122" align="center" valign="middle" bgcolor="#c8c6a5"><a href="sql.php" target="results">jstl/sql</a></td>
		<td width="122" align="center" valign="middle" bgcolor="#e9e5c0"><a href="javascript.php" target="results">javascript</a></td>
		<td width="122" align="center" valign="middle" bgcolor="#c8c6a5"><a href="jquery.php" target="results">jquery</a></td>
		<td width="122" align="center" valign="middle" bgcolor="#e9e5c0"><a href="xsl.php" target="results">xsl</a></td>
	</tr>
</table>

<div id="sampleFrameDiv">

	<iframe name="results" src="./samplesites/samplecode/jsp2.php" style="position:absolute; width:748px; height:614px; scrolling:auto; padding: 0px 0px 0px 0px; left: 3px; top: 90px;"></iframe>
</div>
<div style="visibility:hidden; z-index:1;">
	<%
		String hm = "HHIT";
		String file = hm + "/code.txt";

		RandomAccessFile ffile;
		ffile = new RandomAccessFile(cntfpath, "rw");
		ffile.seek(0);
		int count = Integer.parseInt(ffile.readLine());
		out.println(count);
		ffile.seek(0);
		ffile.writeBytes(Integer.toString(count + 1));
		ffile.close();
	%>
</div>
</body>
</html>
