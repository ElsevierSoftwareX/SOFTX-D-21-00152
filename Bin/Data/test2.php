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
//����������� �������+������>�������� �������_1
if (
(($Temperatura_vozdukha_->Znachenie == "0-10"))
 and
(($Osadki_->Kolichestvo == "�����"))
){
 $Pogodnye_usloviya_ = new Pogodnye_usloviya;
 $Pogodnye_usloviya_->Init();
 $Pogodnye_usloviya_->Tip == "��������, ����� ������";
}
//����������� �������+������>�������� �������_2
if (
(($Temperatura_vozdukha_->Znachenie == "11-30"))
 and
(($Osadki_->Kolichestvo == "�����"))
){
 $Pogodnye_usloviya_ = new Pogodnye_usloviya;
 $Pogodnye_usloviya_->Init();
 $Pogodnye_usloviya_->Tip == "������, ����� ������";
}
//����������� �������+������>�������� �������_3
if (
(($Temperatura_vozdukha_->Znachenie == "11-30"))
 and
(($Osadki_->Kolichestvo == "��������"))
){
 $Pogodnye_usloviya_ = new Pogodnye_usloviya;
 $Pogodnye_usloviya_->Init();
 $Pogodnye_usloviya_->Tip == "������, ������� ������";
}
//�������� �������+������� ������>��������� �����_1
if (
(($Pogodnye_usloviya_->Tip == "������, ������� ������"))
 and
(($Chastota_poliva_->Znachenie == "�����"))
){
 $Sostoyanie_pochvy_ = new Sostoyanie_pochvy;
 $Sostoyanie_pochvy_->Init();
 $Sostoyanie_pochvy_->Sostoyanie == "��������";
}
//�������� �������+������� ������>��������� �����_2
if (
(($Pogodnye_usloviya_->Tip == "������, ������� ������"))
 and
(($Chastota_poliva_->Znachenie == "�� �����"))
){
 $Sostoyanie_pochvy_ = new Sostoyanie_pochvy;
 $Sostoyanie_pochvy_->Init();
 $Sostoyanie_pochvy_->Sostoyanie == "������������������";
}
//�������� �������+������� ������>��������� �����_3
if (
(($Pogodnye_usloviya_->Tip == "��������, ����� ������"))
 and
(($Chastota_poliva_->Znachenie == "�� �����"))
){
 $Sostoyanie_pochvy_ = new Sostoyanie_pochvy;
 $Sostoyanie_pochvy_->Init();
 $Sostoyanie_pochvy_->Sostoyanie == "��������������������";
}
//�������� �������+������� ������>��������� �����_4
if (
(($Pogodnye_usloviya_->Tip == "��������, ����� ������"))
 and
(($Chastota_poliva_->Znachenie == "�����"))
){
 $Sostoyanie_pochvy_ = new Sostoyanie_pochvy;
 $Sostoyanie_pochvy_->Init();
 $Sostoyanie_pochvy_->Sostoyanie == "������������������";
}
//��������� �����>������_1
if (
(($Sostoyanie_pochvy_->Sostoyanie == "��������"))
){
 $Urozhay_ = new Urozhay;
 $Urozhay_->Init();
 $Urozhay_->Pokazatel == "�������";
}
//��������� �����>������_2
if (
(($Sostoyanie_pochvy_->Sostoyanie == "������������������"))
){
 $Urozhay_ = new Urozhay;
 $Urozhay_->Init();
 $Urozhay_->Pokazatel == "�������";
}
//��������� �����>������_3
if (
(($Sostoyanie_pochvy_->Sostoyanie == "��������������������"))
){
 $Urozhay_ = new Urozhay;
 $Urozhay_->Init();
 $Urozhay_->Pokazatel == "�����";
}
?>
