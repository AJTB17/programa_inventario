<?php
    function changeDecimalNotation($str){
        $thousandsSeparator = "";
        $strings = explode(".", $str);
        if (strlen($strings[0]) > 3){
            $separator = str_split(strrev($strings[0]), 3);
            for ($i = 0 ; $i < count($separator) ; $i++){
                if ($i == 0) {
                    $thousandsSeparator = $thousandsSeparator.$separator[$i];
                } else { 
                    $thousandsSeparator = $thousandsSeparator.".".$separator[$i];
                }
            }
            $separadorDeMiles = strrev($thousandsSeparator);
            return $separadorDeMiles ."," .$strings[1];
        } else {
            return $strings[0] ."," .$strings[1];
        }
    }
?>