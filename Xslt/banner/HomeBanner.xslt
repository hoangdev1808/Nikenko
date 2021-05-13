<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes" />

  <xsl:template match="/BannerList">

    <section class="kv-banner" id="home-banner">
      <div class="list-banner">
        <div class="swiper-container slide-content">
          <div class="swiper-wrapper">
            <xsl:apply-templates select="Banner" />
          </div>
          <div class="swiper-pagination"></div>
        </div>
      </div>

    </section>
  </xsl:template>

  <xsl:template match="Banner">
    <div class="swiper-slide">
      <div class="swiper-inner desktop">
        <img>
          <xsl:attribute name="src">
            <xsl:value-of select="ImageUrl" disable-output-escaping="yes"></xsl:value-of>
          </xsl:attribute>
          <xsl:attribute name="alt">
            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
          </xsl:attribute>
        </img>
        <div class="content">
          <div class="title">
            <xsl:value-of select="Title" disable-output-escaping="yes" />
          </div>
          <p class="desc">
            <xsl:value-of select="Description" disable-output-escaping="yes" />
          </p>
          <xsl:if test="Url != ''">
            <a class="btn btn-more" href="">
              <xsl:attribute name="title">
                <xsl:value-of select="Title" />
              </xsl:attribute>
              <xsl:attribute name="href">
                <xsl:value-of select="Url" />
              </xsl:attribute>
              <xsl:text>Mua ngay</xsl:text>
              <em class="material-icons">arrow_forward</em>
            </a>
          </xsl:if>
        </div>
      </div>
      <div class="swiper-inner mobile">
        <img>
          <xsl:attribute name="src">
            <xsl:value-of select="ThumbnailUrl" disable-output-escaping="yes"></xsl:value-of>
          </xsl:attribute>
          <xsl:attribute name="alt">
            <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
          </xsl:attribute>
        </img>
        <div class="content">
          <div class="title">
            <xsl:value-of select="Title" disable-output-escaping="yes" />
          </div>
          <p class="desc">
            <xsl:value-of select="Description" disable-output-escaping="yes" />
          </p>
          <xsl:if test="Url != ''">
            <a class="btn btn-more" href="">
              <xsl:attribute name="title">
                <xsl:value-of select="Title" />
              </xsl:attribute>
              <xsl:attribute name="href">
                <xsl:value-of select="Url" />
              </xsl:attribute>
              <xsl:text>Mua ngay</xsl:text>
              <em class="material-icons">arrow_forward</em>
            </a>
          </xsl:if>
        </div>
      </div>
    </div>
  </xsl:template>
</xsl:stylesheet>