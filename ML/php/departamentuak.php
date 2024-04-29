<?php

/* DOM dokumentu berri bat sortzen dugu XSLT arauekin eta XML datuekin */

   $arauak = new DOMDocument();
   $arauak ->load("../xml/departamentuak.xsl");

   $datuak = new DOMDocument();
   $datuak->load("../xml/XML-APA.xml");

/* Arau horiek aplikatzeko "motor" bat sortzen dugu. Transformazio-arauak kargatuko dizkizugu. Arau horiek aplikatuko dizkiogu dokumentuari */

   $proc = new XSLTProcessor();
   $proc->importStylesheet($arauak);

   echo $proc->transformToXML($datuak);
?>
