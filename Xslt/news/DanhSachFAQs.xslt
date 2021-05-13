<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
	xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
	xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
	<xsl:output method="html" indent="yes"/>
	<xsl:template match="/ZoneList">
		<div class="panel active" id="panel-1">
			<!-- <div class="title">
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
			</div> -->
			<div class="full-content">
				<xsl:apply-templates select="Zone" mode="LV-1"></xsl:apply-templates>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="Zone" mode="LV-1">
		<div class="question-card">
			<div class="question-title">
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				<em class="ri-arrow-drop-down-line"></em>
			</div>
			<div class="question-body">
				<xsl:apply-templates select="News" mode="question"></xsl:apply-templates>
			</div>
		</div>
	</xsl:template>
	<xsl:template match="News" mode="question">
		<div class="question-card">
			<div class="question-title">
				<xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
				<em class="ri-arrow-drop-down-line"></em>
			</div>
			<div class="question-body">
				<xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
			</div>
		</div>
	</xsl:template>
</xsl:stylesheet>