<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/">
<html>
<head>
  <title>Noves Receptes</title>
  <link rel="stylesheet" href="../css/estilLlista.css"/>
</head>
<body>
    <header style="text-align: center;">
    <hr/>
    <center><img alt="Logo" src="../imagenes/delicias.png"/></center>
    <hr/>
    <nav>
      <a class="lletra" href="../index.html">INICIO</a>
      <a class="lletra" href="">SOBRE MÍ</a>
      <a class="lletra" href="../listado/listado.html">RECETAS</a>
      <a class="lletra" href="../contacto/contacto.html">CONTACTO</a>
      <a class="lletra" href="../xsl/recetas.xml">OTRAS COSAS</a> 
      <a class="lletra" href="../xsl/recetas.xml">NOVES RECEPTES</a>
    </nav>
    <hr/>
    </header>
    <h1>Noves Receptes: </h1>
    <xsl:for-each select="catalog/cd"> <br/>
      <h1 class="titol"><xsl:value-of select="title"/></h1>
      <br/>
      <hr/>
      <xsl:value-of select="artist"/><br/><br/>
      <xsl:value-of select="date"/>
      <xsl:value-of select="year"/><br/><br/>
      <img class="imatges">
        <xsl:attribute name="src">
          <xsl:value-of select="imatge"/>
        </xsl:attribute>
      </img><br/><br/>
      <xsl:value-of select="resum"/>
      <h3><xsl:value-of select="ingr"/></h3>
      <p ><xsl:for-each select="ingredients/ingredient">
              <ul>
              <li><xsl:value-of select="."/></li>
              </ul>
      </xsl:for-each></p><br/>
      <h3><xsl:value-of select="prep"/></h3>
      <p ><xsl:for-each select="preparacions/preparacio">
              <ul>
              <li><xsl:value-of select="."/></li>
              </ul>
      </xsl:for-each></p><br/>
      <hr/>
    </xsl:for-each>
    <footer class="abaix" style="background-color: black;">
        <nav class="middle">
            <a class="footer" target="_blank" href="https://www.facebook.com">FACEBOOK</a>
            <a class="footer" target="_blank" href="https://twitter.com">TWITTER</a>
            <a class="footer" target="_blank" href="https://www.instagram.com">INSTAGRAM</a>
            <a class="footer" target="_blank" href="https://www.pinterest.es">PINTEREST</a>
            <a class="footer" target="_blank" href="https://mail.google.com">EMAIL</a>
            <a class="footer" target="_blank" href="http://rss.elmundo.es/rss/">RSS</a> 
        </nav>
    </footer>
</body>
</html>
</xsl:template>
</xsl:stylesheet>