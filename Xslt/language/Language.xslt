<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/LanguageList">
    <button class="dropdown-toggle" id="dropdownMenuButton" type="button" data-toggle="dropdown" aria-haspopup="true" aria-expanded="false">
      <a href="">
          <xsl:attribute name="href">
            <xsl:value-of select="Language[IsActive='true']/Url"></xsl:value-of>
          </xsl:attribute>
          <xsl:attribute name="title"> 
            <xsl:value-of select="Language[IsActive='true']/Title"></xsl:value-of>
          </xsl:attribute>
        <img src="/data/sites/1/skins/default/assets/icons/vn.png" alt="">
            <xsl:attribute name="src">
              <xsl:value-of select="Language[IsActive='true']/ImageUrl"></xsl:value-of>
            </xsl:attribute>
            <xsl:attribute name="alt">
              <xsl:value-of select="Language[IsActive='true']/Title"></xsl:value-of>
            </xsl:attribute>
          </img>
      </a>
    </button>
    <div class="dropdown-menu" aria-labelledby="dropdownMenuButton">
      <xsl:apply-templates select="Language"></xsl:apply-templates>
    </div>
  </xsl:template>

  <xsl:template match="Language" mode="Active">
    <xsl:if test="IsActive='true'">
      <div class="flag">
        <a>
          <xsl:attribute name="href">
            <xsl:value-of select="Url"></xsl:value-of>
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
    </xsl:if>
  </xsl:template>
  <xsl:template match="Language">
    <a class="dropdown-item">
      <xsl:attribute name="href">
        <xsl:value-of select="Url"></xsl:value-of>
      </xsl:attribute>
      <xsl:attribute name="title">
        <xsl:value-of select="Title"></xsl:value-of>
      </xsl:attribute>
      <div class="flag">
        <img>
          <xsl:attribute name="src">
            <xsl:value-of select="ImageUrl"></xsl:value-of>
          </xsl:attribute>
          <xsl:attribute name="alt">
            <xsl:value-of select="Title"></xsl:value-of>
          </xsl:attribute>
        </img>
      </div>
    </a>
  </xsl:template>
</xsl:stylesheet>