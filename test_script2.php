<?php
if(isset($_GET['N']))
{
  $N = $_GET['N'];
  $prefix = generateRandomString(5);
  // execute R script from shell
  // this will save a plot at temp.png to the filesystem
  exec("Rscript script2.r $N $prefix");

  // return image tag
  $nocache = rand();
  echo('<a href="./tmp_result/'.$prefix.'_temp.png" target="_blank">Link</a>');

}

function generateRandomString($length) {
    $characters = '0123456789abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ';
    $charactersLength = strlen($characters);
    $randomString = '';
    for ($i = 0; $i < $length; $i++) {
        $randomString .= $characters[rand(0, $charactersLength - 1)];
    }
    return $randomString;
}
?>
