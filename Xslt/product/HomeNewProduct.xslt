<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/ProductList">
    <div class="kv-title">
      <p>
        <xsl:value-of select="ModuleTitle"/>
      </p>
    </div>
    <div class="row">
      <div class="col-xl-3 col-lg-3">
        <div class="small-img">
          <div class="row">
            <div class="col-lg-12 col-md-6 col-6">
              <xsl:apply-templates select="Product[1]"/>
            </div>
            <div class="col-lg-12 col-md-6 col-6">
              <xsl:apply-templates select="Product[2]"/>
            </div>
          </div> 
        </div> 
      </div>
      <div class="col-xl-6 col-lg-6">
        <div class="big-img"> 
          <xsl:apply-templates select="Product[3]"/>
        </div>
      </div>
      <div class="col-xl-3 col-lg-3">
        <div class="small-img">
          <div class="row">
            <div class="col-lg-12 col-md-6 col-6">
              <xsl:apply-templates select="Product[4]"/>
            </div>
            <div class="col-lg-12 col-md-6 col-6">
              <xsl:apply-templates select="Product[5]"/>
            </div>
          </div>
        </div>
      </div>
    </div>
  </xsl:template>

  
  <xsl:template match="Product">
    <div class="item-pro-new">
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
        <figure>
          <div class="img">
            <img src="./assets/index/pro-new-1.png" alt="">
              <xsl:attribute name="src">
                <xsl:value-of select="ImageUrl"></xsl:value-of>
              </xsl:attribute>
              <xsl:attribute name="alt">
                <xsl:value-of select="Title"></xsl:value-of>
              </xsl:attribute>
            </img>
            </div>
          <figcaption>
            <div class="desc">
              <div class="title">
                <xsl:value-of select="Title"></xsl:value-of>
              </div>
            </div>
          </figcaption>
        </figure>
      </a>
    </div>
  </xsl:template>
</xsl:stylesheet>