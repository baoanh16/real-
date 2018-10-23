<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />

	<xsl:template match="/">
		<div class="list-detail mt-5 mt-lg-0">
			<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>

		</div>
	</xsl:template>

	<xsl:template match="Zone">
		<xsl:if test="position()=1">
				<xsl:apply-templates select="News"></xsl:apply-templates>
			
		</xsl:if>
	</xsl:template>

	<xsl:template match="News">
			<div class="item">
					<div class="content">
						<h5><xsl:value-of select="Title"></xsl:value-of></h5>
					</div>
					<div class="lead">
						<figure>
							<figcaption>
								<p><xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of></p>
							</figcaption>
						</figure>
					</div>
				</div>
	</xsl:template>
</xsl:stylesheet>
