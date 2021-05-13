<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
  <xsl:output method="html" indent="yes" />

  <xsl:template match="/ShoppingCart">

    <div class="cart-wrapper">
      <div class="admin-title">
        <div class="text">
          <xsl:value-of select="YourCartText" disable-output-escaping="yes"></xsl:value-of>
          <xsl:text disable-output-escaping="yes">(</xsl:text>
          <span>
            <xsl:value-of select="TotalProducts"></xsl:value-of>
          </span>
          <xsl:value-of select="ProductText" disable-output-escaping="yes"></xsl:value-of>
          <xsl:text disable-output-escaping="yes">)</xsl:text>
        </div>
      </div>
      <div class="wrapper">
        <table class="carttable" cellspacing="0" cellpadding="0">
          <thead>
            <tr>
              <th>
                <xsl:value-of select="ProductText" disable-output-escaping="yes"></xsl:value-of>
              </th>
              <th>
                <xsl:value-of select="PriceText" disable-output-escaping="yes"></xsl:value-of>
              </th>
              <th>
                <xsl:value-of select="QuantityText" disable-output-escaping="yes"></xsl:value-of>
              </th>
              <th>
                <xsl:value-of select="CalcuText" disable-output-escaping="yes"></xsl:value-of>
              </th>
            </tr>
          </thead>
          <tbody>
            <xsl:apply-templates select="CartItem"></xsl:apply-templates>
          </tbody>
        </table>
      </div>
      <div class="total-wrapper">
        <table class="total-table">
          <tbody>
            <tr>
              <td>
                <xsl:value-of select="TotalText" disable-output-escaping="yes"></xsl:value-of>
              </td>
              <td align="right" />
              <td align="right">
                <xsl:value-of select="SubTotal"></xsl:value-of>
              </td>
            </tr>
            <tr>
              <td>
                <xsl:value-of select="DisCountText" disable-output-escaping="yes"></xsl:value-of>
              </td>
              <td align="right" />
              <td align="right">
                <xsl:value-of select="DiscountTotal"></xsl:value-of>
              </td>
            </tr>
            <tr>
              <td>
                <xsl:value-of select="SubTotalText" disable-output-escaping="yes"></xsl:value-of>
              </td>
              <td align="right" />
              <td align="right">
                <xsl:value-of select="Total"></xsl:value-of>
              </td>
            </tr>
          </tbody>
        </table>
        <div class="btn-right">
          <a class="btn btn-primary gray" href="/">
            <xsl:attribute name="href">
              <xsl:value-of select="ContinueShoppingUrl"></xsl:value-of>
            </xsl:attribute>
            <em class="lnr lnr-arrow-left"></em>
            <span>
              <xsl:value-of select="ContinueText" disable-output-escaping="yes"></xsl:value-of>
            </span>
          </a>
          <a class="btn btn-primary red" href="">
            <xsl:attribute name="onclick">
              <xsl:text>setLocation('</xsl:text>
              <xsl:value-of select="CheckoutUrl"></xsl:value-of>
              <xsl:text>');return false;</xsl:text>
            </xsl:attribute>
            <span>
              <xsl:value-of select="PWOText" disable-output-escaping="yes"></xsl:value-of>
            </span>
            <em class="lnr lnr-arrow-right"></em>
          </a>
        </div>
      </div>
    </div>
  </xsl:template>

  <xsl:template match="CartItem">
    <tr>
      <td>
        <div class="product-item">
          <div class="image">
            <a href="">
              <xsl:attribute name="href">
                <xsl:value-of select="Url"></xsl:value-of>
              </xsl:attribute>
              <img src="./assets/index/pro-1.png" alt="">
                <xsl:attribute name="src">
                  <xsl:value-of select="ThumbnailUrl"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="alt">
                  <xsl:value-of select="Title"></xsl:value-of>
                </xsl:attribute>
              </img>
            </a>
          </div>
          <div class="caption">
            <div class="title">
              <a href="">
                <xsl:attribute name="href">
                  <xsl:value-of select="Url"></xsl:value-of>
                </xsl:attribute>
                <xsl:value-of select="Title"></xsl:value-of>
              </a>
            </div>
            <a class="remove-item" href="" onclick="AjaxCart.removefromcart(this);return false;">
              <xsl:attribute name="data-itemguid">
                <xsl:value-of select="ItemGuid"></xsl:value-of>
              </xsl:attribute>
              <em class="lnr lnr-cross-circle"></em>
              <span>
                <xsl:value-of select="/ShoppingCart/RemoveText" disable-output-escaping="yes"></xsl:value-of>
              </span>
            </a>
          </div>
        </div>
      </td>
      <td>
        <div class="price">
          <div class="current">
            <xsl:value-of select="Price"></xsl:value-of>
          </div>
          <div class="old-wrap"></div>
        </div>
      </td>
      <td>
        <div class="quantity-wrapper">
          <div class="item-quantity">
            <div class="input-group">
              <div class="input-group-btn">
                <div class="qty-minus btn-number">
                  <em class="material-icons">remove</em>
                </div>
              </div>
              <input class="product-details-quantity form-control input-number" type="text" maxlength="10" value="4" onchange="AjaxCart.updatecart();return false;">
                <xsl:attribute name="name">
                  <xsl:text>itemquantity</xsl:text>
                  <xsl:value-of select="ItemGuid"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="value">
                  <xsl:value-of select="Quantity"></xsl:value-of>
                </xsl:attribute>
              </input>
              <div class="input-group-btn">
                <div class="qty-plus btn-number">
                  <em class="material-icons">add</em>
                </div>
              </div>
            </div>
          </div>
        </div>
      </td>
      <td>
        <div class="total">
          <xsl:value-of select="ItemSubTotal"></xsl:value-of>
        </div>
      </td>
    </tr>


  </xsl:template>

  <xsl:template match="Quantities">
    <option>
      <xsl:attribute name="value">
        <xsl:value-of select="Quantity"></xsl:value-of>
      </xsl:attribute>
      <xsl:value-of select="Quantity"></xsl:value-of>
    </option>
  </xsl:template>

  <xsl:template match="Attributes">
    <div class="productsize">
      <xsl:value-of select="Title"></xsl:value-of>
      <xsl:text>: </xsl:text>
      <strong>
        <xsl:apply-templates select="Options"></xsl:apply-templates>
      </strong>
    </div>
  </xsl:template>

  <xsl:template match="Options">
    <xsl:if test="IsActive='true'">
      <xsl:value-of select="Title"></xsl:value-of>
    </xsl:if>
  </xsl:template>

</xsl:stylesheet>