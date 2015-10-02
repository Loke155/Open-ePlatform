<?xml version="1.0" encoding="ISO-8859-1" standalone="no"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
	<xsl:output encoding="ISO-8859-1" method="html" version="4.0"/>

	<xsl:include href="classpath://com/nordicpeak/flowengine/queries/common/xsl/QueryAdminCommon.sv.xsl"/>
	<xsl:include href="RadioButtonQueryAdminTemplates.xsl"/>
	
	<xsl:variable name="java.queryTypeName">Radioknappfr�ga</xsl:variable>
	<xsl:variable name="java.queryTypeDescription">In Utero �r det amerikanska grungebandet Nirvanas tredje och sista studioalbum, sl�ppt den 1 september 1993 av skivbolaget Geffen Records. Efter framg�ngarna med bandets tidigare album Nevermind fr�n 1991 ville Kurt Cobain g�ra ett mer extremt album med ett r�are sound. Nirvana kontaktade d�rf�r Steve Albini, som hade sina r�tter i noiserockbandet Big Black, f�r att se om han var intresserad av att producera albumet, vilket han var. Cobain, som skrev de flesta l�tarna p� albumet, var imponerad av tv� av Albinis tidigare produktioner, Surfer Rosa av Pixies och Pod av The Breeders, och ville utnyttja Albinis teknik att f�nga upp den naturliga atmosf�ren i inspelningsstudion med hj�lp av flera olika mikrofoner utplacerade runt om i studion.
	N�r In Utero lanserades fick det fr�mst positiva reaktioner �ven om vissa recensenter var kluvna till albumet. Recensionerna handlade fr�mst om hur olikt albumet var j�mf�rt med Nevermind och att det verkade ber�ra de problem Cobain hade med att hantera ber�mmelsen han fick i och med Nirvanas genombrott tv� �r tidigare. Albumet har i efterhand ben�mnts som "Cobains sj�lvmordsbrev", eftersom han avled i april 1994, drygt ett halv�r efter lanseringen av In Utero. Albumet n�dde som b�st plats 1 i USA, Sverige och Storbritannien samt n�dde upp p� topp 10 i l�nder s�som Kanada, Australien, Finland och Norge. In Utero har certifierats f�r 6x platina i Kanada, 5x platina i USA och platina i Frankrike. I Sverige har albumet certifierats f�r guld. In Utero kom p� plats 435 p� Rolling Stones lista The 500 Greatest Albums of All Time och nominerades i kategorin Best Alternative Music Album vid Grammy Awards 1994. </xsl:variable>
	<!-- L�gger fr�gan i gruppen specialfr�gor ist�llet f�r i standardfr�gor -->
	<xsl:variable name="java.queryTypeIsSpecial">true</xsl:variable>
	<xsl:variable name="java.countText">Antal</xsl:variable>
	<xsl:variable name="java.alternativesText">Alternativ</xsl:variable>
	
	<xsl:variable name="i18n.RadioButtonQueryNotFound">Den beg�rda fr�gan hittades inte!</xsl:variable>
	
</xsl:stylesheet>
