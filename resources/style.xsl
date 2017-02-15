<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
filename,line,severity,message,source
<xsl:for-each select="//file">
<xsl:variable name="name" select="@name" /><xsl:for-each select="//error"><xsl:value-of select="$name" />,<xsl:value-of select="@line" />,<xsl:value-of select="@severity" />,<xsl:value-of select="@message" />,<xsl:value-of select="@source" />
<xsl:text>&#xa;</xsl:text>
</xsl:for-each>
</xsl:for-each>
</xsl:template>
</xsl:stylesheet>