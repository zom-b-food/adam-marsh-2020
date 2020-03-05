<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
    <xsl:template match="/">
        <style type="text/css">@import url('https://asset.ghc.org/ghc-resources/styles/specialties-slider.css');</style>
        <div class="imgSlider">
            <div id="nav"></div>
            <xsl:for-each select="//Group">
                <xsl:if test="Datum[@Name='Slide Link']">
                    <xsl:call-template name="getSlides"/>
                </xsl:if>
            </xsl:for-each>
            <!-- imageSlider -->
        </div>
        <!-- TODO: pls remove before final deploy -->
        <script type="text/javascript" src="https://ajax.googleapis.com/ajax/libs/jquery/1.7.2/jquery.min.js"></script>
        <script type="text/javascript"
                src="$URL_PREFIX/ghc-resources/scripts/malsup/cycle/jquery.cycle.all.js"></script>
        <script type="text/javascript" src="https://asset.ghc.org/ghc-resources/scripts/specialties-slider.js"></script>
    </xsl:template>

    <xsl:template name="getSlides">
        <div class="slide">
            <a href="{Datum[@Name='Slide Link']}">
                <xsl:if test="Datum[@Name='Slide']/Image/Path != '' ">
                    <img src="{Datum[@Name='Slide']/Image/Path}" alt="{Datum[@Name='Slide']/Image/Description}"/>
                </xsl:if>
            </a>
            <div class="banner">
                <div class="description">
                    <h3>
                        <xsl:value-of disable-output-escaping="yes" select="Datum[@Name='Slide Headline']"/>
                    </h3>
                    <span>
                        <xsl:value-of select="Datum[@Name='Slide Tagline']"/>
                    </span>
                </div>
                <!-- description -->
                <a class="action" href="{Datum[@Name='Slide Link']}">
                    <xsl:value-of select="Datum[@Name='Button']"/>
                </a>
            </div>
            <!-- banner -->
        </div>
        <!-- slide -->
    </xsl:template>
</xsl:stylesheet>