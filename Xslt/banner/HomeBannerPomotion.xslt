<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/BannerList">
    <div class="row">
        <xsl:apply-templates select="Banner"/>
    </div>
  </xsl:template> 

  <xsl:template match="Banner">
    <div class="col-xl-6 col-lg-6">
      <div class="item">
        <div class="img">
          <img src="./assets/index/i-1.png" alt="">
            <xsl:attribute name="src">
              <xsl:value-of select="ImageUrl"/>
            </xsl:attribute>
            <xsl:attribute name="alt">
              <xsl:value-of select="Title" disable-output-escaping="yes"/>
            </xsl:attribute>
          </img>
        </div>
        <div class="content">
          <div class="title">
            <xsl:value-of select="Title" disable-output-escaping="yes"/>
          </div>
          <div class="desc">
            <xsl:value-of select="Description" disable-output-escaping="yes"/>
          </div>
          <xsl:if test="Url != ''"> 
            <a class="view-more" href="">
              <xsl:attribute name="title">
                <xsl:value-of select="Title"/>
              </xsl:attribute>
              <xsl:attribute name="href">
                <xsl:value-of select="Url" />
              </xsl:attribute>
              Xem thêm
              <em class="material-icons">arrow_forward</em>
            </a>
          </xsl:if>
        </div>
      </div>
    </div>
  </xsl:template>
</xsl:stylesheet>