<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<h1 class="section-title mb-3"><xsl:value-of select="/ZoneList/ModuleTitle"></xsl:value-of></h1>
		<div class="row my-4">
			<div class="col">
				<ul class="nav nav-tabs" id="ccTabs" role="tablist">
					<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
				</ul>
			</div>
		</div>
	</xsl:template>


	<xsl:template match="Zone">
		<li class="nav-item">
			<a class="nav-link" data-toggle="tab" role="tab" aria-controls="cct-01" aria-selected="false">
			<xsl:if test="position()=1">
				<xsl:attribute name="class">
					<xsl:text>nav-link active</xsl:text>
				</xsl:attribute>
			</xsl:if>
			<xsl:if test="position()=1">
				<xsl:attribute name="aria-selected">
					<xsl:text>true</xsl:text>
				</xsl:attribute>
			</xsl:if>
			
			<xsl:attribute name="id">
				<xsl:text>cct-</xsl:text>
				<xsl:value-of select="position()"></xsl:value-of>
				<xsl:text>-tab</xsl:text>
			</xsl:attribute>
			<xsl:attribute name="href">
				<xsl:text>#cct-</xsl:text>
				<xsl:value-of select="position()"></xsl:value-of>
			</xsl:attribute>
			<xsl:value-of select="Title"></xsl:value-of></a>
		</li>
	</xsl:template>

</xsl:stylesheet>
