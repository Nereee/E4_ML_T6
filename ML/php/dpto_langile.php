<?php

    $arauak = new DOMDocument();
    $arauak->load("../xml/dpto_lang.xsl");

    $datuak = new DOMDocument();
    $datuak->load("../xml/XML-APA.xml");

    $proc = new XSLTProcessor();
    $proc->importStylesheet($arauak);

    $id_depto = $_GET['id_depto'];

    $proc->setParameter('', 'id_depto', $id_depto);

    echo $proc->transformToXML($datuak);
    
?>
