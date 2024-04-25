<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">

  <xsl:template match="/">
    <html>
      <head>
        <title>Enpresaren Txostena</title>
      </head>
      <body>
        <h1>Langileak</h1>
        <table border="1">
          <tr>
            <th>ID</th>
            <th>Izena</th>
            <th>Posta</th>
            <th>Departamentua</th>
            <th>Rola</th>
          </tr>

          <xsl:for-each select="enpresa/langileak/langilea">
            <tr>
              <td><xsl:value-of select="id"/></td>
              <td><xsl:value-of select="izena"/></td>
              <td><xsl:value-of select="posta"/></td>
              <td><xsl:value-of select="departamentua"/></td>
              <td><xsl:value-of select="ardura"/></td>
            </tr>
          </xsl:for-each>
        </table>
      </body>
    </html>
  </xsl:template>

</xsl:stylesheet>
