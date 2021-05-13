<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/ProductList">
        <div class="filter-product">
            <div class="filter-content">
                <div class="sort">
                    <label for="">
                        <xsl:value-of select="SortText" disable-output-escaping="yes"></xsl:value-of>
                    </label>
                    <select class="ajaxsort">
                        <xsl:apply-templates select="SortBy" />
                    </select>
                </div>
                <div class="price">
                    <label for="">
                        <xsl:value-of select="RPText" disable-output-escaping="yes"></xsl:value-of>
                    </label>
                    <select class="ajaxsort">
                        <option value="0">0</option>
                        <option value="200000">200.000</option>
                        <option value="400000">400.000</option>
                        <option value="600000">600.000</option>
                        <option value="800000 ">800.000</option>
                    </select>
                    <span>
                        <xsl:value-of select="ToText" disable-output-escaping="yes"></xsl:value-of>
                    </span>
                    <select class="ajaxsort">
                        <option value="200000">200.000 đ</option>
                        <option value="400000">400.000 đ</option>
                        <option value="600000">600.000 đ</option>
                        <option value="800000">800.000 đ</option>
                        <option value="1000000">1.000.000 đ</option>
                        <option value="999999999"> > 1.000.000 đ</option>
                    </select>
                </div>
                <div class="show">
                    <label for="">
                        <xsl:value-of select="ShowText" disable-output-escaping="yes"></xsl:value-of>
                    </label>
                    <select class="ajaxsort">
                        <xsl:apply-templates select="PageSize" />
                    </select>
                </div>
            </div>
        </div>
        <div class="list-items ajaxresponse">
            <div class="row">
                <xsl:apply-templates select="Product" />
            </div>
        </div>
    </xsl:template>
    <xsl:template match="PageSize">
        <option>
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="selected">
                    <xsl:text>selected</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:attribute name="value">
                <xsl:value-of select="Url" />
            </xsl:attribute>
            <xsl:value-of select="Title" />
        </option>
    </xsl:template>
    <xsl:template match="SortBy">
        <option>
            <xsl:if test="IsActive='true'">
                <xsl:attribute name="selected">
                    <xsl:text>selected</xsl:text>
                </xsl:attribute>
            </xsl:if>
            <xsl:attribute name="value">
                <xsl:value-of select="Url" />
            </xsl:attribute>
            <xsl:value-of select="Title" />
        </option>
    </xsl:template>
    <xsl:template match="Product">
        <div class="col-lg-3 col-md-4 col-sm-6 col-6">
            <div class="item-pro">
                <div class="img">
                    <a href="chi-tiet-san-pham.html">
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url" />
                        </xsl:attribute>
                        <xsl:attribute name="target">
                            <xsl:value-of select="Target" />
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title" />
                        </xsl:attribute>
                        <img src="./assets/pro/pro-1.png" alt="">
                            <xsl:attribute name="src">
                                <xsl:value-of select="ImageUrl" />
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title" />
                            </xsl:attribute>
                        </img>
                    </a>
                </div>
                <div class="content">
                    <a class="title lcl lcl-2" href="chi-tiet-san-pham.html">
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url" />
                        </xsl:attribute>
                        <xsl:attribute name="target">
                            <xsl:value-of select="Target" />
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title" />
                        </xsl:attribute>
                        <xsl:value-of select="Title" />
                    </a>
                    <div class="desc">
                        <div class="price">
                            <p>
                                <xsl:value-of select="Price" />
                            </p>
                            <xsl:if test="OldPrice != ''">
                                <span>
                                    <xsl:value-of select="OldPrice" />
                                </span>
                            </xsl:if>
                        </div>
                        <div class="icon">
                            <a href="#" onclick="AjaxCart.addproducttocart_catalog(this);return false;">
                                <xsl:attribute name="data-productid">
                                    <xsl:value-of select="ProductId"></xsl:value-of>
                                </xsl:attribute>
                                <em class="material-icons">shopping_cart</em>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>