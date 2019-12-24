<?xml version="1.0" encoding="iso-8859-1"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
 <head>
 <title>News</title></head>
 <body>
 <table border="1">
 <tr><th>Sno</th>
 <th> Date</th>
 <th> Info</th>
 </tr>
<xsl:for-each select="/announcements/news">
<tr>
<td bgcolor="green"><xsl:value-of select="Sno"/></td>
<td bgcolor="red"><xsl:value-of select="date"/></td>
<td bgcolor="cyan"><xsl:value-of select="info"/></td>
</tr>
</xsl:for-each>
</table>
</body>
</html>
</xsl:template>
</xsl:stylesheet> 