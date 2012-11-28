<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
        <xsl:output method="xml" version="1.0" encoding="UTF-8" />
        <xsl:template match="/">
			<GeocodeResponse>
				<result>
                <xsl:for-each select="GeocodeResponse/result/address-component">
                 <xsl:if test="position() &lt; 1+number(3) and position() &gt; number(1)-1">
                     <xsl:copy-of select="."/>
                 </xsl:if> 
                   </xsl:for-each>
				</result>
			</GeocodeResponse>
        </xsl:template>
</xsl:stylesheet>