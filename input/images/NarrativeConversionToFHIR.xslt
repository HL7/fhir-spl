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
    
    <xsl:template match="v3:section" priority="1">
        <v3:section>
            <xsl:apply-templates select="v3:id"/>
            <xsl:apply-templates select="v3:code"/>
            <xsl:apply-templates select="v3:title"/>
            <xsl:if test="v3:text|v3:excerpt/v3:highlight/v3:text">
                <div xmlns="http://www.w3.org/1999/xhtml">
                    <xsl:apply-templates select="v3:text" mode="narrative"/>
                    <xsl:apply-templates select="v3:excerpt/v3:highlight/v3:text" mode="narrative"/>
                </div>
            </xsl:if>
            <xsl:apply-templates select="v3:effectiveTime"/>
            <xsl:apply-templates select="v3:subject"/>
           <xsl:apply-templates select="v3:component"/>
        </v3:section>
    </xsl:template>
    
    <xsl:template match="v3:section/v3:text" mode="narrative">
        <div xmlns="http://www.w3.org/1999/xhtml" style="narrative">
            <xsl:if test="../@ID">
                <a xmlns="http://www.w3.org/1999/xhtml">
                    <xsl:attribute name="name"><xsl:value-of select="../@ID"/></xsl:attribute>
                </a>
            </xsl:if>
            <xsl:apply-templates select="@ID|@language" mode="narrative"/>
            <xsl:apply-templates select="@styleCode" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </div>
    </xsl:template>

    <xsl:template match="v3:excerpt/v3:highlight/v3:text" mode="narrative">
        <div xmlns="http://www.w3.org/1999/xhtml" style="highlight">
            <xsl:if test="../@ID">
                <a xmlns="http://www.w3.org/1999/xhtml">
                    <xsl:attribute name="name"><xsl:value-of select="../@ID"/></xsl:attribute>
                </a>
            </xsl:if>
            <xsl:apply-templates select="@ID|@language" mode="narrative"/>
            <xsl:apply-templates select="@styleCode" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </div>
    </xsl:template>
    
    <xsl:template match="@ID" mode="narrative">
        <xsl:attribute name="id" select="."/>
    </xsl:template>

    <xsl:template match="@language" mode="narrative">
        <xsl:attribute name="lang" select="."/>
    </xsl:template>
    
    <xsl:template match="@*" mode="narrative">
        <xsl:attribute name="{local-name()}" select="."/>
    </xsl:template>

    <xsl:template match="@styleCode" mode="narrative">
        <xsl:choose>
            <xsl:when test=". = 'bold'">
                <xsl:attribute name="style">font-weight: bold</xsl:attribute>
            </xsl:when>
            <xsl:when test=". = 'underline'">
                <xsl:attribute name="style">text-decoration: underline</xsl:attribute>
            </xsl:when>
            <xsl:when test=". = 'italics'">
                <xsl:attribute name="style">font-style: italic</xsl:attribute>
            </xsl:when>
            <xsl:when test=". = 'emphasis'">
                <xsl:attribute name="style">font-weight: small-caps</xsl:attribute>
            </xsl:when>
            <xsl:when test=". = 'Lrule'">
                <xsl:attribute name="style">border-left: 1px</xsl:attribute>
            </xsl:when>
            <xsl:when test=". = 'Frule'">
                <xsl:attribute name="style">border-right: 1px</xsl:attribute>
            </xsl:when>
            <xsl:when test=". = 'Toprule'">
                <xsl:attribute name="style">border-top: 1px</xsl:attribute>
            </xsl:when>
            <xsl:when test=". = 'Botrule'">
                <xsl:attribute name="style">border-bottom: 1px</xsl:attribute>
            </xsl:when>
            <xsl:when test=". = 'Arabic'">
                <xsl:attribute name="style">list-style-type: decimal</xsl:attribute>
            </xsl:when>
            <xsl:when test=". = 'LittleRoman'">
                <xsl:attribute name="style">list-style-type: lower-roman</xsl:attribute>
            </xsl:when>
            <xsl:when test=". = 'BigRoman'">
                <xsl:attribute name="style">list-style-type: upper-roman</xsl:attribute>
            </xsl:when>
            <xsl:when test=". = 'LittleAlpha'">
                <xsl:attribute name="style">list-style-type: lower-alpha</xsl:attribute>
            </xsl:when>
            <xsl:when test=". = 'BigAlpha'">
                <xsl:attribute name="style">list-style-type: upper-alpha</xsl:attribute>
            </xsl:when>
            <xsl:when test=". = 'Disc'">
                <xsl:attribute name="style">list-style-type: disc</xsl:attribute>
            </xsl:when>
            <xsl:when test=". = 'Circle'">
                <xsl:attribute name="style">list-style-type: circle</xsl:attribute>
            </xsl:when>
            <xsl:when test=". = 'Square'">
                <xsl:attribute name="style">list-style-type: square</xsl:attribute>
            </xsl:when>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="node()" mode="narrative">
        <xsl:copy>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </xsl:copy>
    </xsl:template>
    
    <xsl:template match="v3:br|v3:sub|v3:sup" mode="narrative">
        <xsl:element namespace="http://www.w3.org/1999/xhtml" name="{local-name()}">
            <xsl:apply-templates select="@ID|@language" mode="narrative"/>
            <xsl:apply-templates select="@styleCode" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </xsl:element>
    </xsl:template>
    
    <xsl:template match="v3:caption" mode="narrative">
        <h2 xmlns="http://www.w3.org/1999/xhtml">
            <xsl:apply-templates select="@ID|@language" mode="narrative"/>
            <xsl:apply-templates select="@styleCode" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </h2>
    </xsl:template>

    <xsl:template match="v3:col" mode="narrative">
        <col xmlns="http://www.w3.org/1999/xhtml">
            <xsl:apply-templates select="@ID|@language|@span|@width|@align|@char|@charoff|@valign" mode="narrative"/>
            <xsl:apply-templates select="@styleCode" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </col>
    </xsl:template>

    <xsl:template match="v3:colgroup" mode="narrative">
        <colgroup xmlns="http://www.w3.org/1999/xhtml">
            <xsl:apply-templates select="@ID|@language|@span|@width|@align|@char|@charoff|@valign" mode="narrative"/>
            <xsl:apply-templates select="@styleCode" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </colgroup>
    </xsl:template>

    <xsl:template match="v3:content" mode="narrative">
        <span xmlns="http://www.w3.org/1999/xhtml">
            <xsl:apply-templates select="@ID|@language" mode="narrative"/>
            <xsl:apply-templates select="@styleCode" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </span>
    </xsl:template>
    
    <xsl:template match="v3:footnote" mode="narrative">
        <tfoot xmlns="http://www.w3.org/1999/xhtml">
            <xsl:apply-templates select="@ID|@language|@align|@char|@charoff|@valign" mode="narrative"/>
            <xsl:apply-templates select="@styleCode" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </tfoot>
    </xsl:template>
    
    <xsl:template match="v3:item" mode="narrative">
        <li xmlns="http://www.w3.org/1999/xhtml">
            <xsl:apply-templates select="@ID|@language" mode="narrative"/>
            <xsl:apply-templates select="@styleCode" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </li>
    </xsl:template>

    <xsl:template match="v3:linkHtml" mode="narrative">
        <a xmlns="http://www.w3.org/1999/xhtml">
            <xsl:apply-templates select="@ID|@language|@name|@href|@rel|@rev|@title" mode="narrative"/>
            <xsl:apply-templates select="@styleCode" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </a>
    </xsl:template>
    
    <xsl:template match="v3:list" mode="narrative">
        <xsl:choose>
            <xsl:when test="@listType = 'ordered'">
                <ol xmlns="http://www.w3.org/1999/xhtml">
                    <xsl:apply-templates select="@ID|@language" mode="narrative"/>
                    <xsl:apply-templates select="@styleCode" mode="narrative"/>
                    <xsl:apply-templates select="node()" mode="narrative"/>
                </ol>
            </xsl:when>
            <xsl:otherwise>
                <ul xmlns="http://www.w3.org/1999/xhtml">
                    <xsl:apply-templates select="@ID|@language" mode="narrative"/>
                    <xsl:apply-templates select="@styleCode" mode="narrative"/>
                    <xsl:apply-templates select="node()" mode="narrative"/>
                </ul>
            </xsl:otherwise>
        </xsl:choose>
    </xsl:template>
    
    <xsl:template match="v3:paragraph" mode="narrative">
        <p xmlns="http://www.w3.org/1999/xhtml">
            <xsl:apply-templates select="@ID|@language" mode="narrative"/>
            <xsl:apply-templates select="@styleCode" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </p>
    </xsl:template>
    
    <xsl:template match="v3:renderMultiMedia" mode="narrative">
        <xsl:variable name="vReferencedObject">
            <xsl:value-of select="@referencedObject"/>
        </xsl:variable>
        <img xmlns="http://www.w3.org/1999/xhtml">
            <xsl:attribute name="src" select="//v3:component/v3:observationMedia[@ID=$vReferencedObject]/v3:value/v3:reference/@value"/>
            <xsl:attribute name="alt" select="//v3:component/v3:observationMedia[@ID=$vReferencedObject]/v3:text/text()"/>
            <xsl:apply-templates select="@language" mode="narrative"/>
            <xsl:apply-templates select="@styleCode" mode="narrative"/>
        </img>
        <xsl:apply-templates select="node()" mode="narrative"/>
    </xsl:template>
    
    <xsl:template match="v3:table" mode="narrative">
        <table xmlns="http://www.w3.org/1999/xhtml">
            <xsl:apply-templates select="@ID|@language|@summary|@width|@border|@frame|@rules|@cellspacing|@cellpadding" mode="narrative"/>
            <xsl:apply-templates select="@styleCode" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </table>
    </xsl:template>

    <xsl:template match="v3:thead" mode="narrative">
        <thead xmlns="http://www.w3.org/1999/xhtml">
            <xsl:apply-templates select="@ID|@language|@align|@char|@charoff|@valign" mode="narrative"/>
            <xsl:apply-templates select="@styleCode" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </thead>
    </xsl:template>
    
    <xsl:template match="v3:tbody" mode="narrative">
        <tbody xmlns="http://www.w3.org/1999/xhtml">
            <xsl:apply-templates select="@ID|@language|@align|@char|@charoff|@valign" mode="narrative"/>
            <xsl:apply-templates select="@styleCode" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </tbody>
    </xsl:template>
    
    <xsl:template match="v3:td" mode="narrative">
        <td xmlns="http://www.w3.org/1999/xhtml">
            <xsl:apply-templates select="@ID|@language|@abbr|@axis|@headers|@scope|@rowspan|@colspan|@align|@char|@charoff|@valign" mode="narrative"/>
            <xsl:apply-templates select="@styleCode" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </td>
    </xsl:template>
    
    <xsl:template match="v3:tfoot" mode="narrative">
        <tfoot xmlns="http://www.w3.org/1999/xhtml">
            <xsl:apply-templates select="@ID|@language|@align|@char|@charoff|@valign" mode="narrative"/>
            <xsl:apply-templates select="@styleCode" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </tfoot>
    </xsl:template>
    
    <xsl:template match="v3:th" mode="narrative">
        <th xmlns="http://www.w3.org/1999/xhtml">
            <xsl:apply-templates select="@ID|@language|@align|@char|@charoff|@valign" mode="narrative"/>
            <xsl:apply-templates select="@styleCode" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </th>
    </xsl:template>
    
    <xsl:template match="v3:tr" mode="narrative">
        <tr xmlns="http://www.w3.org/1999/xhtml">
            <xsl:apply-templates select="@ID|@language|@align|@char|@charoff|@valign"/>
            <xsl:apply-templates select="@styleCode" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </tr>
    </xsl:template>
    
</xsl:stylesheet>