<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<body>
  <h2>Taula de Receptes!</h2>
  <table border="1">
    <tr bgcolor="#7ABA96">
      <th style="text-align:left">Titol</th>
      <th style="text-align:left">Artista</th>
      <th style="text-align:left">Data</th>
      <th style="text-align:left">Any</th>
      <th style="">Ingredients</th>
      <th style="text-align:left">Pasos</th>
    </tr>
    <xsl:for-each select="catalog/cd">
    <tr>
      <td><xsl:value-of select="title"/></td>
      <td><xsl:value-of select="artist"/></td>
      <td><xsl:value-of select="date"/></td>
      <td><xsl:value-of select="year"/></td>
      <td><xsl:value-of select="ingredients"/>
              <ul><xsl:for-each select="ingredient">
                <li><xsl:value-of select="ingredient"/></li>
              </xsl:for-each>
      </ul>
      </td>
      <td><xsl:value-of select="price"/></td>
    </tr>
    </xsl:for-each>
  </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>