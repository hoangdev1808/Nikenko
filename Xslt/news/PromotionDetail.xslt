<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/NewsDetail">
        <section class="kv-section detail-page">
            <div class="container">
                <div class="row">
                    <div class="col-lg-9">
                        <h1 class="title">
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                        </h1>
                        <div class="bottom-wrapper">
                            <time>20.02.2020</time>
                            <div class="social">
                                <a class="face" href="">
                                    <xsl:attribute name="href">
                                        <xsl:text>https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
                                        <xsl:value-of select="FullUrl" />
                                    </xsl:attribute>
                                    <em class="fab fa-facebook-f"></em>
                                </a>
                                <a class="twitter" href="">
                                    <xsl:attribute name="href">
                                        <xsl:text>https://twitter.com/home?status=</xsl:text>
                                        <xsl:value-of select="FullUrl" />
                                    </xsl:attribute>
                                    <em class="fab fa-twitter"></em>
                                </a>
                            </div>
                        </div>
                        <div class="full-content">
                            <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                    </div>
                    <div class="col-lg-3">
                        <div class="other-title">
                            <xsl:value-of select="NewsText" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                        <div class="other-news">
                            <xsl:apply-templates select="NewsOther" />
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="NewsOther">
        <a href="chi-tiet-tuyen-dung.html">
            <xsl:attribute name="target">
                <xsl:value-of select="Target" />
            </xsl:attribute>
            <xsl:attribute name="href">
                <xsl:value-of select="Url" />
            </xsl:attribute>
            <xsl:attribute name="title">
                <xsl:value-of select="Title" />
            </xsl:attribute>
            <div class="item">
                <div class="wrapper">
                    <img src="./assets/promotion/detail-3.png" alt="">
                        <xsl:attribute name="src">
                            <xsl:value-of select="ImageUrl" />
                        </xsl:attribute>
                    </img>
                </div>
                <div class="text">
                    <time>
                        <xsl:value-of select="CreateDate" disable-output-escaping="yes" />
                    </time>
                    <div class="caption lcl lcl-2">
                        <xsl:value-of select="Title" disable-output-escaping="yes" />
                    </div>
                    <xsl:value-of select="EditLink" disable-output-escaping="yes" />
                </div>
            </div>
        </a>
    </xsl:template>
</xsl:stylesheet>