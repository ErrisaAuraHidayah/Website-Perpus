<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Document</title>
</head>
<body>
<?php 
    include "header.php";
?>
<h2>Selamat datang <?= $_SESSION['nama_siswa'] ?> di website Perpus Online.</h2>
<?php
    include "footer.php";
?>

    
</body>
</html>