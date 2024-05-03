<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:template match="/enpresa">
        <html lang="zxx">
            <head>
                <meta charset="utf-8" />
                <meta name="author" content="6.Taldea" />
                <meta name="keywords" content="Musica, Abestiak, Albumak, Podcast" />
                <meta name="description" content="APA music app web" />
                <meta name="viewport" content="width=device-width, initial-scale=1" />
                <title>APA music</title>
                <link rel="stylesheet" href="../css/plantilla.css" />
            </head>
            <body>
                <!-- HEADER -->
                <header>
                    <div>
                        <a href="../html/hasiera.html">
                            <img src="../irudiak/logo.png" alt="logoa" />
                        </a>
                        <h1>APA MUSIC</h1>
                    </div>
                    <div>
                        <!--NABEGAZIO
                        BARRA-->
                        <nav id="G">
                            <ul>
                                <li>
                                    <a href="../html/hasiera.html">Hasiera</a>
                                </li>
                                <li id="desplegablea" class="dropdown">
                                    <a href="../php/langileak.php">Gure Langileak</a>
                                    <div id="desplegablea-a">
                                        <xsl:for-each select="ardurak/ardura">
                                            <a href="../php/ardura_langile.php?id_ardura={@id}">
                                                <p>
                                                    <xsl:value-of select="izena"/>
                                                </p>
                                            </a>
                                        </xsl:for-each>
                                    </div>
                                </li>
                                <li>
                                    <a href="../php/departamentuak.php">Departamentuak</a>
                                </li>
                            </ul>
                        </nav>
                    </div>
                </header>

                <!-- MAIN -->
                <main>
                    <h2>Langileak</h2>
                    <div class="LD">
                        <h3>ARDURAK</h3>
                        <div class="A">
                            <xsl:for-each select="ardurak/ardura">
                                <a href="../php/ardura_langile.php?id_ardura={@id}">
                                    <p>
                                        <xsl:value-of select="izena"/>
                                    </p>
                                </a>
                            </xsl:for-each>
                        </div>
                    </div>
                    <!-- Langileak hurrengo datuak edukiko dituzte -->
                    <xsl:for-each select="langileak/langilea[ardura = $id_ardura]">
                        <div class="LD">
                            <!-- Langilearen irudia erakutsi -->
                            <img src="{img}" alt="Employee Photo" />
                            <div>
                                <h3>
                                    <xsl:value-of select="izena" />
                                </h3>
                                <h3>
                                    <xsl:value-of select="abizena" />
                                </h3>
                                <p>NAN: <xsl:value-of select="nan" />
                                </p>
                                <p>Jaiotze Data: <xsl:value-of select="jaiotzedata" />
                                </p>
                                <p>Posta: <xsl:value-of select="posta" />
                                </p>
                                <p>Telefonoa: <xsl:value-of select="telefonoa" />
                                </p>
                                <p>Helbidea: <xsl:value-of select="helbidea/kalea" />
,                                <xsl:value-of select="helbidea/zbk" />
,                                <xsl:value-of select="helbidea/herria" />
                            </p>
                            <xsl:variable name="ardura_id" select="ardura" />
                            <xsl:for-each select="/enpresa/ardurak/ardura[@id = $ardura_id]">
                                <p>Ardura: <xsl:value-of select="izena" />
                                </p>
                            </xsl:for-each>
                            <p>Kontratdata: <xsl:value-of select="kontratdata" />
                            </p>
                            <p>Soldata: <xsl:value-of select="soldata" />
                            </p>
                            <!-- Departamentuaren izena lortu id-a erabiliz -->
                            <xsl:variable name="departamentu_id" select="departamentua" />
                            <xsl:for-each select="/enpresa/departamentuak/departamentua[@id = $departamentu_id]">
                                <p>Departamentua: <xsl:value-of select="izena" />
                                </p>
                            </xsl:for-each>
                        </div>
                    </div>
                </xsl:for-each>
            </main>

            <!-- FOOTER -->
            <footer>
                <p>APA music experience</p>
                <img id="logoa" src="../irudiak/logo.png" alt="Gure taldea" />
                <h6 class="fi">Online sareak</h6>
                <div id="sareak">
                    <a href="https://www.instagram.com/" target="_blank">
                        <img class="fi" src="../irudiak/instagram.png" alt="Instagram" />
                    </a>
                    <a href="https://twitter.com/?lang=es" target="_blank">
                        <img class="fi" src="../irudiak/twitter.png" alt="Twitter" />
                    </a>
                    <a href="https://www.facebook.com/?locale=es_ES" target="_blank">
                        <img class="fi" src="../irudiak/facebook.png" alt="Facebook" />
                    </a>
                </div>
                <a href="http://creativecommons.org/licenses/by-nc-nd/4.0/?ref=chooser-v1" target="_blank" rel="license noopener noreferrer" style="display:inline-block;">
                    <img class="fi" style="height:22px;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/cc.svg?ref=chooser-v1" alt="1" />
                    <img style="height:22px;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/by.svg?ref=chooser-v1" alt="2" />
                    <img style="height:22px;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/nc.svg?ref=chooser-v1" alt="3" />
                    <img style="height:22px;margin-left:3px;vertical-align:text-bottom;" src="https://mirrors.creativecommons.org/presskit/icons/nd.svg?ref=chooser-v1" alt="4" />
                </a>
            </footer>
        </body>
    </html>
</xsl:template>
</xsl:stylesheet>