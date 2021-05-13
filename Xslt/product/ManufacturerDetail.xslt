<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ManufacturerDetail">
		<div class="container">
			<section class="manufacturer-detail kv-section">
				<div class="kv-title">
					<p>
						<xsl:value-of disable-output-escaping="yes" select="Title"></xsl:value-of>
					</p>
				</div>
				<div class="list-items">
					<div class="row">
						<xsl:apply-templates select="Product"/>
					</div>
				</div>
			</section>
		</div>
	</xsl:template>
	<xsl:template match="Product">
		<div class="col-lg-3 col-md-4 col-sm-6 col-12">
			<div class="item-pro">
				<div class="img">
					<a href="chi-tiet-san-pham.html">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"/>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Target"/>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"/>
						</xsl:attribute>
						<img src="./assets/pro/pro-1.png" alt="">
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl"/>
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title"/>
							</xsl:attribute>
						</img>
					</a>
				</div>
				<div class="content">
					<a class="title" href="chi-tiet-san-pham.html">
						<xsl:attribute name="href">
							<xsl:value-of select="Url"/>
						</xsl:attribute>
						<xsl:attribute name="target">
							<xsl:value-of select="Target"/>
						</xsl:attribute>
						<xsl:attribute name="title">
							<xsl:value-of select="Title"/>
						</xsl:attribute>
						<xsl:value-of select="Title"/>
					</a>
					<div class="desc">
						<div class="price">
							<p>
								<xsl:value-of select="Price"/>
							</p>
							<xsl:if test="OldPrice != ''">
								<span>
									<xsl:value-of select="OldPrice"/>
								</span>
							</xsl:if>
						</div>
						<div class="icon">
							<a href="#" onclick="AjaxCart.addproducttocart_catalog(this);return false;">
								<xsl:attribute name="data-productid">
									<xsl:value-of select="ProductId"></xsl:value-of>
								</xsl:attribute>
								<em class="material-icons">shopping_cart</em>
							</a>
						</div>
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>