<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:v3="urn:hl7-org:v3"
    xmlns:xhtml="http://www.w3.org/1999/xhtml"
    exclude-result-prefixes="xs v3 xhtml"
    version="2.0">
    
    <xsl:template match="/">
        <xsl:apply-templates select="node()"/>
    </xsl:template>

    <xsl:template match="node()|@*" priority="0">
        <xsl:copy>
            <xsl:apply-templates select="node()|@*"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="xhtml:div" priority="1">
        <text xmlns="urn:hl7-org:v3">
            <xsl:apply-templates select="@id|@lang" mode="narrative"/>
            <xsl:apply-templates select="@style" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </text>
    </xsl:template>

    <xsl:template match="@id" mode="narrative">
        <xsl:attribute name="ID" select="."/>
    </xsl:template>

    <xsl:template match="@lang" mode="narrative">
        <xsl:attribute name="language" select="."/>
    </xsl:template>
    
    <xsl:template match="@*" mode="narrative">
        <xsl:attribute name="{local-name()}" select="."/>
    </xsl:template>

    <xsl:template match="@style" mode="narrative">
        <xsl:choose>
            <xsl:when test=". = 'font-weight: bold'">
                <xsl:attribute name="styleCode">bold</xsl:attribute>
            </xsl:when>
            <xsl:when test=". = 'text-decoration: underline'">
                <xsl:attribute name="styleCode">underline</xsl:attribute>
            </xsl:when>
            <xsl:when test=". = 'font-style: italic'">
                <xsl:attribute name="styleCode">italics</xsl:attribute>
            </xsl:when>
            <xsl:when test=". = 'font-weight: small-caps'">
                <xsl:attribute name="styleCode">emphasis</xsl:attribute>
            </xsl:when>
            <xsl:when test=". = 'border-left: 1px'">
                <xsl:attribute name="styleCode">lrule</xsl:attribute>
            </xsl:when>
            <xsl:when test=". = 'border-right: 1px'">
                <xsl:attribute name="styleCode">rrule</xsl:attribute>
            </xsl:when>
            <xsl:when test=". = 'border-top: 1px'">
                <xsl:attribute name="styleCode">toprule</xsl:attribute>
            </xsl:when>
            <xsl:when test=". = 'border-bottom: 1px'">
                <xsl:attribute name="styleCode">botrule</xsl:attribute>
            </xsl:when>
            <xsl:when test=". = 'list-style-type: decimal'">
                <xsl:attribute name="styleCode">Arabic</xsl:attribute>
            </xsl:when>
            <xsl:when test=". = 'list-style-type: decimal'">
                <xsl:attribute name="styleCode">LittleRoman</xsl:attribute>
            </xsl:when>
            <xsl:when test=". = 'list-style-type: upper-roman'">
                <xsl:attribute name="styleCode">BigRoman</xsl:attribute>
            </xsl:when>
            <xsl:when test=". = 'list-style-type: lower-alpha'">
                <xsl:attribute name="styleCode">LittleAlpha</xsl:attribute>
            </xsl:when>
            <xsl:when test=". = 'list-style-type: lower-alpha'">
                <xsl:attribute name="styleCode">BigAlpha</xsl:attribute>
            </xsl:when>
            <xsl:when test=". = 'list-style-type: disc'">
                <xsl:attribute name="styleCode">Disc</xsl:attribute>
            </xsl:when>
            <xsl:when test=". = 'list-style-type: circle'">
                <xsl:attribute name="styleCode">Circle</xsl:attribute>
            </xsl:when>
            <xsl:when test=". = 'list-style-type: circle'">
                <xsl:attribute name="styleCode">Square</xsl:attribute>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="node()" mode="narrative">
        <xsl:copy>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="xhtml:br|xhtml:sub|xhtml:sup" mode="narrative">
        <xsl:element namespace="urn:hl7-org:v3" name="{local-name()}">
            <xsl:apply-templates select="@id|@lang" mode="narrative"/>
            <xsl:apply-templates select="@style" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="xhtml:h2" mode="narrative">
        <caption xmlns="urn:hl7-org:v3">
            <xsl:apply-templates select="@id|@lang" mode="narrative"/>
            <xsl:apply-templates select="@style" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </caption>
    </xsl:template>

    <xsl:template match="xhtml:col" mode="narrative">
        <col xmlns="urn:hl7-org:v3">
            <xsl:apply-templates select="@id|@lang|@span|@width|@align|@char|@charoff|@valign" mode="narrative"/>
            <xsl:apply-templates select="@style" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </col>
    </xsl:template>

    <xsl:template match="xhtml:colgroup" mode="narrative">
        <colgroup xmlns="urn:hl7-org:v3">
            <xsl:apply-templates select="@id|@lang|@span|@width|@align|@char|@charoff|@valign" mode="narrative"/>
            <xsl:apply-templates select="@style" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </colgroup>
    </xsl:template>

    <xsl:template match="xhtml:span" mode="narrative">
        <content xmlns="urn:hl7-org:v3">
            <xsl:apply-templates select="@id|@lang" mode="narrative"/>
            <xsl:apply-templates select="@style" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </content>
    </xsl:template>
    
    <xsl:template match="xhtml:tfoot" mode="narrative">
        <footnote xmlns="urn:hl7-org:v3">
            <xsl:apply-templates select="@id|@lang|@align|@char|@charoff|@valign" mode="narrative"/>
            <xsl:apply-templates select="@style" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </footnote>
    </xsl:template>
    
    <xsl:template match="xhtml:li" mode="narrative">
        <item xmlns="urn:hl7-org:v3">
            <xsl:apply-templates select="@id|@lang" mode="narrative"/>
            <xsl:apply-templates select="@style" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </item>
    </xsl:template>

    <xsl:template match="xhtml:a" mode="narrative">
        <xsl:if test="exists(@href)">
            <linkHtml xmlns="urn:hl7-org:v3">
                <xsl:apply-templates select="@id|@lang|@name|@href|@rel|@rev|@title" mode="narrative"/>
                <xsl:apply-templates select="@style" mode="narrative"/>
                <xsl:apply-templates select="node()" mode="narrative"/>
            </linkHtml>
        </xsl:if>
    </xsl:template>
    
    <xsl:template match="xhtml:ol|xhtml:ul" mode="narrative">
        <list xmlns="urn:hl7-org:v3">
            <xsl:apply-templates select="@id|@lang" mode="narrative"/>
            <xsl:apply-templates select="@style" mode="narrative"/>
            <xsl:choose>
                <xsl:when test="local-name() = 'ol'">
                    <xsl:attribute name="listType">ordered</xsl:attribute>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:attribute name="listType">unordered</xsl:attribute>
                </xsl:otherwise>
            </xsl:choose>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </list>
    </xsl:template>
    
    <xsl:template match="xhtml:p" mode="narrative">
        <paragraph xmlns="urn:hl7-org:v3">
            <xsl:apply-templates select="@id|@lang" mode="narrative"/>
            <xsl:apply-templates select="@style" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </paragraph>
    </xsl:template>
    
    <xsl:template match="xhtml:img" mode="narrative">
        <renderMultiMedia xmlns="urn:hl7-org:v3">
            <xsl:attribute name="referencedObject" select="@src"/>
            <xsl:apply-templates select="@id|@lang" mode="narrative"/>
            <xsl:apply-templates select="@style" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </renderMultiMedia>
    </xsl:template>
    
    <xsl:template match="xhtml:table" mode="narrative">
        <table xmlns="urn:hl7-org:v3">
            <xsl:apply-templates select="@id|@lang|@summary|@width|@border|@frame|@rules|@cellspacing|@cellpadding" mode="narrative"/>
            <xsl:apply-templates select="@style" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </table>
    </xsl:template>

    <xsl:template match="xhtml:tbody" mode="narrative">
        <tbody xmlns="urn:hl7-org:v3">
            <xsl:apply-templates select="@id|@lang|@align|@char|@charoff|@valign" mode="narrative"/>
            <xsl:apply-templates select="@style" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </tbody>
    </xsl:template>
    
    <xsl:template match="xhtml:td" mode="narrative">
        <td xmlns="urn:hl7-org:v3">
            <xsl:apply-templates select="@id|@lang|@abbr|@axis|@headers|@scope|@rowspan|@colspan|@align|@char|@charoff|@valign" mode="narrative"/>
            <xsl:apply-templates select="@style" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </td>
    </xsl:template>
    
    <xsl:template match="xhtml:tfoot" mode="narrative">
        <tfoot xmlns="urn:hl7-org:v3">
            <xsl:apply-templates select="@id|@lang|@align|@char|@charoff|@valign" mode="narrative"/>
            <xsl:apply-templates select="@style" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </tfoot>
    </xsl:template>
    
    <xsl:template match="xhtml:th" mode="narrative">
        <th xmlns="urn:hl7-org:v3">
            <xsl:apply-templates select="@id|@lang|@align|@char|@charoff|@valign" mode="narrative"/>
            <xsl:apply-templates select="@style" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </th>
    </xsl:template>
    
    <xsl:template match="xhtml:tr" mode="narrative">
        <tr xmlns="urn:hl7-org:v3">
            <xsl:apply-templates select="@id|@lang|@align|@char|@charoff|@valign"/>
            <xsl:apply-templates select="@style"/>
            <xsl:apply-templates select="node()"/>
        </tr>
    </xsl:template>
    
</xsl:stylesheet>