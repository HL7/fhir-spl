<?xml version="1.0" encoding="UTF-8"?>
<!--
This file was generated by Altova MapForce 2022r2

YOU SHOULD NOT MODIFY THIS FILE, BECAUSE IT WILL BE
OVERWRITTEN WHEN YOU RE-RUN CODE GENERATION.

Refer to the Altova MapForce Documentation for further details.
http://www.altova.com/mapforce
-->
<xsl:stylesheet version="2.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:ns0="http://hl7.org/fhir" xmlns:user="http://www.altova.com/MapForce/UDF/user" xmlns:vmf="http://www.altova.com/MapForce/UDF/vmf" xmlns:xs="http://www.w3.org/2001/XMLSchema" xmlns:fn="http://www.w3.org/2005/xpath-functions" xmlns:ns1="urn:hl7-org:v3" exclude-result-prefixes="ns0 user vmf xs fn ns1">
	<xsl:template name="user:convertRegistrant">
		<xsl:param name="RegistrantOrganization" select="()"/>
		<xsl:variable name="var1_map_of_type" as="xs:boolean*">
			<xsl:for-each select="$RegistrantOrganization/ns0:type/ns0:coding/ns0:code/@value">
				<xsl:sequence select="('EstablishmentRegistrant' = fn:string(.))"/>
			</xsl:for-each>
		</xsl:variable>
		<xsl:if test="fn:exists(($var1_map_of_type)[.])">
			<xsl:variable name="var7_identifier" as="node()*" select="$RegistrantOrganization/ns0:identifier"/>
			<EstablishmentRegistration.RegistrantOrganization xmlns="urn:hl7-org:v3">
				<id>
					<xsl:for-each select="$var7_identifier/ns0:system/@value">
						<xsl:variable name="var2_resultof_vmf__inputtoresult" as="xs:string">
							<xsl:call-template name="vmf:vmf7_inputtoresult">
								<xsl:with-param name="input" select="xs:string(xs:anyURI(fn:string(.)))" as="xs:string"/>
							</xsl:call-template>
						</xsl:variable>
						<xsl:attribute name="root" namespace="">
							<xsl:choose>
								<xsl:when test="fn:starts-with($var2_resultof_vmf__inputtoresult, 'urn:oid:')">
									<xsl:sequence select="fn:substring-after($var2_resultof_vmf__inputtoresult, 'urn:oid:')"/>
								</xsl:when>
								<xsl:otherwise>
									<xsl:sequence select="$var2_resultof_vmf__inputtoresult"/>
								</xsl:otherwise>
							</xsl:choose>
						</xsl:attribute>
					</xsl:for-each>
					<xsl:for-each select="$var7_identifier/ns0:value/@value">
						<xsl:attribute name="extension" namespace="" select="fn:string(.)"/>
					</xsl:for-each>
				</id>
				<xsl:for-each select="$RegistrantOrganization/ns0:name">
					<name>
						<xsl:for-each select="@value">
							<xsl:sequence select="fn:string(.)"/>
						</xsl:for-each>
					</name>
				</xsl:for-each>
				<xsl:for-each select="$RegistrantOrganization/ns0:contact">
					<xsl:variable name="var6_address" as="node()*" select="ns0:address"/>
					<contactParty>
						<addr>
							<xsl:for-each select="$var6_address/ns0:country">
								<country>
									<xsl:for-each select="@value">
										<xsl:sequence select="fn:string(.)"/>
									</xsl:for-each>
								</country>
							</xsl:for-each>
							<xsl:for-each select="$var6_address/ns0:state">
								<state>
									<xsl:for-each select="@value">
										<xsl:sequence select="fn:string(.)"/>
									</xsl:for-each>
								</state>
							</xsl:for-each>
							<xsl:for-each select="$var6_address/ns0:city">
								<city>
									<xsl:for-each select="@value">
										<xsl:sequence select="fn:string(.)"/>
									</xsl:for-each>
								</city>
							</xsl:for-each>
							<xsl:for-each select="$var6_address/ns0:postalCode">
								<postalCode>
									<xsl:for-each select="@value">
										<xsl:sequence select="fn:string(.)"/>
									</xsl:for-each>
								</postalCode>
							</xsl:for-each>
							<xsl:for-each select="$var6_address/ns0:line">
								<streetAddressLine>
									<xsl:for-each select="@value">
										<xsl:sequence select="fn:string(.)"/>
									</xsl:for-each>
								</streetAddressLine>
							</xsl:for-each>
						</addr>
						<xsl:for-each select="ns0:telecom">
							<xsl:variable name="var5_cur" as="node()" select="."/>
							<telecom>
								<xsl:for-each select="ns0:system/@value">
									<xsl:variable name="var3_resultof_vmf__inputtoresult" as="xs:string?">
										<xsl:call-template name="vmf:vmf8_inputtoresult">
											<xsl:with-param name="input" select="fn:string(.)" as="xs:string"/>
										</xsl:call-template>
									</xsl:variable>
									<xsl:for-each select="$var3_resultof_vmf__inputtoresult">
										<xsl:variable name="var4_cur" as="xs:string" select="."/>
										<xsl:for-each select="$var5_cur/ns0:value/@value">
											<xsl:attribute name="value" namespace="" select="xs:string(xs:anyURI(fn:concat($var4_cur, fn:string(.))))"/>
										</xsl:for-each>
									</xsl:for-each>
								</xsl:for-each>
							</telecom>
						</xsl:for-each>
						<contactPerson>
							<xsl:for-each select="ns0:name">
								<name>
									<xsl:for-each select="ns0:text/@value">
										<xsl:sequence select="fn:string(.)"/>
									</xsl:for-each>
								</name>
							</xsl:for-each>
						</contactPerson>
					</contactParty>
				</xsl:for-each>
			</EstablishmentRegistration.RegistrantOrganization>
		</xsl:if>
	</xsl:template>
	<xsl:template name="user:convertEstablishment">
		<xsl:param name="Organization" select="()"/>
		<xsl:variable name="var1_map_of_type" as="xs:boolean*">
			<xsl:for-each select="$Organization/ns0:type/ns0:coding/ns0:code/@value">
				<xsl:sequence select="('Establishment' = fn:string(.))"/>
			</xsl:for-each>
		</xsl:variable>
		<xsl:if test="fn:exists(($var1_map_of_type)[.])">
			<xsl:variable name="var22_contained" as="node()*" select="$Organization/ns0:contained"/>
			<xsl:variable name="var23_contact" as="node()*" select="$Organization/ns0:contact"/>
			<EstablishmentRegistration.EstablishmentEntity xmlns="urn:hl7-org:v3">
				<assignedOrganization>
					<xsl:for-each select="$Organization/ns0:identifier">
						<id>
							<xsl:for-each select="ns0:system/@value">
								<xsl:variable name="var2_resultof_vmf__inputtoresult" as="xs:string">
									<xsl:call-template name="vmf:vmf7_inputtoresult">
										<xsl:with-param name="input" select="xs:string(xs:anyURI(fn:string(.)))" as="xs:string"/>
									</xsl:call-template>
								</xsl:variable>
								<xsl:attribute name="root" namespace="">
									<xsl:choose>
										<xsl:when test="fn:starts-with($var2_resultof_vmf__inputtoresult, 'urn:oid:')">
											<xsl:sequence select="fn:substring-after($var2_resultof_vmf__inputtoresult, 'urn:oid:')"/>
										</xsl:when>
										<xsl:otherwise>
											<xsl:sequence select="$var2_resultof_vmf__inputtoresult"/>
										</xsl:otherwise>
									</xsl:choose>
								</xsl:attribute>
							</xsl:for-each>
							<xsl:for-each select="ns0:value/@value">
								<xsl:attribute name="extension" namespace="" select="fn:string(.)"/>
							</xsl:for-each>
						</id>
					</xsl:for-each>
					<xsl:for-each select="$Organization/ns0:name">
						<name>
							<xsl:for-each select="@value">
								<xsl:sequence select="fn:string(.)"/>
							</xsl:for-each>
						</name>
					</xsl:for-each>
					<xsl:variable name="var4_resultof_filter" as="node()*">
						<xsl:for-each select="$var23_contact">
							<xsl:variable name="var3_map_of_purpose" as="xs:boolean*">
								<xsl:for-each select="ns0:purpose/ns0:coding/ns0:code/@value">
									<xsl:sequence select="(fn:string(.) = 'ADMIN')"/>
								</xsl:for-each>
							</xsl:variable>
							<xsl:if test="fn:not(fn:exists(($var3_map_of_purpose)[.]))">
								<xsl:sequence select="."/>
							</xsl:if>
						</xsl:for-each>
					</xsl:variable>
					<xsl:for-each select="$var4_resultof_filter">
						<xsl:variable name="var5_address" as="node()*" select="ns0:address"/>
						<addr>
							<xsl:for-each select="$var5_address/ns0:country">
								<country>
									<xsl:for-each select="@value">
										<xsl:sequence select="fn:string(.)"/>
									</xsl:for-each>
								</country>
							</xsl:for-each>
							<xsl:for-each select="$var5_address/ns0:state">
								<state>
									<xsl:for-each select="@value">
										<xsl:sequence select="fn:string(.)"/>
									</xsl:for-each>
								</state>
							</xsl:for-each>
							<xsl:for-each select="$var5_address/ns0:city">
								<city>
									<xsl:for-each select="@value">
										<xsl:sequence select="fn:string(.)"/>
									</xsl:for-each>
								</city>
							</xsl:for-each>
							<xsl:for-each select="$var5_address/ns0:postalCode">
								<postalCode>
									<xsl:for-each select="@value">
										<xsl:sequence select="fn:string(.)"/>
									</xsl:for-each>
								</postalCode>
							</xsl:for-each>
							<xsl:for-each select="$var5_address/ns0:line">
								<streetAddressLine>
									<xsl:for-each select="@value">
										<xsl:sequence select="fn:string(.)"/>
									</xsl:for-each>
								</streetAddressLine>
							</xsl:for-each>
						</addr>
					</xsl:for-each>
					<xsl:variable name="var7_resultof_filter" as="node()*">
						<xsl:for-each select="$var23_contact">
							<xsl:variable name="var6_map_of_purpose" as="xs:boolean*">
								<xsl:for-each select="ns0:purpose/ns0:coding/ns0:code/@value">
									<xsl:sequence select="(fn:string(.) = 'ADMIN')"/>
								</xsl:for-each>
							</xsl:variable>
							<xsl:if test="fn:exists(($var6_map_of_purpose)[.])">
								<xsl:sequence select="."/>
							</xsl:if>
						</xsl:for-each>
					</xsl:variable>
					<xsl:for-each select="$var7_resultof_filter">
						<xsl:variable name="var11_address" as="node()*" select="ns0:address"/>
						<contactParty>
							<addr>
								<xsl:for-each select="$var11_address/ns0:country">
									<country>
										<xsl:for-each select="@value">
											<xsl:sequence select="fn:string(.)"/>
										</xsl:for-each>
									</country>
								</xsl:for-each>
								<xsl:for-each select="$var11_address/ns0:state">
									<state>
										<xsl:for-each select="@value">
											<xsl:sequence select="fn:string(.)"/>
										</xsl:for-each>
									</state>
								</xsl:for-each>
								<xsl:for-each select="$var11_address/ns0:city">
									<city>
										<xsl:for-each select="@value">
											<xsl:sequence select="fn:string(.)"/>
										</xsl:for-each>
									</city>
								</xsl:for-each>
								<xsl:for-each select="$var11_address/ns0:postalCode">
									<postalCode>
										<xsl:for-each select="@value">
											<xsl:sequence select="fn:string(.)"/>
										</xsl:for-each>
									</postalCode>
								</xsl:for-each>
								<xsl:for-each select="$var11_address/ns0:line">
									<streetAddressLine>
										<xsl:for-each select="@value">
											<xsl:sequence select="fn:string(.)"/>
										</xsl:for-each>
									</streetAddressLine>
								</xsl:for-each>
							</addr>
							<xsl:for-each select="ns0:telecom">
								<xsl:variable name="var10_cur" as="node()" select="."/>
								<telecom>
									<xsl:for-each select="ns0:system/@value">
										<xsl:variable name="var8_resultof_vmf__inputtoresult" as="xs:string?">
											<xsl:call-template name="vmf:vmf8_inputtoresult">
												<xsl:with-param name="input" select="fn:string(.)" as="xs:string"/>
											</xsl:call-template>
										</xsl:variable>
										<xsl:for-each select="$var8_resultof_vmf__inputtoresult">
											<xsl:variable name="var9_cur" as="xs:string" select="."/>
											<xsl:for-each select="$var10_cur/ns0:value/@value">
												<xsl:attribute name="value" namespace="" select="xs:string(xs:anyURI(fn:concat($var9_cur, fn:string(.))))"/>
											</xsl:for-each>
										</xsl:for-each>
									</xsl:for-each>
								</telecom>
							</xsl:for-each>
							<contactPerson>
								<xsl:for-each select="ns0:name">
									<name>
										<xsl:for-each select="ns0:text/@value">
											<xsl:sequence select="fn:string(.)"/>
										</xsl:for-each>
									</name>
								</xsl:for-each>
							</contactPerson>
						</contactParty>
					</xsl:for-each>
					<xsl:for-each select="$var22_contained/ns0:Organization">
						<xsl:variable name="var19_identifier" as="node()*" select="ns0:identifier"/>
						<assignedEntity>
							<assignedOrganization>
								<id>
									<xsl:for-each select="$var19_identifier/ns0:system/@value">
										<xsl:variable name="var12_resultof_vmf__inputtoresult" as="xs:string">
											<xsl:call-template name="vmf:vmf7_inputtoresult">
												<xsl:with-param name="input" select="xs:string(xs:anyURI(fn:string(.)))" as="xs:string"/>
											</xsl:call-template>
										</xsl:variable>
										<xsl:attribute name="root" namespace="">
											<xsl:choose>
												<xsl:when test="fn:starts-with($var12_resultof_vmf__inputtoresult, 'urn:oid:')">
													<xsl:sequence select="fn:substring-after($var12_resultof_vmf__inputtoresult, 'urn:oid:')"/>
												</xsl:when>
												<xsl:otherwise>
													<xsl:sequence select="$var12_resultof_vmf__inputtoresult"/>
												</xsl:otherwise>
											</xsl:choose>
										</xsl:attribute>
									</xsl:for-each>
									<xsl:for-each select="$var19_identifier/ns0:value/@value">
										<xsl:attribute name="extension" namespace="" select="fn:string(.)"/>
									</xsl:for-each>
								</id>
								<xsl:for-each select="ns0:name">
									<name>
										<xsl:for-each select="@value">
											<xsl:sequence select="fn:string(.)"/>
										</xsl:for-each>
									</name>
								</xsl:for-each>
								<xsl:for-each select="ns0:contact/ns0:telecom">
									<xsl:variable name="var15_cur" as="node()" select="."/>
									<telecom>
										<xsl:for-each select="ns0:system/@value">
											<xsl:variable name="var13_resultof_vmf__inputtoresult" as="xs:string?">
												<xsl:call-template name="vmf:vmf8_inputtoresult">
													<xsl:with-param name="input" select="fn:string(.)" as="xs:string"/>
												</xsl:call-template>
											</xsl:variable>
											<xsl:for-each select="$var13_resultof_vmf__inputtoresult">
												<xsl:variable name="var14_cur" as="xs:string" select="."/>
												<xsl:for-each select="$var15_cur/ns0:value/@value">
													<xsl:attribute name="value" namespace="" select="xs:string(xs:anyURI(fn:concat($var14_cur, fn:string(.))))"/>
												</xsl:for-each>
											</xsl:for-each>
										</xsl:for-each>
									</telecom>
								</xsl:for-each>
							</assignedOrganization>
							<xsl:for-each select="ns0:type">
								<xsl:variable name="var18_coding" as="node()*" select="ns0:coding"/>
								<performance>
									<actDefinition>
										<code>
											<xsl:for-each select="$var18_coding/ns0:code/@value">
												<xsl:variable name="var16_resultof_vmf__inputtoresult" as="xs:string?">
													<xsl:call-template name="vmf:vmf9_inputtoresult">
														<xsl:with-param name="input" select="fn:string(.)" as="xs:string"/>
													</xsl:call-template>
												</xsl:variable>
												<xsl:for-each select="$var16_resultof_vmf__inputtoresult">
													<xsl:attribute name="code" namespace="" select="."/>
												</xsl:for-each>
											</xsl:for-each>
											<xsl:attribute name="codeSystem" namespace="" select="'2.16.840.1.113883.3.26.1.1'"/>
											<xsl:for-each select="$var18_coding/ns0:code/@value">
												<xsl:variable name="var17_resultof_vmf___inputtoresult" as="xs:string?">
													<xsl:call-template name="vmf:vmf10_inputtoresult">
														<xsl:with-param name="input" select="fn:string(.)" as="xs:string"/>
													</xsl:call-template>
												</xsl:variable>
												<xsl:for-each select="$var17_resultof_vmf___inputtoresult">
													<xsl:attribute name="displayName" namespace="" select="."/>
												</xsl:for-each>
											</xsl:for-each>
										</code>
									</actDefinition>
								</performance>
							</xsl:for-each>
						</assignedEntity>
					</xsl:for-each>
				</assignedOrganization>
				<xsl:for-each select="$var22_contained/ns0:HealthcareService">
					<performance>
						<actDefinition>
							<xsl:for-each select="ns0:type">
								<xsl:variable name="var20_coding" as="node()*" select="ns0:coding"/>
								<code>
									<xsl:for-each select="$var20_coding/ns0:code/@value">
										<xsl:attribute name="code" namespace="" select="fn:string(.)"/>
									</xsl:for-each>
									<xsl:attribute name="codeSystem" namespace="" select="'2.16.840.1.113883.3.26.1.1'"/>
									<xsl:for-each select="$var20_coding/ns0:display/@value">
										<xsl:attribute name="displayName" namespace="" select="fn:string(.)"/>
									</xsl:for-each>
								</code>
							</xsl:for-each>
							<xsl:for-each select="ns0:serviceProvisionCode">
								<xsl:variable name="var21_coding" as="node()*" select="ns0:coding"/>
								<subjectOf>
									<approval>
										<code>
											<xsl:for-each select="$var21_coding/ns0:code/@value">
												<xsl:attribute name="code" namespace="" select="fn:string(.)"/>
											</xsl:for-each>
											<xsl:attribute name="codeSystem" namespace="" select="'2.16.840.1.113883.3.26.1.1'"/>
											<xsl:for-each select="$var21_coding/ns0:display/@value">
												<xsl:attribute name="displayName" namespace="" select="fn:string(.)"/>
											</xsl:for-each>
										</code>
									</approval>
								</subjectOf>
							</xsl:for-each>
						</actDefinition>
					</performance>
				</xsl:for-each>
			</EstablishmentRegistration.EstablishmentEntity>
		</xsl:if>
	</xsl:template>
	<xsl:template name="vmf:vmf7_inputtoresult">
		<xsl:param name="input" select="()"/>
		<xsl:choose>
			<xsl:when test="$input='1.3.6.1.4.1.519.1'">
				<xsl:copy-of select="'http://terminology.hl7.org/NamingSystem/DUNSNumber'"/>
			</xsl:when>
			<xsl:when test="$input='2.16.840.1.113883.4.82'">
				<xsl:copy-of select="'http://terminology.hl7/org/NamingSystem/FEI'"/>
			</xsl:when>
			<xsl:when test="$input='http://terminology.hl7.org/NamingSystem/DUNSNumber'">
				<xsl:copy-of select="'1.3.6.1.4.1.519.1'"/>
			</xsl:when>
			<xsl:when test="$input='http://terminology.hl7.org/NamingSystem/FEI'">
				<xsl:copy-of select="'2.16.840.1.113883.4.82'"/>
			</xsl:when>
			<xsl:otherwise>
				<xsl:copy-of select="xs:string($input)"/>
			</xsl:otherwise>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="vmf:vmf8_inputtoresult">
		<xsl:param name="input" select="()"/>
		<xsl:choose>
			<xsl:when test="$input='email'">
				<xsl:copy-of select="'mailto:'"/>
			</xsl:when>
			<xsl:when test="$input='phone'">
				<xsl:copy-of select="'tel:'"/>
			</xsl:when>
			<xsl:when test="$input='fax'">
				<xsl:copy-of select="'fax:'"/>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="vmf:vmf9_inputtoresult">
		<xsl:param name="input" select="()"/>
		<xsl:choose>
			<xsl:when test="$input='USAgent'">
				<xsl:copy-of select="'C73330'"/>
			</xsl:when>
			<xsl:when test="$input='Importer'">
				<xsl:copy-of select="'C73599'"/>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
	<xsl:template name="vmf:vmf10_inputtoresult">
		<xsl:param name="input" select="()"/>
		<xsl:choose>
			<xsl:when test="$input='USAgent'">
				<xsl:copy-of select="'UNITED STATES AGENT'"/>
			</xsl:when>
			<xsl:when test="$input='Importer'">
				<xsl:copy-of select="'IMPORT'"/>
			</xsl:when>
		</xsl:choose>
	</xsl:template>
	<xsl:output method="xml" encoding="UTF-8" byte-order-mark="no" indent="yes"/>
	<xsl:param name="documentIdentifier" as="xs:string" required="yes"/>
	<xsl:param name="splDate" as="xs:date" required="yes"/>
	<xsl:param name="setIdentifier" as="xs:string" required="yes"/>
	<xsl:param name="version" as="xs:string" required="yes"/>
	<xsl:template match="/">
		<xsl:variable name="var8_Bundle" as="node()?" select="ns0:Bundle"/>
		<xsl:variable name="var7_map_of_Bundle" as="node()*">
			<xsl:for-each select="$var8_Bundle/ns0:entry/ns0:resource/ns0:Organization">
				<Organization xmlns="http://hl7.org/fhir">
					<xsl:sequence select="(./@node(), ./node())"/>
				</Organization>
			</xsl:for-each>
		</xsl:variable>
		<xsl:variable name="var6_join" as="node()*" select="$var7_map_of_Bundle"/>
		<xsl:variable name="var5_var" as="node()*" select="$var6_join"/>
		<xsl:variable name="var4_join" as="node()*" select="$var7_map_of_Bundle"/>
		<xsl:variable name="var3_var" as="node()*" select="$var4_join"/>
		<xsl:processing-instruction name="{'xml-stylesheet'}" select="'href=&quot;https://www.accessdata.fda.gov/spl/stylesheet/spl.xsl&quot; type=&quot;text/xsl&quot;'"/>
		<document xmlns="urn:hl7-org:v3">
			<xsl:attribute name="xsi:schemaLocation" namespace="http://www.w3.org/2001/XMLSchema-instance" select="'urn:hl7-org:v3 https://www.accessdata.fda.gov/spl/schema/spl.xsd'"/>
			<id>
				<xsl:attribute name="root" namespace="" select="$documentIdentifier"/>
			</id>
			<code>
				<xsl:attribute name="code" namespace="" select="'51725-0'"/>
				<xsl:attribute name="codeSystem" namespace="" select="'2.16.840.1.113883.6.1'"/>
				<xsl:attribute name="displayName" namespace="" select="'ESTABLISHMENT REGISTRATION'"/>
			</code>
			<effectiveTime>
				<xsl:attribute name="value" namespace="" select="format-date($splDate, '[Y][M,2][D,2]', 'en', (), ())"/>
			</effectiveTime>
			<setId>
				<xsl:attribute name="root" namespace="" select="$setIdentifier"/>
			</setId>
			<versionNumber>
				<xsl:attribute name="value" namespace="" select="$version"/>
			</versionNumber>
			<xsl:for-each select="$var5_var">
				<xsl:variable name="var2_resultof_convertRegistrant" as="node()?">
					<xsl:call-template name="user:convertRegistrant">
						<xsl:with-param name="RegistrantOrganization" as="node()">
							<Organization xmlns="http://hl7.org/fhir">
								<xsl:sequence select="(./@node(), ./node())"/>
							</Organization>
						</xsl:with-param>
					</xsl:call-template>
				</xsl:variable>
				<xsl:for-each select="$var2_resultof_convertRegistrant">
					<author>
						<time>
							<xsl:sequence select="()"/>
						</time>
						<assignedEntity>
							<representedOrganization>
								<assignedEntity>
									<assignedOrganization>
										<xsl:for-each select="@classCode">
											<xsl:attribute name="classCode" namespace="" select="fn:string(.)"/>
										</xsl:for-each>
										<xsl:for-each select="@determinerCode">
											<xsl:attribute name="determinerCode" namespace="" select="fn:string(.)"/>
										</xsl:for-each>
										<xsl:for-each select="ns1:id">
											<id>
												<xsl:sequence select="(./@node(), ./node())"/>
											</id>
										</xsl:for-each>
										<xsl:for-each select="ns1:name">
											<name>
												<xsl:sequence select="fn:string(.)"/>
											</name>
										</xsl:for-each>
										<xsl:for-each select="ns1:contactParty">
											<contactParty>
												<xsl:sequence select="(./@node(), ./node())"/>
											</contactParty>
										</xsl:for-each>
										<xsl:for-each select="$var3_var">
											<xsl:variable name="var1_resultof_convertEstablishment" as="node()?">
												<xsl:call-template name="user:convertEstablishment">
													<xsl:with-param name="Organization" as="node()">
														<Organization xmlns="http://hl7.org/fhir">
															<xsl:sequence select="(./@node(), ./node())"/>
														</Organization>
													</xsl:with-param>
												</xsl:call-template>
											</xsl:variable>
											<xsl:for-each select="$var1_resultof_convertEstablishment">
												<assignedEntity>
													<xsl:sequence select="(./@node(), ./node())"/>
												</assignedEntity>
											</xsl:for-each>
										</xsl:for-each>
									</assignedOrganization>
								</assignedEntity>
							</representedOrganization>
						</assignedEntity>
					</author>
				</xsl:for-each>
			</xsl:for-each>
			<component>
				<xsl:for-each select="$var8_Bundle">
					<structuredBody>
						<xsl:sequence select="()"/>
					</structuredBody>
				</xsl:for-each>
			</component>
		</document>
	</xsl:template>
</xsl:stylesheet>
