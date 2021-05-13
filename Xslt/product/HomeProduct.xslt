<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/ProductList">
        <div class="slide-colum">
            <div class="swiper-container">
                <div class="swiper-wrapper">
                    <xsl:apply-templates select="Product"></xsl:apply-templates>
                </div>
            </div>
            <div class="swiper-button-prev"></div>
            <div class="swiper-button-next"></div>
        </div>
    </xsl:template>
    <xsl:template match="Product">
        <div class="swiper-slide">
            <div class="item-pro">
                <div class="img">
                    <a href="">
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="target">
                            <xsl:value-of select="Target"></xsl:value-of>
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
                </div>
                <div class="content">
                    <a class="title" href="">
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="target">
                            <xsl:value-of select="Target"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of select="Title"></xsl:value-of>
                    </a>
                    <div class="desc">
                        <div class="price">
                            <p>
                                <xsl:value-of select="Price"></xsl:value-of>
                            </p>
                            <xsl:if test="OldPrice != ''">
                                <span>
                                    <xsl:value-of select="OldPrice"></xsl:value-of>
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