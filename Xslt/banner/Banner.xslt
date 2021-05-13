<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/BannerList">
        <section id="page-banner">
            <div class="banner__pages">
                <div class="swiper-container">
                    <div class="swiper-wrapper">
                        <xsl:apply-templates select="Banner"></xsl:apply-templates>
                    </div>
                    <div class="swiper-pagination"></div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="Banner">
        <div class="swiper-slide">
            <div class="img desktop">
                <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="ImageUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
            </div>
            <div class="img mobile">
                <img>
                    <xsl:attribute name="src">
                        <xsl:value-of select="ThumbnailUrl"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="alt">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                </img>
            </div>
            <div class="content">
                <div class="title">
                    <xsl:value-of select="Banner[1]/Title" disable-output-escaping="yes"></xsl:value-of>
                </div>
                <xsl:if test="Banner[1]/Description !=''">
                    <div class="sub-title">
                        <xsl:value-of select="Banner[1]/Description" disable-output-escaping="yes"></xsl:value-of>
                    </div>
                </xsl:if>
                <xsl:if test="Banner[1]/Url !=''">
                    <a class="btn btn-more" href="">
                        <xsl:attribute name="href">
                            <xsl:value-of select="Banner[1]/Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Banner[1]/Title" disable-output-escaping="yes"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:text disable-output-escaping="yes">Mua ngay</xsl:text>
                        <em class="material-icons">arrow_forward</em>
                    </a>
                </xsl:if>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>