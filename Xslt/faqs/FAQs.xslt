<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/FAQsList">
    <div class="kv-title">
      <p>
        <xsl:value-of select="ZoneTitle"/>
      </p>
    </div>
    <div class="tab-panels">
      <div class="row">
        <div class="col-lg-9 left">
          <xsl:apply-templates select="Zone" mode="News"/> 
        </div>
        <div class="col-lg-3 right">
          <div class="other-title">câu hỏi thường gặp</div>
          <p class="category-nav">Danh mục<em class="material-icons">keyboard_arrow_down</em></p>
          <ul class="tabs">
          <xsl:apply-templates select="Zone" mode="Menu"/> 
          </ul>
          <div class="img">
            <img>
              <xsl:attribute name="src">
                <xsl:value-of select="ImageUrl" />
              </xsl:attribute>
            </img> 
          </div>
        </div>
      </div>
    </div>
  </xsl:template>


  <xsl:template match="Zone" mode="News">
          <div class="panel " id="panel-1">
            <xsl:attribute name="id">
              <xsl:text>hotro-panel</xsl:text>
              <xsl:value-of select="position()"/> 
            </xsl:attribute>
          <xsl:if test="position() = 1">
            <xsl:attribute name="class"> 
              <xsl:text>panel active</xsl:text>
            </xsl:attribute>
          </xsl:if>
            <div class="title">
              <xsl:value-of select="News[1]/Title"/>
            </div>
            <div class="full-content">
              <xsl:value-of select="News[1]/FullContent" disable-output-escaping="yes"/>
              
            </div>
          </div>
  </xsl:template>

  <xsl:template match="Zone" mode="Menu">
    <li class="" rel="panel-1">
        <xsl:attribute name="rel">
          <xsl:text>hotro-panel</xsl:text>
          <xsl:value-of select="position()"/> 
        </xsl:attribute>
      <xsl:if test="position() = 1">
        <xsl:attribute name="class">
          <xsl:text>active</xsl:text>
        </xsl:attribute>
      </xsl:if>
      <xsl:value-of select="Title"/>
    </li>
  </xsl:template>
</xsl:stylesheet>