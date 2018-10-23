<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt"
 exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/">
		<xsl:apply-templates select="/ZoneList/Zone"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="/">
		<!--Begin nav-->
		<!-- data-spy="scroll" data-target="#kusto-spy" data-offset="0" -->
		<section class="nav-gioithieu">
			<article>
				<div class="container">
					<div class="row">
						<div class="col"><a class="d-lg-none toggle" href="javascript:void(0)">Menu<span class="mdi mdi-arrow-down-drop-circle">
								</span></a>
							<nav id="navbar">
								<ul class="nav flex-column flex-lg-row">
									<xsl:apply-templates select="/ZoneList/Zone" mode="Nav"></xsl:apply-templates>
								</ul>
							</nav>
						</div>
					</div>
				</div>
			</article>
		</section>
		<xsl:apply-templates select="/ZoneList/Zone" mode="Content"></xsl:apply-templates>
	</xsl:template>

	<xsl:template match="Zone" mode="Nav">
		<li class="nav-item">
			<a class="nav-link pl-0 pl-lg-3">
				<xsl:attribute name="title">
					<xsl:value-of select="Title"></xsl:value-of>
				</xsl:attribute>
				<!--Match Id-->
				<xsl:attribute name="href">
					<xsl:text>#realplus-about-</xsl:text>
					<xsl:value-of select="position()" />
				</xsl:attribute>
				<xsl:value-of select="Title"></xsl:value-of>
			</a>
		</li>
	</xsl:template>

	<xsl:template match="Zone" mode="Content">
		<xsl:choose>
			<xsl:when test="position()=1">
				<section class="gioithieu page-section" id="realplus-about-1">
					<article>
						<div class="container-fluid">
							<div class="row">
								<div class="col">
									<h2 class="section-title">Giới thiệu</h2>
								</div>
							</div>
							<div class="row mt-4">
								<xsl:apply-templates select="News" mode="ZoneNews1"></xsl:apply-templates>
							</div>
						</div>
					</article>
				</section>
			</xsl:when>
			<xsl:when test="position()=2">
				<section class="tamnhin page-section" id="realplus-about-2">
					<article>
						<div class="container-fluid">
							<div class="row mt-4 flex-column-reverse flex-lg-row">
								<xsl:apply-templates select="News" mode="ZoneNews2"></xsl:apply-templates>
							</div>
						</div>
					</article>
				</section>
			</xsl:when>

			<xsl:when test="position()=3">
				<section class="giatri page-section" id="realplus-about-3">
					<article>
						<div class="container-fluid">
							<div class="row mt-4 mt-lg-0">
								<xsl:apply-templates select="News" mode="ZoneNews3"></xsl:apply-templates>
							</div>
						</div>
					</article>
				</section>
			</xsl:when>



			<xsl:when test="position()=4">
				<section class="lichsu page-section" bg-img="/Data/Sites/1/skins/default/img/realplus/gioithieu/gioithieu_bg.jpg"
				 id="realplus-about-4">
					<article class="about-list">
						<div class="container">
							<h2 class="section-title">Lịch sử phát triển</h2>
							<div class="content-list owl-carousel owl-theme" id="sync1">
								<xsl:apply-templates select="News" mode="ZoneNews4"></xsl:apply-templates>
							</div>
							<div class="nav-list">
								<div class="nav owl-carousel owl-theme" id="sync2">
									<xsl:apply-templates select="News" mode="ZoneNews5"></xsl:apply-templates>
								</div>
							</div>
						</div>
					</article>
				</section>
			</xsl:when>

			<xsl:when test="position()=5">
				<section class="thanhvien page-section" id="realplus-about-5">
					<article>
						<div class="container">
							<div class="row">
								<div class="col">
									<h2 class="section-title">đội ngũ chủ chốt</h2>
								</div>
							</div>
							<div class="row py-4">
								<xsl:apply-templates select="News" mode="ZoneNews6"></xsl:apply-templates>
							</div>
						</div>
					</article>
				</section>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
	<!-- ZoneNews 1 -->
	<xsl:template match="News" mode="ZoneNews1">
		<xsl:if test="position()=1">
			<div class="col-lg-6 px-0 pt-lg-3">
				<div class="gioithieu-block text-justify text-md-right">
					<p>
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</div>
			</div>
			<div class="col-lg-6 px-lg-0 mt-0 d-flex align-items-center justify-content-center">
				<div class="img-block text-center w-100">
					<img class="w-100 img-fluid">
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
			</div>
		</xsl:if>
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>
	<!-- ZoneNews 2 -->
	<xsl:template match="News" mode="ZoneNews2">
		<xsl:if test="position()=1">
			<div class="col-lg-6 px-lg-0 mt-0 d-flex align-items-center justify-content-center justify-content-lg-end">
				<div class="img-block text-center w-100">
					<img class="img-fluid w-100">
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
			</div>
			<div class="col-lg-6 px-0 pt-lg-3">
				<div class="gioithieu-block text-justify text-md-left">
					<h2 class="section-title text-left mb-4 mt-4 mt-md-0">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</h2>
					<p>
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</div>
			</div>
		</xsl:if>
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>
	<!-- ZoneNews 3 -->
	<xsl:template match="News" mode="ZoneNews3">
		<xsl:if test="position()=1">
			<div class="col-lg-6 px-0 pt-lg-3">
				<div class="gioithieu-block text-justify text-md-left">
					<h2 class="section-title text-left mb-4 mt-4">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</h2>
					<p>
						<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
					</p>
				</div>
			</div>
			<div class="col-lg-6 px-lg-0 mt-0 d-flex align-items-center justify-content-center justify-content-lg-start">
				<div class="img-block text-center w-100">
					<img class="img-fluid w-100">
					<xsl:attribute name="src">
						<xsl:value-of select="ImageUrl"></xsl:value-of>
					</xsl:attribute>
					</img>
				</div>
			</div>
		</xsl:if>
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>
	<!-- ZoneNews 4 -->
	<xsl:template match="News" mode="ZoneNews4">
		<div class="content">
			<div class="row">
				<div class="col-lg-6">
					<figure>
						<img src="./img/realplus/gioithieu/gioithieu_1.png">
						<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
						</img>
					</figure>
				</div>
				<div class="col-lg-6">
					<figure>
						<figcaption>
							<h3>
								<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
							</h3>
							<p>
								<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
							</p>
						</figcaption>
					</figure>
				</div>
			</div>
		</div>
		<xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
	</xsl:template>
	<!-- ZoneNews 5 -->
	<xsl:template match="News" mode="ZoneNews5">
		<div class="item">
			<h5>
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</h5>
		</div>
	</xsl:template>

	<xsl:template match="News" mode="ZoneNews6">
		<div class="col-6 col-lg-3">
			<figure class="figure">
				<div class="imgblock">
					<img class="img-fluid">
					<xsl:attribute name="src">
							<xsl:value-of select="ImageUrl"></xsl:value-of>
						</xsl:attribute>
					</img>
				</div>
				<figcaption class="d-flex flex-column mt-3">
					<span class="name">
						<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
					</span>
					<small class="position">
						<xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
					</small>
				</figcaption>
			</figure>
		</div>
	</xsl:template>

</xsl:stylesheet>
