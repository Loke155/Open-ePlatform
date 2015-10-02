<?xml version="1.0" encoding="ISO-8859-1" standalone="no"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output encoding="ISO-8859-1" method="html" version="4.0"/>

	<xsl:include href="classpath://com/nordicpeak/flowengine/queries/common/xsl/QueryAdminCommon.sv.xsl"/>
	<xsl:include href="RadioButtonQueryAdminTemplates.xsl"/>
	
	<xsl:variable name="java.queryTypeName">Radioknappfråga</xsl:variable>
	<xsl:variable name="java.queryTypeDescription">In Utero är det amerikanska grungebandet Nirvanas tredje och sista studioalbum, släppt den 1 september 1993 av skivbolaget Geffen Records. Efter framgångarna med bandets tidigare album Nevermind från 1991 ville Kurt Cobain göra ett mer extremt album med ett råare sound. Nirvana kontaktade därför Steve Albini, som hade sina rötter i noiserockbandet Big Black, för att se om han var intresserad av att producera albumet, vilket han var. Cobain, som skrev de flesta låtarna på albumet, var imponerad av två av Albinis tidigare produktioner, Surfer Rosa av Pixies och Pod av The Breeders, och ville utnyttja Albinis teknik att fånga upp den naturliga atmosfären i inspelningsstudion med hjälp av flera olika mikrofoner utplacerade runt om i studion.
	När In Utero lanserades fick det främst positiva reaktioner även om vissa recensenter var kluvna till albumet. Recensionerna handlade främst om hur olikt albumet var jämfört med Nevermind och att det verkade beröra de problem Cobain hade med att hantera berömmelsen han fick i och med Nirvanas genombrott två år tidigare. Albumet har i efterhand benämnts som "Cobains självmordsbrev", eftersom han avled i april 1994, drygt ett halvår efter lanseringen av In Utero. Albumet nådde som bäst plats 1 i USA, Sverige och Storbritannien samt nådde upp på topp 10 i länder såsom Kanada, Australien, Finland och Norge. In Utero har certifierats för 6x platina i Kanada, 5x platina i USA och platina i Frankrike. I Sverige har albumet certifierats för guld. In Utero kom på plats 435 på Rolling Stones lista The 500 Greatest Albums of All Time och nominerades i kategorin Best Alternative Music Album vid Grammy Awards 1994. </xsl:variable>
	<!-- Lägger frågan i gruppen specialfrågor istället för i standardfrågor -->
	<xsl:variable name="java.queryTypeIsSpecial">true</xsl:variable>
	<xsl:variable name="java.countText">Antal</xsl:variable>
	<xsl:variable name="java.alternativesText">Alternativ</xsl:variable>
	
	<xsl:variable name="i18n.RadioButtonQueryNotFound">Den begärda frågan hittades inte!</xsl:variable>
	
</xsl:stylesheet>
