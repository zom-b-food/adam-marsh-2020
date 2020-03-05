<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">
        <h4>My Vacation Stops</h4>
        <xsl:apply-templates/>
    </xsl:template>

    <xsl:template match="stops">
        <xsl:apply-templates select="city"/>
        <xsl:apply-templates select="state"/>
        <xsl:apply-templates select="country"/>

    </xsl:template>

    <xsl:template match="city">
        City:
        <span class="xml">
            <xsl:value-of select="."/>
        </span>
        <br/>
    </xsl:template>

    <xsl:template match="state">
        State:
        <span class="xml">
            <xsl:value-of select="."/>
        </span>
        <br/>
    </xsl:template>

    <xsl:template match="country">
        Country:
        <span class="xml">
            <xsl:value-of select="."/>
        </span>
        <br/>
        <br/>
    </xsl:template>

</xsl:stylesheet>

