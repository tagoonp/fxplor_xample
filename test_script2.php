<?php
if(isset($_GET['N']))
{
  $N = $_GET['N'];

  // execute R script from shell
  // this will save a plot at temp.png to the filesystem
  exec("Rscript script2.r $N");

  // return image tag
  $nocache = rand();
  echo("");
}
?>
