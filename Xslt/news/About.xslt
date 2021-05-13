<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>

	<xsl:template match="/ZoneList">
		<xsl:apply-templates select="Zone" /> 
	</xsl:template>

	<xsl:template match="Zone">
		<section class="kv-section about-1">
			<xsl:attribute name="class">
				<xsl:text>kv-section about-</xsl:text>
				<xsl:value-of select="position()"/> 
			</xsl:attribute>
			<div class="container">
				<xsl:choose>
					<xsl:when test="position() = 1">
						<div class="row">
							<div class="col-lg-6 col-md-6">
								<div class="img">
									<img src="./assets/about/about-1.png" alt="">
										<xsl:attribute name="src">
											<xsl:value-of select="News[1]/ImageUrl"></xsl:value-of>
										</xsl:attribute>
										<xsl:attribute name="alt">
											<xsl:value-of select="News[1]/Title" disable-output-escaping="yes"></xsl:value-of>
										</xsl:attribute>
									</img>
									</div>
							</div>
							<div class="col-lg-6 col-md-6">
								<div class="kv-title">
									<!-- <h1>
										<xsl:value-of select="News[1]/Title" disable-output-escaping="yes"></xsl:value-of>
									</h1> -->
								</div>
								<div class="content">
									<div class="desc">
										<xsl:value-of select="News[1]/FullContent" disable-output-escaping="yes"></xsl:value-of> 
									</div>
								</div>
							</div>
						</div>
					</xsl:when>
					<xsl:otherwise>
						<div class="kv-title">
								<p>
									<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
								</p>
							</div>
							<div class="list-items">
								<div class="row">
									<xsl:apply-templates select="News" /> 
								</div> 
						</div>
					</xsl:otherwise>
				</xsl:choose>
			</div>
		</section>
	</xsl:template>
	<xsl:template match="News">
			<div class="col-lg-4 col-md-6">
				<div class="item">
					<figure>
						<div class="img">
							<img src="./assets/about/icon-1.png" alt="">
								<xsl:attribute name="src">
									<xsl:value-of select="ImageUrl"></xsl:value-of>
								</xsl:attribute>
								<xsl:attribute name="alt">
									<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
								</xsl:attribute>
							</img>
						</div>
						<figcaption> 
							<div class="desc">
									<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
							</div>
						</figcaption>
					</figure>
				</div>
			</div>
	</xsl:template>
</xsl:stylesheet>
