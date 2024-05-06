<?php

   $arauak = new DOMDocument();
   $arauak->load("../xml/ardura_langile.xsl");

   $datuak = new DOMDocument();
   $datuak->load("../xml/XML-APA.xml");


   $proc = new XSLTProcessor();
   $proc->importStylesheet($arauak);

   $id_ardura = isset($_GET['id_ardura']) ? $_GET['id_ardura'] : '';

   $proc->setParameter('', 'id_ardura', $id_ardura);

   echo $proc->transformToXML($datuak);

?>