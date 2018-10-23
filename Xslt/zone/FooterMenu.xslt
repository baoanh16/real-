<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <nav class="list-group text-center text-sm-left">
      <xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
    </nav>
  </xsl:template>

  <xsl:template match="Zone">
    <div class="list-group-item">
      <a href="#">
        <xsl:attribute name="href">
					<xsl:value-of select="Url"></xsl:value-of>
				</xsl:attribute>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
      </a>
    </div>
  </xsl:template>
</xsl:stylesheet>