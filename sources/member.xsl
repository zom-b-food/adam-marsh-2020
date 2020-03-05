<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:key name="Attribute" match="Name" use="@Name"/>
    <xsl:key name="ReferenceObject" match="ReferenceId" use="@ReferenceId"/>
    <xsl:key name="Object" match="Class" use="@Class"/>
    <xsl:key name="Object" match="Xid" use="@Xid"/>
    <xsl:key name="Object" match="ModifiedDateTime" use="@ModifiedDateTime"/>
    <xsl:key name="Object" match="UpdatedBy" use="@UpdatedBy"/>
    <xsl:key name="Property" match="Name" use="@Name"/>

    <xsl:template match="References">
        <xsl:for-each select="ReferenceObject">
            <xsl:call-template name="ReferenceID"/>
            <xsl:call-template name="Xid"/>
            <xsl:for-each select="Attribute">
                <xsl:call-template name="Attribute"/>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="ReferenceID">
        <br/>
        <strong>REFERENCE ID:</strong>
        <span style="color:#036335">
            <xsl:value-of select="@ReferenceId"/>
        </span>
        <br/>
    </xsl:template>
    <xsl:template name="Xid">
        <strong>Xid:</strong>
        <span style="color:#036335">
            <xsl:value-of select="Xid"/>
        </span>
        <br/>
    </xsl:template>
    <xsl:template name="Attribute">
        <strong>Attribute Name:</strong>
        <span style="color:#036335">
            <xsl:value-of select="@Name"/>
        </span>
        <br/>
        <xsl:if test="LinkValue != '' ">
            <strong>--Link Value:</strong>
            <span style="color:#036335">
                <xsl:value-of select="LinkValue"/>
            </span>
            <br/>
        </xsl:if>
        <xsl:if test="StringValue != '' ">
            <strong>--String Value:</strong>
            <span style="color:#036335">
                <xsl:value-of select="StringValue"/>
            </span>
            <br/>
        </xsl:if>
    </xsl:template>


    <xsl:template match="Object">
        <xsl:for-each select="Object">
            <xsl:call-template name="ObjectID"/>
            <xsl:for-each select="Property">
                <xsl:call-template name="Property"/>
            </xsl:for-each>
        </xsl:for-each>
    </xsl:template>

    <xsl:template name="ObjectID">
        <br/>
        <strong>OBJECT CLASS:</strong>
        <span style="color:#036335">
            <xsl:value-of select="@Class"/>
        </span>
        <br/>
        <strong>Xid:</strong>
        <span style="color:#036335">
            <xsl:value-of select="@Xid"/>
        </span>
        <br/>
        <strong>Modified Timestamp:</strong>
        <span style="color:#036335">
            <xsl:value-of select="@ModifiedDateTime"/>
        </span>
        <br/>
        <strong>Updated by:</strong>
        <span style="color:#036335">
            <xsl:value-of select="@UpdatedBy"/>
        </span>
        <br/>
    </xsl:template>
    <xsl:template name="Property">
        <strong>Property Name:</strong>
        <span style="color:#036335">
            <xsl:value-of select="@Name"/>
        </span>
        <xsl:if test="BooleanValue != '' ">
            <br/>
            <strong>--Boolean Value:</strong>
            <span style="color:#036335">
                <xsl:value-of select="BooleanValue"/>
            </span>
        </xsl:if>
        <xsl:if test="NumberValue != '' ">
            <br/>
            <strong>--Number Value:</strong>
            <span style="color:#036335">
                <xsl:value-of select="NumberValue"/>
            </span>
        </xsl:if>
        <xsl:if test="StringValue != '' ">
            <br/>
            <strong>--String Value:</strong>
            <span style="color:#036335">
                <xsl:value-of select="StringValue"/>
            </span>
        </xsl:if>
        <xsl:if test="LinkValue != '' ">
            <br/>
            <strong>--Link Value:</strong>
            <span style="color:#036335">
                <xsl:value-of select="LinkValue"/>
            </span>
        </xsl:if>
        <br/>
    </xsl:template>

</xsl:stylesheet>