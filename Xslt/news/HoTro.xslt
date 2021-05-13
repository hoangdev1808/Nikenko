<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/NewsList">
        <div class="panel active" id="panel-1">
            <div class="title">
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </div>
            <div class="full-content">
                <xsl:value-of select="News/FullContent" disable-output-escaping="yes"></xsl:value-of>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>