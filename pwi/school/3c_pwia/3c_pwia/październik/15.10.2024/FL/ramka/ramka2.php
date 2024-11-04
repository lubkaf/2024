<?php
        
        
        function ramka(){
            if(isset($_POST["a"]) &&!empty($_POST["a"])){
            $grubosc = $_POST["a"];
        }
        if(isset($_POST["b"]) &&!empty($_POST["b"])){
            $kolor = $_POST["b"];
        }
        if(isset($_POST["c"]) &&!empty($_POST["c"])){
            $styl = $_POST["c"];
            echo "<div style='border: ".$grubosc. "px $styl $kolor;'>ELOELO</div>";
        }
    }
        ramka();
    ?>
