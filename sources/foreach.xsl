<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet version="1.0"
                xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

    <xsl:template match="/">

        <h4>My Vacation Stops</h4>
        <table width="200px" cellpadding="3" cellspacing="0" style="border:1px solid #333333;">
            <tr>
                <th style="border-right:1px solid #333333;">City</th>
                <th>Country</th>
            </tr>
            <xsl:for-each select="vacation/stops">
                <tr>
                    <td>
                        <xsl:value-of select="city"/>
                    </td>
                    <td>
                        <xsl:value-of select="country"/>
                    </td>
                </tr>
            </xsl:for-each>
        </table>

    </xsl:template>

</xsl:stylesheet> 