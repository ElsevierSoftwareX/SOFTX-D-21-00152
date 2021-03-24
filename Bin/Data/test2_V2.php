<?php
//************** exported from PKBD ****************
// knowledge base:
// info:

//****************** classes ***********************
class Osadki{
 var $Kolichestvo;
 function Init(){
  $this->Kolichestvo = "";
 }
}
class Temperatura_vozdukha{
 var $Znachenie;
 function Init(){
  $this->Znachenie = "";
 }
}
class Pogodnye_usloviya{
 var $Tip;
 function Init(){
  $this->Tip = "";
 }
}
class Chastota_poliva{
 var $Znachenie;
 function Init(){
  $this->Znachenie = "";
 }
}
class Sostoyanie_pochvy{
 var $Sostoyanie;
 function Init(){
  $this->Sostoyanie = "";
 }
}
class Urozhay{
 var $Pokazatel;
 function Init(){
  $this->Pokazatel = "";
 }
}

//*************** facts ****************************
$Chastota_poliva_ = new Chastota_poliva;
$Chastota_poliva_->Init();
$Osadki_ = new Osadki;
$Osadki_->Init();
$Temperatura_vozdukha_ = new Temperatura_vozdukha;
$Temperatura_vozdukha_->Init();

//**************** rules ***************************
//Температура воздуха+Осадки>Погодные условия_1
if (
((strpos($Temperatura_vozdukha_->Znachenie, "0-10") !== false))
 and
((strpos($Osadki_->Kolichestvo, "Малые") !== false))
){
 $Pogodnye_usloviya_ = new Pogodnye_usloviya;
 $Pogodnye_usloviya_->Init();
 $Pogodnye_usloviya_->Tip == "Холодная, сухая погода";
}
//Температура воздуха+Осадки>Погодные условия_2
if (
((strpos($Temperatura_vozdukha_->Znachenie, "11-30") !== false))
 and
((strpos($Osadki_->Kolichestvo, "Малые") !== false))
){
 $Pogodnye_usloviya_ = new Pogodnye_usloviya;
 $Pogodnye_usloviya_->Init();
 $Pogodnye_usloviya_->Tip == "Теплая, сухая погода";
}
//Температура воздуха+Осадки>Погодные условия_3
if (
((strpos($Temperatura_vozdukha_->Znachenie, "11-30") !== false))
 and
((strpos($Osadki_->Kolichestvo, "Обильные") !== false))
){
 $Pogodnye_usloviya_ = new Pogodnye_usloviya;
 $Pogodnye_usloviya_->Init();
 $Pogodnye_usloviya_->Tip == "Теплая, влажная погода";
}
//Погодные условия+Частота полива>Состояние почвы_1
if (
((strpos($Pogodnye_usloviya_->Tip, "Теплая, влажная погода") !== false))
 and
((strpos($Chastota_poliva_->Znachenie, "Часто") !== false))
){
 $Sostoyanie_pochvy_ = new Sostoyanie_pochvy;
 $Sostoyanie_pochvy_->Init();
 $Sostoyanie_pochvy_->Sostoyanie == "Отличное";
}
//Погодные условия+Частота полива>Состояние почвы_2
if (
((strpos($Pogodnye_usloviya_->Tip, "Теплая, влажная погода") !== false))
 and
((strpos($Chastota_poliva_->Znachenie, "Не часто") !== false))
){
 $Sostoyanie_pochvy_ = new Sostoyanie_pochvy;
 $Sostoyanie_pochvy_->Init();
 $Sostoyanie_pochvy_->Sostoyanie == "Удовлетворительное";
}
//Погодные условия+Частота полива>Состояние почвы_3
if (
((strpos($Pogodnye_usloviya_->Tip, "Холодная, сухая погода") !== false))
 and
((strpos($Chastota_poliva_->Znachenie, "Не часто") !== false))
){
 $Sostoyanie_pochvy_ = new Sostoyanie_pochvy;
 $Sostoyanie_pochvy_->Init();
 $Sostoyanie_pochvy_->Sostoyanie == "Неудовлетворительное";
}
//Погодные условия+Частота полива>Состояние почвы_4
if (
((strpos($Pogodnye_usloviya_->Tip, "Холодная, сухая погода") !== false))
 and
((strpos($Chastota_poliva_->Znachenie, "Часто") !== false))
){
 $Sostoyanie_pochvy_ = new Sostoyanie_pochvy;
 $Sostoyanie_pochvy_->Init();
 $Sostoyanie_pochvy_->Sostoyanie == "Удовлетворительное";
}
//Состояние почвы>Урожай_1
if (
((strpos($Sostoyanie_pochvy_->Sostoyanie, "Отличное") !== false))
){
 $Urozhay_ = new Urozhay;
 $Urozhay_->Init();
 $Urozhay_->Pokazatel == "Большой";
}
//Состояние почвы>Урожай_2
if (
((strpos($Sostoyanie_pochvy_->Sostoyanie, "Удовлетворительное") !== false))
){
 $Urozhay_ = new Urozhay;
 $Urozhay_->Init();
 $Urozhay_->Pokazatel == "Средний";
}
//Состояние почвы>Урожай_3
if (
((strpos($Sostoyanie_pochvy_->Sostoyanie, "Неудовлетворительное") !== false))
){
 $Urozhay_ = new Urozhay;
 $Urozhay_->Init();
 $Urozhay_->Pokazatel == "Малый";
}
?>
