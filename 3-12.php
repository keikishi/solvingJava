<?php
    echo "整数値A：";
    $re_a = (int)fgets(STDIN);
    echo "整数値B：";
    $re_b = (int)fgets(STDIN);

    if ($re_a < $re_b)
        $b = $re_b;
    else
        $b = $re_a;
    
    echo $b."の方が大きいです\n";
?>