<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:msxsl="urn:schemas-microsoft-com:xslt" exclude-result-prefixes="msxsl">
    <xsl:output method="html" indent="yes" />
    <xsl:template match="/NewsList">
        <div class="kv-title">
            <p>
                <xsl:value-of select="ModuleTitle" disable-output-escaping="yes" />
            </p>
        </div>
        <table>
            <thead>
                <tr>
                    <th>STT</th>
                    <th>
                        <xsl:value-of select="VTUTText" disable-output-escaping="yes"></xsl:value-of>
                    </th>
                    <th>
                        <xsl:value-of select="KVText" disable-output-escaping="yes"></xsl:value-of>
                    </th>
                    <th>
                        <xsl:value-of select="SLText" disable-output-escaping="yes"></xsl:value-of>
                    </th>
                    <th>
                        <xsl:value-of select="HNHSText" disable-output-escaping="yes"></xsl:value-of>
                    </th>
                </tr>
            </thead>
            <tbody>
                <xsl:apply-templates select="News" mode="DeskTop" />
            </tbody>
        </table>
        <div class="hr-v-mobile row">
            <xsl:apply-templates select="News" mode="Mobile"></xsl:apply-templates>
        </div>
    </xsl:template>
    <xsl:template match="News" mode="DeskTop">
        <tr>
            <td>
                <xsl:if test="position()  &lt; 10">
                    <xsl:text>0</xsl:text>
                </xsl:if>
                <xsl:value-of select="position()" />
            </td>
            <td>
                <a>
                    <xsl:attribute name="target">
                        <xsl:value-of select="Target" />
                    </xsl:attribute>
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url" />
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title" />
                    </xsl:attribute>
                    <xsl:value-of select="Title" />
                </a>
            </td>
            <td>
                <xsl:value-of select="SubTitle" />
            </td>
            <td>
                <xsl:value-of select="BriefContent" disable-output-escaping="yes" />
            </td>
            <td>
                <xsl:value-of select="EndDate" disable-output-escaping="yes" />
            </td>
        </tr>
    </xsl:template>
    <xsl:template match="News" mode="Mobile">
        <div class="col-md-6">
            <div class="item">
                <h1>
                    <a>
                        <xsl:attribute name="href">
                            <xsl:value-of select="Url"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:attribute name="title">
                            <xsl:value-of select="Title"></xsl:value-of>
                        </xsl:attribute>
                        <xsl:value-of select="Title" disable-output-escaping="yes"></xsl:value-of>
                    </a>
                </h1>
                <p>
                    <em class="mdi mdi-account-group"></em>
                    <span>
                        <xsl:text disable-output-escaping="yes">Số lượng: </xsl:text>
                        <xsl:value-of select="BriefContent" disable-output-escaping="yes"></xsl:value-of>
                    </span>
                </p>
                <p>
                    <em class="mdi mdi-map-marker"></em>
                    <span>
                        <xsl:text disable-output-escaping="yes">Khu vực: </xsl:text>
                        <xsl:value-of select="SubTitle" disable-output-escaping="yes"></xsl:value-of>
                    </span>
                </p>
                <p>
                    <em class="mdi mdi-clock-start"></em>
                    <span>
                        <xsl:text disable-output-escaping="yes">Ngày bắt đầu: </xsl:text>
                        <xsl:value-of select="CreatedDate" disable-output-escaping="yes"></xsl:value-of>
                    </span>
                </p>
                <p>
                    <em class="mdi mdi-clock-end"></em>
                    <span>
                        <xsl:text disable-output-escaping="yes">Hạn nộp hồ sơ: </xsl:text>
                        <xsl:value-of select="EndDate" disable-output-escaping="yes"></xsl:value-of>
                    </span>
                </p>
                <a class="btn-view">
                    <xsl:attribute name="href">
                        <xsl:value-of select="Url"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:attribute name="title">
                        <xsl:value-of select="Title"></xsl:value-of>
                    </xsl:attribute>
                    <xsl:text disable-output-escaping="yes">Xem chi tiết</xsl:text>
                </a>
            </div>
        </div>
    </xsl:template>
</xsl:stylesheet>