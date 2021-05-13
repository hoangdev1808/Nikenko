<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes"/>

  <xsl:template match="/">
    <div class="table-responsive">
      <table class="uk-table">
        <thead>
          <tr>
            <th class="text_left">
              Order code
            </th>
            <th class="text_center">
              Products
            </th>
            <th class="text_center">
            Date of purchase
            </th>
            <th class="text_right">
              Total
            </th>
            <th class="text_center">
              Tình trạng
            </th>
          </tr>
        </thead>
        <tbody>
          <xsl:apply-templates select="/OrderList/Order"></xsl:apply-templates>
        </tbody>
      </table>
    </div>
  </xsl:template>
  <xsl:template match="Order">
    <tr>
      <td class="code_history">
        <a class="trainsion opacity" style="text-decoration: underline; color: #00a0dd">
          <xsl:attribute name="href">
            <xsl:text>/account/OrderView.aspx?ordercode=</xsl:text>
            <xsl:value-of select="OrderCode"></xsl:value-of>
          </xsl:attribute>
          <xsl:attribute name="target">
            <xsl:value-of select="Target"></xsl:value-of>
          </xsl:attribute>
          <xsl:attribute name="title">
            <xsl:value-of select="OrderCode"></xsl:value-of>
          </xsl:attribute>
          <xsl:value-of select="OrderCode"></xsl:value-of>
        </a>
      </td>
      <td class="name_history">
        <xsl:apply-templates select="Product"></xsl:apply-templates>
      </td>
      <td class="date_history text_center">
        <xsl:value-of select="OrderDate"></xsl:value-of>
      </td>
      <td class="sum_history text_right">
        <span>
          <xsl:value-of select="OrderTotal"></xsl:value-of>
        </span>
      </td>
      <td class="thing_history text_center">
        <div class=""> 
          <xsl:value-of select="OrderStatus"></xsl:value-of>
        </div>
      </td> 
    </tr>
  </xsl:template>
  <xsl:template match="Product">
    <xsl:if test="position()=1">
      <label>
        <xsl:value-of select="Title"></xsl:value-of>
      </label>
      <xsl:text> ...</xsl:text>
    </xsl:if>
  </xsl:template>
</xsl:stylesheet>
