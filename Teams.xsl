<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:template match="/">
		<html>
			<head>
				<style>
				  table {
				    border-collapse: collapse;
				  }
				  td, th {
				    border: 1px solid #999;
				    padding: 0.5rem;
				    text-align: left;
				  }
				  th {
				    font-weight: bold;
				  }
			  </style>
			</head>
			<body>
				<table id = "myTable">
					<tr>
						<!--When a header is clicked, run the sortTable function, with a parameter, 0 for sorting by names, 1 for sorting by country:-->  
						<th onclick="sortTable(0)">Name</th>
						<th onclick="sortTable(1)">Location</th>
						<th onclick="sortTable(2)">Captain</th>
						<th onclick="sortTable(3)">Nickname</th>
						<th>Delete</th>
					</tr>
					<xsl:for-each select="myTeams/team">
							<tr>
								<td id="{position()}"> 
									<xsl:value-of select="Name"/>
								</td>
								<td id="{position()}">
									<xsl:value-of select="Location"/>
								</td>
								<td id="{position()}">
									<xsl:value-of select="Captain"/>
								</td>
								<td id="{position()}">
									<xsl:value-of select="Nickname"/>
								</td>
								<td width="50" align="center">
   							<input name="Delete"   Type="button"   value="Delete" >
      					<xsl:attribute name="onclick">myDeleteFunction(event)</xsl:attribute>
   							</input>
							</td>
							</tr>
					</xsl:for-each>
				</table>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>
