<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ZoneList">
        <p class="category-nav">
            <xsl:text disable-output-escaping="yes">Danh mục</xsl:text>
            <em class="material-icons">keyboard_arrow_down</em>
        </p>
        <ul class="tabs-left">
            <xsl:apply-templates select="Zone"></xsl:apply-templates>
        </ul>
        <div class="img">
            <img src="/Data/Sites/1/skins/default/assets/ho-tro.png" alt=""/>
        </div>
    </xsl:template>
    <xsl:template match="Zone">
        <li>
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="class">
                    <xsl:text disable-output-escaping="yes">active</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <!-- <xsl:attribute name="rel"><xsl:text disable-output-escaping="yes">panel-</xsl:text><xsl:value-of select="position()" disable-output-escaping="yes"></xsl:value-of></xsl:attribute> -->
            <a>
                <xsl:attribute name="href">
                    <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="title">
                    <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="target">
                    <xsl:value-of select="Target"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
            </a>
        </li>
    </xsl:template>
</xsl:stylesheet>