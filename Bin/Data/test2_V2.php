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
((strpos($Temperatura_vozdukha_->Znachenie, "0-10") !== false))
 and
((strpos($Osadki_->Kolichestvo, "�����") !== false))
){
 $Pogodnye_usloviya_ = new Pogodnye_usloviya;
 $Pogodnye_usloviya_->Init();
 $Pogodnye_usloviya_->Tip == "��������, ����� ������";
}
//����������� �������+������>�������� �������_2
if (
((strpos($Temperatura_vozdukha_->Znachenie, "11-30") !== false))
 and
((strpos($Osadki_->Kolichestvo, "�����") !== false))
){
 $Pogodnye_usloviya_ = new Pogodnye_usloviya;
 $Pogodnye_usloviya_->Init();
 $Pogodnye_usloviya_->Tip == "������, ����� ������";
}
//����������� �������+������>�������� �������_3
if (
((strpos($Temperatura_vozdukha_->Znachenie, "11-30") !== false))
 and
((strpos($Osadki_->Kolichestvo, "��������") !== false))
){
 $Pogodnye_usloviya_ = new Pogodnye_usloviya;
 $Pogodnye_usloviya_->Init();
 $Pogodnye_usloviya_->Tip == "������, ������� ������";
}
//�������� �������+������� ������>��������� �����_1
if (
((strpos($Pogodnye_usloviya_->Tip, "������, ������� ������") !== false))
 and
((strpos($Chastota_poliva_->Znachenie, "�����") !== false))
){
 $Sostoyanie_pochvy_ = new Sostoyanie_pochvy;
 $Sostoyanie_pochvy_->Init();
 $Sostoyanie_pochvy_->Sostoyanie == "��������";
}
//�������� �������+������� ������>��������� �����_2
if (
((strpos($Pogodnye_usloviya_->Tip, "������, ������� ������") !== false))
 and
((strpos($Chastota_poliva_->Znachenie, "�� �����") !== false))
){
 $Sostoyanie_pochvy_ = new Sostoyanie_pochvy;
 $Sostoyanie_pochvy_->Init();
 $Sostoyanie_pochvy_->Sostoyanie == "������������������";
}
//�������� �������+������� ������>��������� �����_3
if (
((strpos($Pogodnye_usloviya_->Tip, "��������, ����� ������") !== false))
 and
((strpos($Chastota_poliva_->Znachenie, "�� �����") !== false))
){
 $Sostoyanie_pochvy_ = new Sostoyanie_pochvy;
 $Sostoyanie_pochvy_->Init();
 $Sostoyanie_pochvy_->Sostoyanie == "��������������������";
}
//�������� �������+������� ������>��������� �����_4
if (
((strpos($Pogodnye_usloviya_->Tip, "��������, ����� ������") !== false))
 and
((strpos($Chastota_poliva_->Znachenie, "�����") !== false))
){
 $Sostoyanie_pochvy_ = new Sostoyanie_pochvy;
 $Sostoyanie_pochvy_->Init();
 $Sostoyanie_pochvy_->Sostoyanie == "������������������";
}
//��������� �����>������_1
if (
((strpos($Sostoyanie_pochvy_->Sostoyanie, "��������") !== false))
){
 $Urozhay_ = new Urozhay;
 $Urozhay_->Init();
 $Urozhay_->Pokazatel == "�������";
}
//��������� �����>������_2
if (
((strpos($Sostoyanie_pochvy_->Sostoyanie, "������������������") !== false))
){
 $Urozhay_ = new Urozhay;
 $Urozhay_->Init();
 $Urozhay_->Pokazatel == "�������";
}
//��������� �����>������_3
if (
((strpos($Sostoyanie_pochvy_->Sostoyanie, "��������������������") !== false))
){
 $Urozhay_ = new Urozhay;
 $Urozhay_->Init();
 $Urozhay_->Pokazatel == "�����";
}
?>
