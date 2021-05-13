<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes" />
	<xsl:template match="/NewsList">
		<div class="container">
			<div class="kv-title">
				<p>
					<xsl:value-of select="ModuleTitle" />
				</p>
			</div>
			<div class="row">
				<div class="col-lg-6">
					<div class="item-big">
						<a href="">
							<xsl:attribute name="target">
								<xsl:value-of select="News[1]/Target" />
							</xsl:attribute>
							<xsl:attribute name="href">
								<xsl:value-of select="News[1]/Url" />
							</xsl:attribute>
							<xsl:attribute name="title">
								<xsl:value-of select="News[1]/Title" />
							</xsl:attribute>
							<div class="img">
								<img>
									<xsl:attribute name="src">
										<xsl:value-of select="News[1]/ImageUrl" />
									</xsl:attribute>
									<xsl:attribute name="alt">
										<xsl:value-of select="News[1]/Title" disable-output-escaping="yes" />
									</xsl:attribute>
								</img>
							</div>
							<div class="content">
								<div class="date">
									<xsl:value-of select="News[1]/CreatedDate" disable-output-escaping="yes" />
								</div>
								<div class="title">
									<h1>
										<xsl:value-of select="News[1]/Title" disable-output-escaping="yes" />
									</h1>
									<xsl:value-of select="News[1]/EditLink" disable-output-escaping="yes" />
								</div>
								<div class="desc lcl lcl-3">
									<xsl:value-of select="News[1]/BriefContent" disable-output-escaping="yes" />
								</div>
								<div class="view-more">
									<xsl:value-of disable-output-escaping="yes" select="/NewsList/VMText"></xsl:value-of>
									<em class="material-icons">arrow_forward</em>
								</div>
							</div>
						</a>
					</div>
				</div>
				<div class="col-lg-6">
					<div class="row">
						<xsl:apply-templates select="News[position() > 1]" />
					</div>
				</div>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News">
		<div class="col-lg-6 col-md-6 col-sm-6 col-6">
			<div class="item-small">
				<a href="">
					<xsl:attribute name="target">
						<xsl:value-of select="Target" />
					</xsl:attribute>
					<xsl:attribute name="href">
						<xsl:value-of select="Url" />
					</xsl:attribute>
					<xsl:attribute name="title">
						<xsl:value-of select="Title" />
					</xsl:attribute>
					<div class="img">
						<img>
							<xsl:attribute name="src">
								<xsl:value-of select="ImageUrl" />
							</xsl:attribute>
							<xsl:attribute name="alt">
								<xsl:value-of select="Title" disable-output-escaping="yes" />
							</xsl:attribute>
						</img>
					</div>
					<div class="content">
						<div class="date">
							<xsl:value-of select="CreatedDate" disable-output-escaping="yes" />
						</div>
						<div class="title">
							<xsl:value-of select="Title" disable-output-escaping="yes" />

						</div>
						<xsl:value-of select="EditLink" disable-output-escaping="yes" />
					</div>
				</a>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>