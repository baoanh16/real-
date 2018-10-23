<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<section class="home-banner">
			<article class="owl-carousel owl-theme list-items">
				<xsl:apply-templates select="/BannerList/Banner"></xsl:apply-templates>

			</article>
		</section>
	</xsl:template>


	<xsl:template match="Banner">
		<div class="item">
			<xsl:attribute name="bg-img">
				<xsl:value-of select="ImageUrl"></xsl:value-of>
			</xsl:attribute>
			<div class="title">
				<h1 class="h1">
					<xsl:value-of select="Title"></xsl:value-of>
				</h1>
				<p>
					<xsl:value-of select="Description"></xsl:value-of>
				</p>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>
