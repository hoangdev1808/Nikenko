<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/">
        <div class="payment-info clearfix">
            <xsl:if test="count(/CheckoutMethod/Shipping)>0">
                <div class="payment-form">
                    <h3 class="carttitle">
                        <xsl:value-of select="/CheckoutMethod/PTVCText" disable-output-escaping="yes"></xsl:value-of>
                    </h3>
                    <div class="cart-form clearfix">
                        <xsl:apply-templates select="/CheckoutMethod/Shipping"></xsl:apply-templates>
                    </div>
                </div>
            </xsl:if>
            <xsl:if test="count(/CheckoutMethod/Payment)>0">
                <div class="payment-form">
                    <h3 class="carttitle">
                        <xsl:value-of select="/CheckoutMethod/PTTTText" disable-output-escaping="yes"></xsl:value-of>
                    </h3>
                    <div class="cart-form clearfix">
                        <xsl:apply-templates select="/CheckoutMethod/Payment"></xsl:apply-templates>
                    </div>
                </div>
            </xsl:if>
        </div>
        <div class="receive-address-btn">
            <div class="cart-button clearfix btn-wrap ">
                <a class="btn-back">
                    <xsl:attribute name="href">
                        <xsl:text>/cart</xsl:text>
                    </xsl:attribute>
                    <xsl:attribute name="target">
                        <xsl:value-of select="Target"></xsl:value-of>
                    </xsl:attribute>
                    <em class="ri-arrow-left-line"></em>
                    <xsl:value-of select="/CheckoutMethod/BackText" disable-output-escaping="yes"></xsl:value-of>
                </a>
                <button type="submit" id="checkout" name="checkout" class="hvr-sweep-to-right btn-continue">
                    <xsl:attribute name="onclick">
                        <xsl:text>AjaxCheckout.saveorder(true, '</xsl:text>
                        <xsl:value-of select="/CheckoutMethod/NextPageUrl"></xsl:value-of>
                        <xsl:text>');return false;</xsl:text>
                    </xsl:attribute>
                    <xsl:value-of select="/CheckoutMethod/PCText" disable-output-escaping="yes"></xsl:value-of>
                </button>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="Shipping">
        <div class="form-group select-group">
            <input type="radio" name="ShippingMethod" onchange="AjaxCheckout.getshippingtotal(this)">
                <xsl:if test="position()=1">
                    <xsl:attribute name="checked">
                        <xsl:text>checked</xsl:text>
                    </xsl:attribute>
                </xsl:if>
                <xsl:attribute name="value">
                    <xsl:value-of select="Id"></xsl:value-of>
                </xsl:attribute>
            </input>
            <label>
                <xsl:value-of select="Title"></xsl:value-of>
            </label>
            <xsl:if test="Description!=''">
                <div class="des">
                    <xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
                </div>
            </xsl:if>
        </div>
    </xsl:template>
    <xsl:template match="Payment">
        <div class="payment-method">
            <div class="select-group">
                <input type="radio" name="PaymentMethod">
                    <xsl:attribute name="id">
                        <xsl:value-of select="Id"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="value">
                        <xsl:value-of select="Id"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:if test="position()=1">
                        <xsl:attribute name="checked">
                            <xsl:text>checked</xsl:text>
                        </xsl:attribute>
                        <xsl:attribute name="value">
                            <xsl:value-of select="Id"></xsl:value-of>
                        </xsl:attribute>
                    </xsl:if>
                </input>
                <label>
                    <xsl:attribute name="for">
                        <xsl:value-of select="Id"></xsl:value-of>
                    </xsl:attribute>
                    <div class="method-info">
                        <xsl:if test="Description!=''">
                            <xsl:value-of select="Description" disable-output-escaping="yes"></xsl:value-of>
                        </xsl:if>
                    </div>
                </label>
                <xsl:if test="Id=3">
                    <div class="agree">
                        <input id="PaymentAgree" type="checkbox" checked="checked" name="PaymentAgree" />
                        <label for="PaymentAgree">Tôi đã đọc và đồng ý điều khoản trên</label>
                    </div>
                </xsl:if>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>
