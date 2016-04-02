<?php
    
    // const vars init
    const SET_OK            = 1;
    const GET_DATA_ERROR    = 1001;
    
    // get from signage app
    $data = $_GET["data"];
    
    // vars init
    $returnNum = SET_OK;
    
    // save data
    if( $data === "" || $data === null )
        $returnNum = GET_DATA_ERROR;
    
    echo $returnNum;
    
?>