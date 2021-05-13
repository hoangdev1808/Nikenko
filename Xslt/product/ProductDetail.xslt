<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/ProductDetail">
        <section class="kv-section pro-detail-1">
            <div class="container">
                <div class="pro-wrapper">
                    <div class="pro-slider">
                        <div class="swiper-container gallery-thumbs">
                            <div class="swiper-wrapper">
                                <xsl:apply-templates select="ProductImages" mode="BigImages" />
                            </div>
                        </div>
                        <div class="swiper-button-next"></div>
                        <div class="swiper-button-prev"></div>
                        <div class="swiper-container gallery-top">
                            <div class="swiper-wrapper">
                                <xsl:apply-templates select="ProductImages" mode="SmallImages" />
                            </div>
                        </div>
                    </div>
                    <div class="pro-infor">
                        <div class="content">
                            <h1 class="title">
                                <xsl:value-of select="Title"></xsl:value-of>
                                <xsl:value-of select="EditLink" disable-output-escaping="yes"></xsl:value-of>
                            </h1>
                            <div class="sub-title">
                                <div class="price">
                                    <p>
                                        <xsl:value-of select="Price"></xsl:value-of>
                                        <xsl:if test="OldPrice != ''">
                                            <span>
                                                <xsl:value-of select="OldPrice"></xsl:value-of>
                                            </span>
                                        </xsl:if>
                                    </p>
                                </div>
                                <div class="social">
                                    <a class="face" target="_blank">
                                        <xsl:attribute name="href">
                                            <xsl:text>https://www.facebook.com/sharer/sharer.php?u=</xsl:text>
                                            <xsl:value-of select="FullUrl" />
                                        </xsl:attribute>
                                        <em class="fab fa-facebook-f"></em>
                                    </a>
                                    <a class="twitter" target="_blank">
                                        <xsl:attribute name="href">
                                            <xsl:text>https://twitter.com/home?status=</xsl:text>
                                            <xsl:value-of select="FullUrl" />
                                        </xsl:attribute>
                                        <em class="fab fa-twitter"></em>
                                    </a>
                                </div>
                            </div>
                        </div>
                        <div class="desc">
                            <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                        <div class="pro-infor-bottom">
                            <div class="item-quantity">
                                <div class="input-group">
                                    <div class="input-group-btn">
                                        <div class="qty-minus btn-number">
                                            <em class="material-icons">remove</em>
                                        </div>
                                    </div>
                                    <input class="product-details-quantity form-control input-number" type="text" value="1">
                                        <xsl:attribute name="name">
                                            <xsl:text>addtocart_</xsl:text>
                                            <xsl:value-of select="ProductId" disable-output-escaping="yes"></xsl:value-of>
                                            <xsl:text>.EnteredQuantity</xsl:text>
                                        </xsl:attribute>
                                    </input>
                                    <div class="input-group-btn">
                                        <div class="qty-plus btn-number">
                                            <em class="material-icons">add</em>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="add-shopping-cart">
                                <a class="nav-link" href="#" onclick="AjaxCart.addproducttocart_details(this); return false;">
                                    <xsl:attribute name="data-productid">
                                        <xsl:value-of select="ProductId"></xsl:value-of>
                                    </xsl:attribute>
                                    <em class="material-icons">shopping_cart</em>
                                    <xsl:value-of select="AddCartext" disable-output-escaping="yes"></xsl:value-of>
                                </a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </section>
        <section class="kv-section pro-detail-2">
            <div class="container">
                <div class="tab-panels">
                    <ul class="tabs">
                        <li class="item active" rel="panel-1">
                            <xsl:value-of select="DetailText" disable-output-escaping="yes"></xsl:value-of>
                        </li>
                        <li class="item" rel="panel-2">Đánh giá sản phẩm</li>
                    </ul>
                    <div class="panel active" id="panel-1">
                        <div class="full-content">
                            <xsl:value-of select="FullContent" disable-output-escaping="yes"></xsl:value-of>
                        </div>
                        <!-- <div class="view-more"><span>Xem thêm</span><em class="material-icons">expand_more</em></div> -->
                    </div>
                    <div class="panel" id="panel-2">
                        <div class="full-content"></div>
                    </div>
                </div>
            </div>
        </section>
        <section class="kv-section pro-detail-3">
            <div class="container">
                <div class="kv-title">
                    <p>
                        <xsl:value-of select="OtherProText" disable-output-escaping="yes"></xsl:value-of>
                    </p>
                </div>
                <div class="other-slide">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select="/ProductDetail/ProductOther"></xsl:apply-templates>
                        </div>
                    </div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
            </div>
        </section>
        <section class="kv-section pro-detail-3" id="viewed">
            <div class="container">
                <div class="kv-title">
                    <p>
                        <xsl:value-of select="RVPText" disable-output-escaping="yes"></xsl:value-of>
                    </p>
                </div>
                <div class="lastview-slide">
                    <div class="swiper-container">
                        <div class="swiper-wrapper">
                            <xsl:apply-templates select="/ProductDetail/ProductViewed"></xsl:apply-templates>
                        </div>
                    </div>
                    <div class="swiper-button-next"></div>
                    <div class="swiper-button-prev"></div>
                </div>
            </div>
        </section>
    </xsl:template>
    <xsl:template match="ProductProperties">
        <xsl:if test="FieldId=4">
            <div class="product-size">
                <strong>
                    <xsl:value-of select="Title"></xsl:value-of>
                </strong>
                <select>
                    <xsl:attribute name="name">
                        <xsl:text>product_attribute_</xsl:text>
                        <xsl:value-of select="/ProductDetail/ProductId"></xsl:value-of>
                        <xsl:text>_</xsl:text>
                        <xsl:value-of select="FieldId"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:apply-templates select="Options"></xsl:apply-templates>
                </select>
                <a href="/cham-soc-khach-hang/huong-dan-chon-size/so-mi-tay-ngan-kieu-body" class="viewsize">Hướng dẫn chọn size</a>
            </div>
        </xsl:if>
    </xsl:template>
    <xsl:template match="Options">
        <option>
            <xsl:attribute name="value">
                <xsl:value-of select="OptionId"></xsl:value-of>
            </xsl:attribute>
            <xsl:value-of select="Title"></xsl:value-of>
        </option>
    </xsl:template>
    <xsl:template match="ProductImages" mode="BigImages">
        <div class="swiper-slide fancybox">
            <div class="item">
                <div class="img">
                    <a>
                        <xsl:attribute name="data-fancybox">
                            <xsl:text disable-output-escaping="yes">Gallery</xsl:text>
                            <xsl:value-of select="NewsId" disable-output-escaping="yes"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="href">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <img>
                            <xsl:attribute name="src">
                                <xsl:value-of select="ThumbnailUrl" disable-output-escaping="yes"></xsl:value-of>
                            </xsl:attribute>
                            <xsl:attribute name="alt">
                                <xsl:value-of select="Title"></xsl:value-of>
                            </xsl:attribute>
                        </img>
                    </a>
                </div>
            </div>
        </div>
        <div style="display: none;">
            <xsl:apply-templates select="NewsImages" mode="Top"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="ProductImages" mode="SmallImages">
        <div class="swiper-slide">
            <div class="item">
                <div class="img">
                    <a>
                        <xsl:attribute name="data-fancybox">
                            <xsl:text disable-output-escaping="yes">Gallery</xsl:text>
                            <xsl:value-of select="NewsId" disable-output-escaping="yes"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="href">
                            <xsl:value-of select="ImageUrl"></xsl:value-of>
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
            </div>
        </div>
        <div style="display: none;">
            <xsl:apply-templates select="NewsImages" mode="Thumb"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="ProductOther">
        <div class="swiper-slide">
            <div class="item-pro">
                <div class="img">
                    <a href="chi-tiet-san-pham.html">
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="target">
                            <xsl:value-of select="Target"></xsl:value-of>
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
                <div class="content">
                    <a class="title" href="chi-tiet-san-pham.html">
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="target">
                            <xsl:value-of select="Target"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of select="Title"></xsl:value-of>
                    </a>
                    <div class="desc">
                        <div class="price">
                            <p>
                                <xsl:value-of select="Price"></xsl:value-of>
                            </p>
                            <xsl:if test="OldPrice != ''">
                                <span>
                                    <xsl:value-of select="OldPrice"></xsl:value-of>
                                </span>
                            </xsl:if>
                        </div>
                        <div class="icon">
                            <a onclick="AjaxCart.addproducttocart_catalog(this);return false;">
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
    <xsl:template match="ProductViewed">
        <div class="swiper-slide">
            <div class="item-pro">
                <div class="img">
                    <a href="chi-tiet-san-pham.html">
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="target">
                            <xsl:value-of select="Target"></xsl:value-of>
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
                <div class="content">
                    <a class="title" href="chi-tiet-san-pham.html">
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="target">
                            <xsl:value-of select="Target"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of select="Title"></xsl:value-of>
                    </a>
                    <div class="desc">
                        <div class="price">
                            <p>
                                <xsl:value-of select="Price"></xsl:value-of>
                            </p>
                            <xsl:if test="OldPrice != ''">
                                <span>
                                    <xsl:value-of select="OldPrice"></xsl:value-of>
                                </span>
                            </xsl:if>
                        </div>
                        <div class="icon">
                            <a onclick="AjaxCart.addproducttocart_catalog(this);return false;">
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
    <xsl:template match="ProductRelated">
        <div class="item">
            <div class="product-col">
                <xsl:choose>
                    <xsl:when test="floor(ShowOption div 1) mod 2 = 1">
                        <div class="promotion op1">
                            <span>
                                <xsl:value-of select="/ProductDetail/NewText"></xsl:value-of>
                            </span>
                        </div>
                    </xsl:when>
                    <xsl:when test="floor(ShowOption div 2) mod 2 = 1">
                        <span class="promotion op2">
                            <xsl:value-of select="/ProductDetail/SaleText"></xsl:value-of>
                        </span>
                    </xsl:when>
                </xsl:choose>
                <figure>
                    <a class="product-img">
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="target">
                            <xsl:value-of select="Target"></xsl:value-of>
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
                    <figcaption>
                        <div class="product-name">
                            <a class="btn-detail">
                                <xsl:attribute name="href">
                                    <xsl:value-of select="Url"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:attribute name="title">
                                    <xsl:value-of select="Title"></xsl:value-of>
                                </xsl:attribute>
                                <xsl:value-of select="Code"></xsl:value-of>
                            </a>
                        </div>
                        <div class="product-price">
                            <xsl:if test="OldPrice != ''">
                                <div class="old">
                                    <xsl:value-of select="OldPrice"></xsl:value-of>
                                </div>
                            </xsl:if>
                            <xsl:if test="Price != ''">
                                <div class="new">
                                    <xsl:value-of select="Price"></xsl:value-of>
                                </div>
                            </xsl:if>
                        </div>
                        <a class="buy" onclick="AjaxCart.addproducttocart_catalog(this);return false;">
                            <xsl:attribute name="data-productid">
                                <xsl:value-of select="ProductId"></xsl:value-of>
                            </xsl:attribute>
                            <span>
                                <xsl:value-of select="/ProductDetail/BuyText"></xsl:value-of>
                            </span>
                            <i class="fa fa-shopping-bag" aria-hidden="true"></i>
                        </a>
                    </figcaption>
                </figure>
            </div>
        </div>
    </xsl:template>
    <xsl:template match="NewsImages" mode="Top">
        <xsl:if test="position()>1">
            <a>
                <xsl:attribute name="data-fancybox">
                    <xsl:text disable-output-escaping="yes">Gallery</xsl:text>
                    <xsl:value-of select="../NewsId" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="href">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
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
        </xsl:if>
    </xsl:template>
    <xsl:template match="NewsImages" mode="Thumb">
        <xsl:if test="position()>1">
            <a>
                <xsl:attribute name="data-fancybox">
                    <xsl:text disable-output-escaping="yes">Gallery</xsl:text>
                    <xsl:value-of select="../NewsId" disable-output-escaping="yes"></xsl:value-of>
                </xsl:attribute>
                <xsl:attribute name="href">
                    <xsl:value-of select="ImageUrl"></xsl:value-of>
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
        </xsl:if>
    </xsl:template>
</xsl:stylesheet>