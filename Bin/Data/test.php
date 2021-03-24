<?php
//************** exported from PKBD ****************
//****************** classes ***********************
class tekhnologiya_izgotovleniya{
 var $naimenovanie;
 function Init(){
  $this->naimenovanie = "5";
 }
}
class sreda{
 var $tip;
 function Init(){
  $this->tip = "666";
 }
}
class nagruzka{
 var $tip;
 function Init(){
  $this->tip = "5";
 }
}
class degradatsionnyy_protsess{
 var $naimenovanie;
 function Init(){
  $this->naimenovanie = "пап";
 }
}
class kinetika{
 var $naimenovanie;
 function Init(){
  $this->naimenovanie = "7";
 }
}
class vneshnie_proyavleniya{
 var $naimenovanie;
 function Init(){
  $this->naimenovanie = "";
 }
}
//*************** facts ****************************
$kinetika_ = new kinetika;
$kinetika_->Init();
//**************** rules ***************************
if (
(($sreda_->tip == "666"))
 and
(($tekhnologiya_izgotovleniya_->naimenovanie == "5"))
 and
(($nagruzka_->tip == "5"))
){
 $degradatsionnyy_protsess_ = new degradatsionnyy_protsess;
 $degradatsionnyy_protsess_->Init();
 $degradatsionnyy_protsess_->naimenovanie == "пап";
}
if (
(($kinetika_->naimenovanie == "7"))
){
 $vneshnie_proyavleniya_ = new vneshnie_proyavleniya;
 $vneshnie_proyavleniya_->Init();
 $vneshnie_proyavleniya_->naimenovanie == "it works!";
}
?>
