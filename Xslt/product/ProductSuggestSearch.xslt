<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <xsl:choose>
            <xsl:when test="count(/ProductList/Product)>0">
                <div class="product-list">
                    <div class="row">
                        <xsl:apply-templates select="/ProductList/Product"></xsl:apply-templates>
                    </div>
                </div>
            </xsl:when>
            <xsl:otherwise>
                <div class="noresults">
                    <xsl:value-of select="/ProductList/NoResults" disable-output-escaping="yes"></xsl:value-of>
                </div>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    <xsl:template match="Product">
        <div class="col-12 col-sm-6 col-md-6 col-lg-4">
            <div class="product-item">
                <a class="product-image">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <img>
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="alt">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                    </img>
                </a>
                <div class="product-name">
                    <a class="title">
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of select="Title"></xsl:value-of>
                    </a>
                    <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                </div>
                <div class="product-price">
                    <span class="price">
                        <xsl:value-of select="Price" disable-output-escaping="yes"></xsl:value-of>
                    </span>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>