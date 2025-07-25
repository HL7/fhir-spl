<?xml version="1.0" encoding="UTF-8"?>
<!--
This file was generated by Altova MapForce 2022r2

YOU SHOULD NOT MODIFY THIS FILE, BECAUSE IT WILL BE
OVERWRITTEN WHEN YOU RE-RUN CODE GENERATION.

Refer to the Altova MapForce Documentation for further details.
http://www.altova.com/mapforce
-->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:user="http://www.altova.com/MapForce/UDF/user" xmlns:vmf="http://www.altova.com/MapForce/UDF/vmf" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:ns0="urn:hl7-org:v3" exclude-result-prefixes="user vmf xs fn ns0">
	<xsl:template name="user:createHealthcareService">
		<xsl:param name="OperationDefinition" select="()"/>
		<xsl:variable name="var1_code" as="node()*" select="$OperationDefinition/ns0:code"/>
		<HealthcareService xmlns="http://hl7.org/fhir">
			<id>
				<xsl:for-each select="$var1_code/@code">
					<xsl:attribute name="value" namespace="" select="fn:concat('healthcareservice-', fn:string(.))"/>
				</xsl:for-each>
			</id>
			<meta>
				<profile>
					<xsl:attribute name="value" namespace="" select="xs:string(xs:anyURI('http://hl7.org/fhir/us/spl/StructureDefinition/GDUFAFacilityBusinessOperation'))"/>
				</profile>
			</meta>
			<providedBy>
				<reference>
					<xsl:attribute name="value" namespace="" select="'#'"/>
				</reference>
			</providedBy>
			<xsl:for-each select="$var1_code">
				<type>
					<coding>
						<system>
							<xsl:attribute name="value" namespace="" select="xs:string(xs:anyURI('http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl'))"/>
						</system>
						<code>
							<xsl:for-each select="@code">
								<xsl:attribute name="value" namespace="" select="fn:string(.)"/>
							</xsl:for-each>
						</code>
						<display>
							<xsl:for-each select="@displayName">
								<xsl:attribute name="value" namespace="" select="fn:string(.)"/>
							</xsl:for-each>
						</display>
					</coding>
				</type>
			</xsl:for-each>
			<xsl:for-each select="$OperationDefinition/ns0:subjectOf">
				<serviceProvisionCode>
					<xsl:for-each select="ns0:approval/ns0:code">
						<coding>
							<system>
								<xsl:attribute name="value" namespace="" select="xs:string(xs:anyURI('http://ncicb.nci.nih.gov/xml/owl/EVS/Thesaurus.owl'))"/>
							</system>
							<code>
								<xsl:for-each select="@code">
									<xsl:attribute name="value" namespace="" select="fn:string(.)"/>
								</xsl:for-each>
							</code>
							<display>
								<xsl:for-each select="@displayName">
									<xsl:attribute name="value" namespace="" select="fn:string(.)"/>
								</xsl:for-each>
							</display>
						</coding>
					</xsl:for-each>
				</serviceProvisionCode>
			</xsl:for-each>
		</HealthcareService>
	</xsl:template>
	<xsl:template name="user:createGDUFAOrganization">
		<xsl:param name="GDUFAFacilityEntity" select="()"/>
		<xsl:variable name="var5_assignedOrganization" as="node()*" select="$GDUFAFacilityEntity/ns0:assignedOrganization"/>
		<Organization xmlns="http://hl7.org/fhir">
			<id>
				<xsl:for-each select="$var5_assignedOrganization/ns0:id/@extension">
					<xsl:attribute name="value" namespace="" select="fn:concat(fn:concat('GenericDrugUseFacility', '-'), fn:string(.))"/>
				</xsl:for-each>
			</id>
			<meta>
				<profile>
					<xsl:attribute name="value" namespace="" select="xs:string(xs:anyURI('http://hl7.org/fhir/us/spl/StructureDefinition/GDUFAFacilityOrganization'))"/>
				</profile>
			</meta>
			<xsl:for-each select="$GDUFAFacilityEntity/ns0:performance">
				<contained>
					<xsl:for-each select="ns0:actDefinition">
						<xsl:variable name="var1_resultof_createHealthcareService" as="node()?">
							<xsl:call-template name="user:createHealthcareService">
								<xsl:with-param name="OperationDefinition" as="node()">
									<Organization.OperationDefinition xmlns="urn:hl7-org:v3">
										<xsl:sequence select="(./@node(), ./node())"/>
									</Organization.OperationDefinition>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:variable>
						<xsl:for-each select="$var1_resultof_createHealthcareService">
							<HealthcareService>
								<xsl:sequence select="(./@node(), ./node())"/>
							</HealthcareService>
						</xsl:for-each>
					</xsl:for-each>
				</contained>
			</xsl:for-each>
			<xsl:for-each select="$var5_assignedOrganization/ns0:id">
				<identifier>
					<system>
						<xsl:for-each select="@root">
							<xsl:variable name="var3_resultof_vmf___inputtoresult" as="xs:string">
								<xsl:call-template name="vmf:vmf11_inputtoresult">
									<xsl:with-param name="input" select="fn:string(.)" as="xs:string"/>
								</xsl:call-template>
							</xsl:variable>
							<xsl:variable name="var2_test_resultof_starts_with" as="xs:string">
								<xsl:choose>
									<xsl:when test="fn:starts-with($var3_resultof_vmf___inputtoresult, 'http')">
										<xsl:sequence select="$var3_resultof_vmf___inputtoresult"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:sequence select="fn:concat('urn:oid:', $var3_resultof_vmf___inputtoresult)"/>
									</xsl:otherwise>
								</xsl:choose>
							</xsl:variable>
							<xsl:attribute name="value" namespace="" select="xs:string(xs:anyURI($var2_test_resultof_starts_with))"/>
						</xsl:for-each>
					</system>
					<value>
						<xsl:for-each select="@extension">
							<xsl:attribute name="value" namespace="" select="fn:string(.)"/>
						</xsl:for-each>
					</value>
				</identifier>
			</xsl:for-each>
			<type>
				<coding>
					<system>
						<xsl:attribute name="value" namespace="" select="xs:string(xs:anyURI('http://hl7.org/fhir/us/spl/CodeSystem/codesystem-organizationTypes'))"/>
					</system>
					<code>
						<xsl:attribute name="value" namespace="" select="'GenericDrugUseFacility'"/>
					</code>
				</coding>
			</type>
			<xsl:for-each select="$var5_assignedOrganization/ns0:name">
				<name>
					<xsl:for-each select="(./node())[fn:boolean(self::text())]">
						<xsl:attribute name="value" namespace="" select="fn:string(.)"/>
					</xsl:for-each>
				</name>
			</xsl:for-each>
			<xsl:for-each select="$var5_assignedOrganization/ns0:contactParty">
				<contact>
					<purpose>
						<coding>
							<system>
								<xsl:attribute name="value" namespace="" select="xs:string(xs:anyURI('http://terminology.hl7.org/CodeSystem/contactentity-type'))"/>
							</system>
							<code>
								<xsl:attribute name="value" namespace="" select="'ADMIN'"/>
							</code>
						</coding>
					</purpose>
					<xsl:for-each select="ns0:contactPerson/ns0:name">
						<name>
							<text>
								<xsl:for-each select="(./node())[fn:boolean(self::text())]">
									<xsl:attribute name="value" namespace="" select="fn:string(.)"/>
								</xsl:for-each>
							</text>
						</name>
					</xsl:for-each>
					<xsl:for-each select="ns0:telecom">
						<xsl:variable name="var4_resultof_parseTelecom" as="node()?">
							<xsl:call-template name="user:parseTelecom">
								<xsl:with-param name="SimpleTEL" as="node()">
									<Simple-TEL xmlns="urn:hl7-org:v3">
										<xsl:sequence select="(./@node(), ./node())"/>
									</Simple-TEL>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:variable>
						<xsl:for-each select="$var4_resultof_parseTelecom">
							<telecom>
								<xsl:sequence select="(./@node(), ./node())"/>
							</telecom>
						</xsl:for-each>
					</xsl:for-each>
					<xsl:for-each select="ns0:addr">
						<address>
							<xsl:for-each select="ns0:streetAddressLine">
								<line>
									<xsl:for-each select="(./node())[fn:boolean(self::text())]">
										<xsl:attribute name="value" namespace="" select="fn:string(.)"/>
									</xsl:for-each>
								</line>
							</xsl:for-each>
							<xsl:for-each select="ns0:city">
								<city>
									<xsl:for-each select="(./node())[fn:boolean(self::text())]">
										<xsl:attribute name="value" namespace="" select="fn:string(.)"/>
									</xsl:for-each>
								</city>
							</xsl:for-each>
							<xsl:for-each select="ns0:state">
								<state>
									<xsl:for-each select="(./node())[fn:boolean(self::text())]">
										<xsl:attribute name="value" namespace="" select="fn:string(.)"/>
									</xsl:for-each>
								</state>
							</xsl:for-each>
							<xsl:for-each select="ns0:postalCode">
								<postalCode>
									<xsl:for-each select="(./node())[fn:boolean(self::text())]">
										<xsl:attribute name="value" namespace="" select="fn:string(.)"/>
									</xsl:for-each>
								</postalCode>
							</xsl:for-each>
							<xsl:for-each select="ns0:country">
								<country>
									<xsl:for-each select="(./node())[fn:boolean(self::text())]">
										<xsl:attribute name="value" namespace="" select="fn:string(.)"/>
									</xsl:for-each>
								</country>
							</xsl:for-each>
						</address>
					</xsl:for-each>
				</contact>
			</xsl:for-each>
			<xsl:for-each select="$var5_assignedOrganization/ns0:addr">
				<contact>
					<purpose>
						<coding>
							<system>
								<xsl:attribute name="value" namespace="" select="xs:string(xs:anyURI('http://hl7.org/fhir/us/spl/CodeSystem/codesystem-organizationContactType'))"/>
							</system>
							<code>
								<xsl:attribute name="value" namespace="" select="'ADDRESS'"/>
							</code>
						</coding>
					</purpose>
					<address>
						<xsl:for-each select="ns0:streetAddressLine">
							<line>
								<xsl:for-each select="(./node())[fn:boolean(self::text())]">
									<xsl:attribute name="value" namespace="" select="fn:string(.)"/>
								</xsl:for-each>
							</line>
						</xsl:for-each>
						<xsl:for-each select="ns0:city">
							<city>
								<xsl:for-each select="(./node())[fn:boolean(self::text())]">
									<xsl:attribute name="value" namespace="" select="fn:string(.)"/>
								</xsl:for-each>
							</city>
						</xsl:for-each>
						<xsl:for-each select="ns0:state">
							<state>
								<xsl:for-each select="(./node())[fn:boolean(self::text())]">
									<xsl:attribute name="value" namespace="" select="fn:string(.)"/>
								</xsl:for-each>
							</state>
						</xsl:for-each>
						<xsl:for-each select="ns0:postalCode">
							<postalCode>
								<xsl:for-each select="(./node())[fn:boolean(self::text())]">
									<xsl:attribute name="value" namespace="" select="fn:string(.)"/>
								</xsl:for-each>
							</postalCode>
						</xsl:for-each>
						<xsl:for-each select="ns0:country">
							<country>
								<xsl:for-each select="(./node())[fn:boolean(self::text())]">
									<xsl:attribute name="value" namespace="" select="fn:string(.)"/>
								</xsl:for-each>
							</country>
						</xsl:for-each>
					</address>
				</contact>
			</xsl:for-each>
		</Organization>
	</xsl:template>
	<xsl:template name="user:parseTelecom">
		<xsl:param name="SimpleTEL" select="()"/>
		<xsl:variable name="var3_value" as="node()?" select="$SimpleTEL/@value"/>
		<ContactPoint xmlns="http://hl7.org/fhir">
			<system>
				<xsl:for-each select="$var3_value">
					<xsl:attribute name="value" namespace="">
						<xsl:call-template name="vmf:vmf12_inputtoresult">
							<xsl:with-param name="input" select="fn:substring-before(xs:string(xs:anyURI(fn:string(.))), ':')" as="xs:string"/>
						</xsl:call-template>
					</xsl:attribute>
				</xsl:for-each>
			</system>
			<value>
				<xsl:for-each select="$var3_value">
					<xsl:variable name="var2_cur_as_string" as="xs:string" select="xs:string(xs:anyURI(fn:string(.)))"/>
					<xsl:variable name="var1_resultof_vmf___inputtoresult" as="xs:string">
						<xsl:call-template name="vmf:vmf12_inputtoresult">
							<xsl:with-param name="input" select="fn:substring-before($var2_cur_as_string, ':')" as="xs:string"/>
						</xsl:call-template>
					</xsl:variable>
					<xsl:attribute name="value" namespace="">
						<xsl:choose>
							<xsl:when test="($var1_resultof_vmf___inputtoresult = 'url')">
								<xsl:sequence select="$var2_cur_as_string"/>
							</xsl:when>
							<xsl:otherwise>
								<xsl:sequence select="fn:substring-after($var2_cur_as_string, ':')"/>
							</xsl:otherwise>
						</xsl:choose>
					</xsl:attribute>
				</xsl:for-each>
			</value>
		</ContactPoint>
	</xsl:template>
	<xsl:template name="user:createRegistrant">
		<xsl:param name="GDUFARegistrantOrganization" select="()"/>
		<Organization xmlns="http://hl7.org/fhir">
			<id>
				<xsl:attribute name="value" namespace="" select="'GDUFARegistrant'"/>
			</id>
			<meta>
				<profile>
					<xsl:attribute name="value" namespace="" select="xs:string(xs:anyURI('http://hl7.org/fhir/us/spl/StructureDefinition/GDUFARegistrantOrganization'))"/>
				</profile>
			</meta>
			<xsl:for-each select="$GDUFARegistrantOrganization/ns0:id">
				<identifier>
					<system>
						<xsl:for-each select="@root">
							<xsl:variable name="var2_resultof_vmf___inputtoresult" as="xs:string">
								<xsl:call-template name="vmf:vmf11_inputtoresult">
									<xsl:with-param name="input" select="fn:string(.)" as="xs:string"/>
								</xsl:call-template>
							</xsl:variable>
							<xsl:variable name="var1_test_resultof_starts_with" as="xs:string">
								<xsl:choose>
									<xsl:when test="fn:starts-with($var2_resultof_vmf___inputtoresult, 'http')">
										<xsl:sequence select="$var2_resultof_vmf___inputtoresult"/>
									</xsl:when>
									<xsl:otherwise>
										<xsl:sequence select="fn:concat('urn:oid:', $var2_resultof_vmf___inputtoresult)"/>
									</xsl:otherwise>
								</xsl:choose>
							</xsl:variable>
							<xsl:attribute name="value" namespace="" select="xs:string(xs:anyURI($var1_test_resultof_starts_with))"/>
						</xsl:for-each>
					</system>
					<value>
						<xsl:for-each select="@extension">
							<xsl:attribute name="value" namespace="" select="fn:string(.)"/>
						</xsl:for-each>
					</value>
				</identifier>
			</xsl:for-each>
			<type>
				<coding>
					<system>
						<xsl:attribute name="value" namespace="" select="xs:string(xs:anyURI('http://hl7.org/fhir/us/spl/CodeSystem/codesystem-organizationTypes'))"/>
					</system>
					<code>
						<xsl:attribute name="value" namespace="" select="'GDUFARegistrant'"/>
					</code>
				</coding>
			</type>
			<xsl:for-each select="$GDUFARegistrantOrganization/ns0:name">
				<name>
					<xsl:for-each select="(./node())[fn:boolean(self::text())]">
						<xsl:attribute name="value" namespace="" select="fn:string(.)"/>
					</xsl:for-each>
				</name>
			</xsl:for-each>
			<xsl:for-each select="$GDUFARegistrantOrganization/ns0:contactParty">
				<contact>
					<purpose>
						<coding>
							<system>
								<xsl:attribute name="value" namespace="" select="xs:string(xs:anyURI('http://terminology.hl7.org/CodeSystem/contactentity-type'))"/>
							</system>
							<code>
								<xsl:attribute name="value" namespace="" select="'ADMIN'"/>
							</code>
						</coding>
					</purpose>
					<xsl:for-each select="ns0:contactPerson/ns0:name">
						<name>
							<text>
								<xsl:for-each select="(./node())[fn:boolean(self::text())]">
									<xsl:attribute name="value" namespace="" select="fn:string(.)"/>
								</xsl:for-each>
							</text>
						</name>
					</xsl:for-each>
					<xsl:for-each select="ns0:telecom">
						<xsl:variable name="var3_resultof_parseTelecom" as="node()?">
							<xsl:call-template name="user:parseTelecom">
								<xsl:with-param name="SimpleTEL" as="node()">
									<Simple-TEL xmlns="urn:hl7-org:v3">
										<xsl:sequence select="(./@node(), ./node())"/>
									</Simple-TEL>
								</xsl:with-param>
							</xsl:call-template>
						</xsl:variable>
						<xsl:for-each select="$var3_resultof_parseTelecom">
							<telecom>
								<xsl:sequence select="(./@node(), ./node())"/>
							</telecom>
						</xsl:for-each>
					</xsl:for-each>
					<xsl:for-each select="ns0:addr">
						<address>
							<xsl:for-each select="ns0:streetAddressLine">
								<line>
									<xsl:for-each select="(./node())[fn:boolean(self::text())]">
										<xsl:attribute name="value" namespace="" select="fn:string(.)"/>
									</xsl:for-each>
								</line>
							</xsl:for-each>
							<xsl:for-each select="ns0:city">
								<city>
									<xsl:for-each select="(./node())[fn:boolean(self::text())]">
										<xsl:attribute name="value" namespace="" select="fn:string(.)"/>
									</xsl:for-each>
								</city>
							</xsl:for-each>
							<xsl:for-each select="ns0:state">
								<state>
									<xsl:for-each select="(./node())[fn:boolean(self::text())]">
										<xsl:attribute name="value" namespace="" select="fn:string(.)"/>
									</xsl:for-each>
								</state>
							</xsl:for-each>
							<xsl:for-each select="ns0:postalCode">
								<postalCode>
									<xsl:for-each select="(./node())[fn:boolean(self::text())]">
										<xsl:attribute name="value" namespace="" select="fn:string(.)"/>
									</xsl:for-each>
								</postalCode>
							</xsl:for-each>
							<xsl:for-each select="ns0:country">
								<country>
									<xsl:for-each select="(./node())[fn:boolean(self::text())]">
										<xsl:attribute name="value" namespace="" select="fn:string(.)"/>
									</xsl:for-each>
								</country>
							</xsl:for-each>
						</address>
					</xsl:for-each>
				</contact>
			</xsl:for-each>
		</Organization>
	</xsl:template>
	<xsl:template name="vmf:vmf11_inputtoresult">
		<xsl:param name="input" select="()"/>
		<xsl:choose>
			<xsl:when test="$input='1.3.6.1.4.1.519.1'">
				<xsl:copy-of select="'http://terminology.hl7.org/NamingSystem/DUNSNumber'"/>
			</xsl:when>
			<xsl:when test="$input='2.16.840.1.113883.4.82'">
				<xsl:copy-of select="'http://terminology.hl7.org/NamingSystem/FEI'"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:copy-of select="xs:string($input)"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="vmf:vmf12_inputtoresult">
		<xsl:param name="input" select="()"/>
		<xsl:choose>
			<xsl:when test="$input='tel'">
				<xsl:copy-of select="'phone'"/>
			</xsl:when>
			<xsl:when test="$input='mailto'">
				<xsl:copy-of select="'email'"/>
			</xsl:when>
			<xsl:when test="$input='fax'">
				<xsl:copy-of select="'fax'"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:copy-of select="'url'"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:output method="xml" encoding="UTF-8" byte-order-mark="no" indent="yes"/>
	<xsl:template match="/">
		<xsl:variable name="var3_document" as="node()?" select="ns0:document"/>
		<Bundle xmlns="http://hl7.org/fhir" xmlns:xhtml="http://www.w3.org/1999/xhtml">
			<type>
				<xsl:attribute name="value" namespace="" select="'collection'"/>
			</type>
			<xsl:for-each select="$var3_document/ns0:author/ns0:assignedEntity/ns0:representedOrganization/ns0:assignedEntity/ns0:assignedOrganization">
				<entry>
					<fullUrl>
						<xsl:attribute name="value" namespace="" select="xs:string(xs:anyURI('http://example.org/Organization/GDUFARegistrant'))"/>
					</fullUrl>
					<xsl:variable name="var1_resultof_createRegistrant" as="node()?">
						<xsl:call-template name="user:createRegistrant">
							<xsl:with-param name="GDUFARegistrantOrganization" as="node()">
								<GDUFAFacilityIdentification.RegistrantOrganization xmlns="urn:hl7-org:v3">
									<xsl:sequence select="(./@node(), ./node())"/>
								</GDUFAFacilityIdentification.RegistrantOrganization>
							</xsl:with-param>
						</xsl:call-template>
					</xsl:variable>
					<resource>
						<xsl:for-each select="$var1_resultof_createRegistrant">
							<Organization>
								<xsl:sequence select="(./@node(), ./node())"/>
							</Organization>
						</xsl:for-each>
					</resource>
				</entry>
			</xsl:for-each>
			<xsl:for-each select="$var3_document/ns0:author/ns0:assignedEntity/ns0:representedOrganization/ns0:assignedEntity/ns0:assignedOrganization/ns0:assignedEntity">
				<entry>
					<fullUrl>
						<xsl:for-each select="ns0:assignedOrganization/ns0:id">
							<xsl:attribute name="value" namespace="" select="xs:string(xs:anyURI(fn:concat('http://example.org/Organization/GenericDrugUseFacility-', fn:string(@extension))))"/>
						</xsl:for-each>
					</fullUrl>
					<xsl:variable name="var2_resultof_createGDUFAOrganization" as="node()?">
						<xsl:call-template name="user:createGDUFAOrganization">
							<xsl:with-param name="GDUFAFacilityEntity" as="node()">
								<GDUFAFacilityIdentification.GDUFAFacilityEntity xmlns="urn:hl7-org:v3">
									<xsl:sequence select="(./@node(), ./node())"/>
								</GDUFAFacilityIdentification.GDUFAFacilityEntity>
							</xsl:with-param>
						</xsl:call-template>
					</xsl:variable>
					<resource>
						<xsl:for-each select="$var2_resultof_createGDUFAOrganization">
							<Organization>
								<xsl:sequence select="(./@node(), ./node())"/>
							</Organization>
						</xsl:for-each>
					</resource>
				</entry>
			</xsl:for-each>
		</Bundle>
	</xsl:template>
</xsl:stylesheet>
