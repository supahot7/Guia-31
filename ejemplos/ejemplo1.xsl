<?xml version="1.0"?>
<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
  <xsl:output method="html"/>
  <xsl:template match="/">
    <html>
      <head>
        <style type="text/css">
          .fichero {background-color:blue;}
          .ficha {background-color:red; display:block;} 
          .nombre {color:white; display:inline;} 
          .apellido {color:yellow; display:inline;}
          .direccion {color:yellow;font-size:1cm; display:none;}
        </style>
      </head>
      <body>
        <xsl:for-each select="fichero/ficha">
          <div class="ficha">
            <span class="nombre"><xsl:value-of select="nombre"/></span>
            <span class="apellido"><xsl:value-of select="apellido"/></span>
            <span class="direccion"><xsl:value-of select="direccion"/></span>
          </div>
        </xsl:for-each>
      </body>
    </html>
  </xsl:template>
</xsl:stylesheet>
