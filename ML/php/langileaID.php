<?php

/* Langile barraren datuak erakusteko*/

   $arauak = new DOMDocument();
   $arauak ->load("langileaID.xsl");

   $datuak = new DOMDocument();
   $datuak->load("XSL-APA.xml");

   $proc = new XSLTProcessor();
   $proc->importStylesheet($arauak);

   $proc ->setParameter("",'id_langilea',$_GET['id_langilea']);
   
   echo $proc->transformToXML($datuak);

?>
