<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/enpresa">
        <html lang="zxx">
            <head>
                <meta charset="utf-8"/>
                <meta name="author" content="6.Taldea"/>
                <meta name="keywords" content="Musica, Abestiak, Albumak, Podcast"/>
                <meta name="description" content="APA music app web"/>
                <meta name="viewport" content="width=device-width, initial-scale=1"/>
                <title>APA music</title>
                <link rel="stylesheet" href="../css/plantilla.css"/>
            </head>
            <body>
                <!-- HEADER -->
                <header>
                    <div id="image-text-container">
                        <a href="../html/hasiera.html"><img src="../irudiak/logo.png" alt="logoa"/></a>
                        <h1>APA MUSIC</h1>
                    </div>
                    <div>
                        <nav>
                            <ul>
                                <li><a href="../html/hasiera.html">Hasiera</a></li>
                                <li><a href="../php/langileak.php">Langileak</a></li>
                                <li><a href="../php/departamentuak.php">Departamentuak</a></li>
                            </ul>
                        </nav>
                    </div>
                </header>

                <!-- MAIN -->
                <main>
                    <h2>Departamentuak</h2>
                    <!--XML dokumentuaren bihurketa-->
                    <xsl:for-each select="departamentuak/departamentua">
                        <div class="LD">
                            <div>
                                <h3><xsl:value-of select="izena"/></h3>
                                <p>Helbidea: <xsl:value-of select="helbidea/kalea"/>, <xsl:value-of select="helbidea/zbk"/>, <xsl:value-of select="helbidea/herria"/></p>
                                <p>Telefonoa: <xsl:value-of select="telefono"/></p>
                                <p>Posta: <xsl:value-of select="posta"/></p>
                            </div>
                        </div>
                    </xsl:for-each>
                </main>

                <!-- FOOTER -->
                <footer>
                    <p>APA music experience</p>
                    <img id="logoa" src="../irudiak/logo.png" alt="Gure taldea"/>
                    <h6 class="fi">Online sareak</h6>
                    <div id="sareak">
                        <a href="https://www.instagram.com/" target="_blank"><img class="fi" src="../irudiak/instagram.png" alt="Instagram"/></a>
                        <a href="https://twitter.com/?lang=es" target="_blank"><img class="fi" src="../irudiak/twitter.png" alt="Twitter"/></a>
                        <a href="https://www.facebook.com/?locale=es_ES" target="_blank"><img class="fi" src="../irudiak/facebook.png" alt="Facebook"/></a>
                    </div>
                    <a href="http://creativecommons.org/licenses/by-nc-nd/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">
                        <img class="fi" style="height:22px;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1" alt="1"/>
                        <img style="height:22px;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1" alt="2"/>
                        <img style="height:22px;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/nc.svg?ref=chooser-v1" alt="3"/>
                        <img style="height:22px;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/nd.svg?ref=chooser-v1" alt="4"/>
                    </a>
                </footer>
            </body>
        </html>
    </xsl:template>
</xsl:stylesheet>
