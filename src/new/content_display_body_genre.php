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
		
		$gen=$_REQUEST['gen'];
		$sql_gen="select * from content where con_genre='$gen'";
		$row_gen=mysql_query($sql_gen);

		echo"<ul><h1>".$gen." genre</h1>";

		while($row=mysql_fetch_row($row_gen))
		{
			echo"<li><span class='style1'><a href='content.php?title=".$row[1]."'>".$row[1]."</a></span><br/><br/></li>";
		}
		echo"</ul>";
		?>
		</span>	
	</div>
</tr>
</table>