<?xml version="1.0" encoding="ISO-8859-1" standalone="no"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output encoding="ISO-8859-1" method="html" version="4.0"/>

	<xsl:include href="classpath://com/nordicpeak/flowengine/queries/common/xsl/QueryCommon.sv.xsl"/>
	<xsl:include href="TextAreaQueryTemplates.xsl"/>
	
	<xsl:variable name="i18n.RequiredField">Den h�r fr�gan �r obligatorisk!</xsl:variable>
	<xsl:variable name="i18n.TooLongFieldContent.part1">Inneh�llet i det h�r f�ltet �r </xsl:variable>
	<xsl:variable name="i18n.TooLongFieldContent.part2"> tecken vilket �verskrider maxgr�nsen p� </xsl:variable>
	<xsl:variable name="i18n.TooLongFieldContent.part3"> tecken!</xsl:variable>
	<xsl:variable name="i18n.UnknownValidationError">Ett ok�nt valideringsfel har uppst�tt!</xsl:variable>
</xsl:stylesheet>
