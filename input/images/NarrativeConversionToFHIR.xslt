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

    <xsl:template match="v3:title" priority="1">
        <v3:title><xsl:value-of select="."/></v3:title>
    </xsl:template>

    <xsl:template match="v3:section" priority="1">
        <v3:section>
            <xsl:if test="@ID">
                <xsl:attribute name="ID" select="@ID"/>
            </xsl:if>
            <xsl:apply-templates select="v3:id"/>
            <xsl:apply-templates select="v3:code"/>
            <xsl:apply-templates select="v3:title"/>
            <xsl:if test="@ID|v3:text|v3:excerpt/v3:highlight/v3:text">
                <div xmlns="http://www.w3.org/1999/xhtml">
									<xsl:if test="@ID">
                    <div>
                        <xsl:attribute name="id" select="@ID"/>
                        <xsl:value-of select="v3:title"/>
												SECTION LINK
                    </div>
									</xsl:if>
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
            <xsl:apply-templates select="@ID|@language" mode="narrative"/>
            <xsl:apply-templates select="@styleCode" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </div>
    </xsl:template>

    <xsl:template match="v3:excerpt/v3:highlight/v3:text" mode="narrative">
        <div xmlns="http://www.w3.org/1999/xhtml" style="highlight">
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
    
    <xsl:template match="@styleCode" mode="narrative">
        <xsl:attribute name="class" select="."/>
    </xsl:template>

    <xsl:template match="@*" mode="narrative">
        <xsl:attribute name="{local-name()}" select="."/>
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
    
    <xsl:template match="v3:renderMultiMedia/v3:caption" mode="narrative">
        <p xmlns="http://www.w3.org/1999/xhtml" class="multimediaCaption">
            <xsl:apply-templates select="@ID|@language" mode="narrative"/>
            <xsl:apply-templates select="@styleCode" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </p>
    </xsl:template>
    
    <xsl:template match="v3:caption" mode="narrative">
        <caption xmlns="http://www.w3.org/1999/xhtml">
            <xsl:apply-templates select="@ID|@language" mode="narrative"/>
            <xsl:apply-templates select="@styleCode" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </caption>
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
        <xsl:variable name="mark">
            <xsl:call-template name="footnoteMark"/>
        </xsl:variable>
        <xsl:variable name="globalnumber" select="count(preceding::v3:footnote)+1"/>
        <a xmlns="http://www.w3.org/1999/xhtml" name="footnote-reference-{$globalnumber}" href="#footnote-{$globalnumber}" class="Sup">
            <xsl:value-of select="$mark"/>
        </a>
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
    
    <!-- LIST MODEL -->
    <!-- listType='unordered' is default, if any item has a caption,
			 all should have a caption -->
    <xsl:template match="v3:list[not(v3:item/v3:caption)]" mode="narrative">
        <xsl:apply-templates select="v3:caption" mode="narrative"/>
        <ul xmlns="http://www.w3.org/1999/xhtml">
            <xsl:apply-templates select="@*|node()[not(self::v3:caption)]" mode="narrative"/>
        </ul>
    </xsl:template>
    <xsl:template match="v3:list[@listType='ordered' and not(v3:item/v3:caption)]" priority="1" mode="narrative">
        <xsl:apply-templates select="v3:caption" mode="narrative"/>
        <ol xmlns="http://www.w3.org/1999/xhtml">
            <xsl:apply-templates select="@*|node()[not(self::v3:caption)]" mode="narrative"/>
        </ol>
    </xsl:template>
    <xsl:template match="v3:list/v3:item[not(parent::v3:list/v3:item/v3:caption)]" mode="narrative">
        <li xmlns="http://www.w3.org/1999/xhtml">
            <xsl:apply-templates select="@*" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </li> 
    </xsl:template>
    <!-- lists with custom captions -->
    <xsl:template match="v3:list[v3:item/v3:caption]" mode="narrative">
        <xsl:apply-templates select="v3:caption" mode="narrative"/>
        <dl xmlns="http://www.w3.org/1999/xhtml">
            <xsl:apply-templates select="@*|node()[not(self::v3:caption)]" mode="narrative"/>
        </dl>
    </xsl:template>
    <xsl:template match="v3:list/v3:item[parent::v3:list/v3:item/v3:caption]" mode="narrative">
        <xsl:apply-templates select="v3:caption" mode="narrative"/>
        <dd xmlns="http://www.w3.org/1999/xhtml">
            <xsl:apply-templates select="@*" mode="narrative"/>
            <xsl:apply-templates select="node()[not(self::v3:caption)]" mode="narrative"/>
        </dd>
    </xsl:template>
    <xsl:template match="v3:list/v3:item/v3:caption" mode="narrative">
        <dt xmlns="http://www.w3.org/1999/xhtml">
            <xsl:apply-templates select="@*" mode="narrative"/>
            <xsl:apply-templates mode="narrative" select="node()"/>
        </dt>
    </xsl:template>
    <xsl:template match="v3:list/v3:caption" mode="narrative">
        <p xmlns="http://www.w3.org/1999/xhtml">
            <xsl:apply-templates select="@styleCode" mode="narrative"/>
            <xsl:apply-templates select="@*[not(local-name(.)='styleCode')]" mode="narrative"/>
            <xsl:apply-templates mode="narrative" select="node()"/>
        </p>
    </xsl:template>
   
    <xsl:template match="v3:paragraph" mode="narrative">
        <p xmlns="http://www.w3.org/1999/xhtml">
            <xsl:apply-templates select="@ID|@language" mode="narrative"/>
            <xsl:apply-templates select="@styleCode" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </p>
    </xsl:template>
    
    <xsl:template match="v3:span" mode="narrative">
        <span xmlns="http://www.w3.org/1999/xhtml">
            <xsl:apply-templates select="@ID|@language" mode="narrative"/>
            <xsl:apply-templates select="@styleCode" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </span>
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
        <xsl:if test="not(preceding-sibling::v3:tfoot) and not(preceding-sibling::v3:tbody)">
            <xsl:call-template name="flushTableFootnotes"/>
        </xsl:if>
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
    
    <xsl:template match="v3:th" mode="narrative">
        <th xmlns="http://www.w3.org/1999/xhtml">
            <xsl:apply-templates select="@ID|@language|@abbr|@axis|@headers|@scope|@rowspan|@colspan|@align|@char|@charoff|@valign" mode="narrative"/>
            <xsl:apply-templates select="@styleCode" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </th>
    </xsl:template>
    
    <xsl:template match="v3:tr" mode="narrative">
        <tr xmlns="http://www.w3.org/1999/xhtml">
            <xsl:apply-templates select="@ID|@language|@abbr|@axis|@headers|@scope|@rowspan|@colspan|@align|@char|@charoff|@valign" mode="narrative"/>
            <xsl:apply-templates select="@styleCode" mode="narrative"/>
            <xsl:apply-templates select="node()" mode="narrative"/>
        </tr>
    </xsl:template>
    
    <xsl:template match="v3:tfoot" mode="narrative" name="flushTableFootnotes">
        <xsl:variable name="allspan" select="count(ancestor::v3:table[1]/v3:colgroup/v3:col|ancestor::v3:table[1]/v3:col)"/>
        <xsl:if test="self::v3:tfoot or ancestor::v3:table[1]//v3:footnote">
            <tfoot xmlns="http://www.w3.org/1999/xhtml">
                <xsl:if test="self::v3:tfoot">
                    <xsl:apply-templates select="@*|node()" mode="narrative"/>
                </xsl:if>
                <xsl:if test="ancestor::v3:table[1]//v3:footnote">
                    <tr>
                        <td colspan="{$allspan}" align="left">
                            <dl class="Footnote">
                                <xsl:apply-templates mode="footnote" select="ancestor::v3:table[1]/node()"/>				
                            </dl>
                        </td>
                    </tr>
                </xsl:if>
            </tfoot>
        </xsl:if>
    </xsl:template>
    
    <xsl:template mode="footnote" match="/|node()">
        <xsl:apply-templates mode="footnote" select="node()"/>
    </xsl:template>
    <xsl:template mode="footnote" match="v3:footnote">
        <xsl:variable name="mark">
            <xsl:call-template name="footnoteMark"/>
        </xsl:variable>
        <xsl:variable name="globalnumber" select="count(preceding::v3:footnote)+1"/>
        <dt xmlns="http://www.w3.org/1999/xhtml">
            <a xmlns="http://www.w3.org/1999/xhtml" name="footnote-{$globalnumber}" href="#footnote-reference-{$globalnumber}">
                <xsl:value-of select="$mark"/>
            </a>
        </dt>
        <dd xmlns="http://www.w3.org/1999/xhtml">
            <xsl:apply-templates select="node()" mode="narrative"/>
        </dd>
    </xsl:template>
    <xsl:template match="v3:footnoteRef" mode="narrative">
        <xsl:variable name="ref" select="@IDREF"/>
        <xsl:variable name="target" select="//v3:footnote[@ID=$ref]"/>
        <xsl:variable name="mark">
            <xsl:call-template name="footnoteMark">
                <xsl:with-param name="target" select="$target"/>
            </xsl:call-template>
        </xsl:variable>
        <xsl:variable name="globalnumber" select="count($target/preceding::v3:footnote)+1"/>
        <a xmlns="http://www.w3.org/1999/xhtml" href="#footnote-{$globalnumber}" class="Sup">
            <xsl:value-of select="$mark"/>
        </a>
    </xsl:template>

    <xsl:template mode="footnote" match="v3:section|v3:table"/>

    <xsl:param name="footnoteMarks" select="'*&#8224;&#8225;&#167;&#182;#&#0222;&#0223;&#0224;&#0232;&#0240;&#0248;&#0253;&#0163;&#0165;&#0338;&#0339;&#0393;&#0065;&#0066;&#0067;&#0068;&#0069;&#0070;&#0071;&#0072;&#0073;&#0074;&#0075;&#0076;&#0077;&#0078;&#0079;&#0080;&#0081;&#0082;&#0083;&#0084;&#0085;&#0086;&#0087;&#0088;&#0089;&#0090;'"/>
    <xsl:template name="footnoteMark">
        <xsl:param name="target" select="."/>
        <xsl:for-each select="$target[1]">
            <xsl:choose>
                <xsl:when test="ancestor::v3:title[parent::v3:document]">
                    <!-- innermost table - FIXME: does not work for the constructed tables -->
                    <xsl:variable name="number" select="count(preceding::v3:footnote)+1"/>
                    <xsl:value-of select="substring($footnoteMarks,$number,1)"/>
                </xsl:when>
                <xsl:when test="ancestor::v3:table">
                    <!-- innermost table - FIXME: does not work for the constructed tables -->
                    <xsl:variable name="number">
                        <xsl:number level="any" from="v3:table" count="v3:footnote"/>
                    </xsl:variable>
                    <xsl:value-of select="substring($footnoteMarks,$number,1)"/>
                </xsl:when>
                <xsl:otherwise>
                    <xsl:value-of select="count(preceding::v3:footnote[not(ancestor::v3:table or ancestor::v3:title[parent::v3:document])])+1"/>
                </xsl:otherwise>
            </xsl:choose>
        </xsl:for-each>
    </xsl:template>
    
</xsl:stylesheet>