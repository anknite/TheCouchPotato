<table >
<tr>
	<div align="center">
		<span class="style1">
		<?php
		$con=mysql_connect("localhost","tcp","tcp123");

		if (!$con)
		{
			die('Could not connect: ' . mysql_error());
		}

		mysql_select_db("tcpdb",$con);
		
		$cat=$_REQUEST['cat'];
//		$cat="Movies";		
		$sql_cat="select * from content where con_category='$cat'";
		$row_cat=mysql_query($sql_cat);

		echo"<ul><h1>".$cat." category</h1>";

		while($row=mysql_fetch_row($row_cat))
		{
			echo"<li><span class='style1'><a href='../includes/content.php?title=".$row[1]."'>".$row[1]."</a></span><br/><br/></li>";
		}
		echo"</ul>";
		?>
		</span>	
	</div>
</tr>
</table>