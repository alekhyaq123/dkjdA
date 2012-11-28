<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0" >
  <xsl:output method="xml" encoding="utf-8"/>
  <xsl:template match="@*|node()">
     <xsl:copy>
       <xsl:apply-templates select="@*|node()" />
     </xsl:copy>
  </xsl:template>
  <!-- This template adds a node apigee_response under GeoCodeResponse -->
  <xsl:template match="Root">
     <xsl:copy>
         <xsl:apply-templates/>
          <xsl:if test="not(apigee_response)">
           <apigee_response>WelcomeToApigee</apigee_response>
          </xsl:if>
     </xsl:copy>
  </xsl:template>
  <xsl:template match="node()|@*">
<xsl:copy>
<xsl:apply-templates select="node()|@*"/>
</xsl:copy>
</xsl:template>

<!-- This template copies and renames status to status1 -->
<xsl:template match="status">
<status1>
<xsl:apply-templates/>
</status1>
</xsl:template>
</xsl:stylesheet>

