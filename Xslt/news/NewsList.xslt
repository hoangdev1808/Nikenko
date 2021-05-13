<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes" />

  <xsl:template match="/NewsList">
    <div class="row">
      <div class="col-lg-6">
        <xsl:apply-templates select="News[1]" mode="Big" />
      </div>
      <div class="col-lg-6">
        <div class="row">
          <xsl:apply-templates select="News[2]" mode="Small" />
          <xsl:apply-templates select="News[3]" mode="Small" />
          <xsl:apply-templates select="News[4]" mode="Small" />
          <xsl:apply-templates select="News[5]" mode="Small" />
        </div>
      </div>
      <xsl:apply-templates select="News[position() > 5]" />
    </div>
  </xsl:template>
  <xsl:template match="News" mode="Big">
    <div class="item-big">
      <a href="chi-tiet-tin-tuc.html">
        <xsl:attribute name="target">
          <xsl:value-of select="Target" />
        </xsl:attribute>
        <xsl:attribute name="href">
          <xsl:value-of select="Url" />
        </xsl:attribute>
        <xsl:attribute name="title">
          <xsl:value-of select="Title" />
        </xsl:attribute>
        <div class="img">
          <img src="./assets/index/blog-1.png" alt="">
            <xsl:attribute name="src">
              <xsl:value-of select="ImageUrl" />
            </xsl:attribute>
            <xsl:attribute name="alt">
              <xsl:value-of select="Title" disable-output-escaping="yes" />
            </xsl:attribute>
          </img>
        </div>
        <div class="content">
          <div class="date">
            <xsl:value-of select="CreatedDate" disable-output-escaping="yes" />
          </div>
          <div class="title">
            <xsl:value-of select="Title" disable-output-escaping="yes" />
            <xsl:value-of select="EditLink" disable-output-escaping="yes" />
          </div>
          <div class="desc lcl lcl-3">

            <xsl:value-of select="BriefContent" disable-output-escaping="yes" />
          </div>
          <div class="view-more">
            <xsl:value-of select="/NewsList/VMText" disable-output-escaping="yes"></xsl:value-of>
            <em class="material-icons">arrow_forward</em>
          </div>
        </div>
      </a>
    </div>
  </xsl:template>
  <xsl:template match="News" mode="Small">
    <div class="col-lg-6 col-md-6 col-sm-6">
      <div class="item-small">
        <a href="">
          <xsl:attribute name="target">
            <xsl:value-of select="Target" />
          </xsl:attribute>
          <xsl:attribute name="href">
            <xsl:value-of select="Url" />
          </xsl:attribute>
          <xsl:attribute name="title">
            <xsl:value-of select="Title" />
          </xsl:attribute>
          <div class="img">
            <img>
              <xsl:attribute name="src">
                <xsl:value-of select="ImageUrl" />
              </xsl:attribute>
              <xsl:attribute name="alt">
                <xsl:value-of select="Title" disable-output-escaping="yes" />
              </xsl:attribute>
            </img>
          </div>
          <div class="content">
            <div class="date">
              <xsl:value-of select="CreatedDate" disable-output-escaping="yes" />
            </div>
            <div class="title">
              <xsl:value-of select="Title" disable-output-escaping="yes" />
              <xsl:value-of select="EditLink" disable-output-escaping="yes" />
            </div>
          </div>
        </a>
      </div>
    </div>
  </xsl:template>
  <xsl:template match="News">
    <div class="col-lg-4 col-md-6 col-sm-6">
      <div class="item-small">
        <a href="">
          <xsl:attribute name="target">
            <xsl:value-of select="Target" />
          </xsl:attribute>
          <xsl:attribute name="href">
            <xsl:value-of select="Url" />
          </xsl:attribute>
          <xsl:attribute name="title">
            <xsl:value-of select="Title" />
          </xsl:attribute>
          <div class="img">
            <img>
              <xsl:attribute name="src">
                <xsl:value-of select="ImageUrl" />
              </xsl:attribute>
              <xsl:attribute name="alt">
                <xsl:value-of select="Title" disable-output-escaping="yes" />
              </xsl:attribute>
            </img>
          </div>
          <div class="content">
            <div class="date">
              <xsl:value-of select="CreatedDate" disable-output-escaping="yes" />
            </div>
            <div class="title">
              <xsl:value-of select="Title" disable-output-escaping="yes" />
              <xsl:value-of select="EditLink" disable-output-escaping="yes" />
            </div>
          </div>
        </a>
      </div>
    </div>
  </xsl:template>
</xsl:stylesheet>