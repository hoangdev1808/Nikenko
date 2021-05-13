<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/">
		<div class="single-swiper">
			<div class="swiper-container">
				<div class="swiper-wrapper">
					<xsl:apply-templates select="/ZoneList/Zone/Zone"></xsl:apply-templates>
				</div>
			</div>
			<div class="swiper-button-prev"></div>
			<div class="swiper-button-next"></div>
		</div>
	</xsl:template>
	<xsl:template match="Zone">
		<div class="swiper-slide">
			<div class="item">
				<xsl:if test="Description != ''">
					<xsl:attribute name="class">
						<xsl:text disable-output-escaping="yes">item sweet-alert</xsl:text>
					</xsl:attribute>
				</xsl:if>
				<a>
					<xsl:if test="Description != ''">
						<xsl:attribute name="href">
							<xsl:text disable-output-escaping="yes">javascript: void(0);</xsl:text>
						</xsl:attribute>
					</xsl:if>
					<xsl:if test="Description = ''">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"></xsl:value-of>
						</xsl:attribute>
					</xsl:if>
					<xsl:attribute name="target">
						<xsl:value-of select="Target"></xsl:value-of>
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title"></xsl:value-of>
					</xsl:attribute>
					<div class="img">
						<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"></xsl:value-of>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"></xsl:value-of>
							</xsl:attribute>
						</img>
					</div>
					<div class="desc">
						<p>
							<xsl:value-of select="Title"></xsl:value-of>
						</p>
					</div>
				</a>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>