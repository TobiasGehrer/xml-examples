<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
	<xsl:template match="/collection">
		<html>
			<head>
				<title>
					<xsl:value-of select="description"/>
				</title>
			</head>
			<body>
				<h1><xsl:value-of select="description"/></h1>
				
				<xsl:apply-templates select="recipe"/>
			</body>
		</html>
	</xsl:template>
	
	<xsl:template match="recipe">
		<hr/>
		<h2><xsl:value-of select="title"/></h2>
		
		<ol>
			<xsl:for-each select="preparation/step">
				<li><xsl:value-of select="./text()"/></li>
			</xsl:for-each>
		</ol>
	</xsl:template>
	
</xsl:stylesheet>