<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/NewsList">
        <div class="kv-title">
            <p>
                <xsl:value-of select="ZoneTitle" disable-output-escaping="yes" />
            </p>
        </div>
        <div class="row">
            <xsl:apply-templates select="News[position() &lt; 3]" mode="Big"/>
            <xsl:apply-templates select="News[position() > 2]"/>
        </div>
        <a class="view-page" href="">Xem thêm
                
            <em class="material-icons">expand_more</em>
        </a>
    </xsl:template>
    <xsl:template match="News" mode="Big">
        <div class="col-lg-6 col-md-6">
            <div class="item-big">
                <div class="img">
                    <a href="chi-tiet-khuyen-mai.html">
                        <xsl:attribute name="target">
                            <xsl:value-of select="Target" />
                        </xsl:attribute>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url" />
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title" />
                        </xsl:attribute>
                        <img src="./assets/promotion/promotion-1.png" alt="">
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl" />
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title" disable-output-escaping="yes" />
                            </xsl:attribute>
                        </img>
                    </a>
                </div>
                <div class="desc">
                    <a class="title lcl lcl-3" href="chi-tiet-khuyen-mai.html">
                        <xsl:attribute name="target">
                            <xsl:value-of select="Target" />
                        </xsl:attribute>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url" />
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title" />
                        </xsl:attribute>
                        <xsl:value-of select="Title" />
                    </a>
                    <a class="view-more" href="chi-tiet-khuyen-mai.html">
                        <xsl:attribute name="target">
                            <xsl:value-of select="Target" />
                        </xsl:attribute>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url" />
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title" />
                        </xsl:attribute>Xem thêm
                
                
                    
                    </a>
                </div>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="News">
        <div class="col-lg-4 col-md-6">
            <div class="item-small">
                <div class="img">
                    <a href="chi-tiet-khuyen-mai.html">
                        <xsl:attribute name="target">
                            <xsl:value-of select="Target" />
                        </xsl:attribute>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url" />
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title" />
                        </xsl:attribute>
                        <img src="./assets/promotion/promotion-4.png" alt="">
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl" />
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title" disable-output-escaping="yes" />
                            </xsl:attribute>
                        </img>
                    </a>
                </div>
                <div class="desc">
                    <a class="title lcl lcl-3" href="">
                        <xsl:attribute name="target">
                            <xsl:value-of select="Target" />
                        </xsl:attribute>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url" />
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title" />
                        </xsl:attribute>
                        <xsl:value-of select="Title" />
                    </a>
                    <a class="view-more" href="">
                        <xsl:attribute name="target">
                            <xsl:value-of select="Target" />
                        </xsl:attribute>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url" />
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title" />
                        </xsl:attribute>Xem thêm
                
                
                    
                    </a>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>