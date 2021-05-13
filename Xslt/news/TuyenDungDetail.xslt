<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
    xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes"/>
    <xsl:template match="/NewsDetail">
        <section class="kv-section hr-detail-page">
            <div class="container">
                <div class="row">
                    <div class="col-xl-9 col-lg-12 col-md-12 col-12">
                        <h1 class="title">
                            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                            <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                        </h1>
                        <div class="bottom-wrapper">
                            <div class="social">
                                <a class="face" href="">
                                    <xsl:attribute name="href">
                                        <xsl:text>https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
                                        <xsl:value-of select="FullUrl"/>
                                    </xsl:attribute>
                                    <em class="fab fa-facebook-f"></em>
                                </a>
                                <a class="twitter" href="">
                                    <xsl:attribute name="href">
                                        <xsl:text>https://twitter.com/home?status=</xsl:text>
                                        <xsl:value-of select="FullUrl"/>
                                    </xsl:attribute>
                                    <em class="fab fa-twitter"></em>
                                </a>
                            </div>
                            <div class="box-apply">
                                <a class="btn btn__down">
                                    <xsl:attribute name="href">
                                        <xsl:value-of select="FileUrl" />
                                    </xsl:attribute>
                                    <xsl:text disable-output-escaping="yes"> Tải mẫu đơn ứng tuyển</xsl:text>
                                </a>
                                <a class="btn btn__apply">
                                    <xsl:attribute name="data-type">
                                        <xsl:text>iframe</xsl:text>
                                    </xsl:attribute>
                                    <xsl:attribute name="data-fancybox">
                                        <xsl:text>Form ứng tuyển</xsl:text>
                                    </xsl:attribute>
                                    <xsl:attribute name="data-src">
                                        <xsl:value-of select="ApplyUrl" disable-output-escaping="yes"/>
                                    </xsl:attribute>
                                    <xsl:attribute name="title">
                                        <xsl:value-of select="Title"></xsl:value-of>
                                    </xsl:attribute>
                                    <xsl:value-of select="Apply"></xsl:value-of>
                                    <xsl:text disable-output-escaping="yes">Nộp đơn ứng tuyển</xsl:text>
                                </a>
                            </div>
                        </div>
                        <div class="full-content">
                            <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                    </div>
                    <div class="col-xl-3 col-lg-12 col-md-12 col-12">
                        <div class="infor-contact">
                        </div>
                        <div class="sidebar">
                            <div class="other-title">công việc tương tự</div>
                            <ul class="list">
                                <xsl:apply-templates select="NewsOther" />
                            </ul>
                        </div>
                    </div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="NewsOther">
        <li>
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
                <h3>
                    <xsl:value-of select="Title" />
                </h3>
                <p>
                    <xsl:text>Nơi làm việc: </xsl:text>
                    <xsl:value-of select="SubTitle" />
                </p>
                <span>
                    <xsl:text>Hạn nộp hồ sơ: </xsl:text>
                    <xsl:value-of select="EndDate" />
                </span>
            </a>
        </li>
    </xsl:template>
</xsl:stylesheet>