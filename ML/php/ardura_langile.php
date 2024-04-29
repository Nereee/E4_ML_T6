<?php

/* Ardura zehatz bat duten langileak erakusteko*/

   $arauak = new DOMDocument();
   $arauak ->load("ardura_langile.xsl");

   $datuak = new DOMDocument();
   $datuak->load("XSL-APA.xml");

   $proc = new XSLTProcessor();
   $proc->importStylesheet($arauak);

   $proc ->setParameter("",'id_ardura',$_GET['id_ardura']);
   
   echo $proc->transformToXML($datuak);

?>
