<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>
  <xsl:template match="/">
    <html>
      <head>
        <style type="text/css">
		.pais {background-color:yellow;}
		.departamento {background-color:red; display:block;} 
		.cabecera {color:white; display:inline;} 
		.habitantes {color:yellow; display:inline;}
		.altura {color:yellow;font-size:1cm; display:none;}
        </style>
      </head>
      <body>
        <xsl:for-each select="pais/departamento">
          <div class="departamento">
            <span class="nombre"><xsl:value-of select="nombre"/></span>
            <span class="cabecera"><xsl:value-of select="cabecera"/></span>
            <span class="habitantes"><xsl:value-of select="habitantes"/></span>
	    <span class="altura"><xsl:value-of select="altura"/></span>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>