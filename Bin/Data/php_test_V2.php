<?php
//************** exported from PKBD ****************
// version: 4.2018.0201.6 
// knowledge base: 
// info: 

//****************** classes ***********************
class InputData_1{
 var $Keyword;
 function Init(){
  $this->Keyword = "";
 }
}
class OutPut_1{
 var $MesStatus;
 var $ClientStatus;
 var $FiredRule;
 function Init(){
  $this->MesStatus = "";
  $this->ClientStatus = "";
  $this->FiredRule = "";
 }
}
//******** Initialization (facts) ******************
$InputData_1_ = new InputData_1;
$InputData_1_->Init();
$OutPut_1_ = new OutPut_1;
$OutPut_1_->Init();

//**************** rules ***************************
//rule_4-1
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-1";
}
//rule_3-2
if (
((strpos($InputData_1_->Keyword, "8800-500-01-01") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-2";
}
//rule_1-1
if (
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-1";
}
//rule_4-2
if (
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-2";
}
//rule_4-3
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-3";
}
//rule_4-4
if (
((strpos($InputData_1_->Keyword, "����-�����") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-4";
}
//rule_1-2
if (
((strpos($InputData_1_->Keyword, "1�+1�=2�") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-2";
}
//rule_1-3
if (
((strpos($InputData_1_->Keyword, "1�-500") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-3";
}
//rule_1-4
if (
((strpos($InputData_1_->Keyword, "89320112866") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-4";
}
//rule_1-5
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-5";
}
//rule_1-6
if (
((strpos($InputData_1_->Keyword, "9320112866") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-6";
}
//rule_4-5
if (
((strpos($InputData_1_->Keyword, "���������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-5";
}
//rule_4-6
if (
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-6";
}
//rule_4-7
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-7";
}
//rule_4-8
if (
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-8";
}
//rule_4-9
if (
((strpos($InputData_1_->Keyword, "���������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-9";
}
//rule_4-10
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-10";
}
//rule_4-11
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-11";
}
//rule_4-12
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-12";
}
//rule_4-13
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-13";
}
//rule_4-14
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-14";
}
//rule_4-15
if (
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-15";
}
//rule_4-16
if (
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-16";
}
//rule_4-17
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-17";
}
//rule_4-18
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-18";
}
//rule_4-19
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-19";
}
//rule_4-20
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-20";
}
//rule_4-21
if (
((strpos($InputData_1_->Keyword, "�������-���������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-21";
}
//rule_4-22
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-22";
}
//rule_4-23
if (
((strpos($InputData_1_->Keyword, "�������-�") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-23";
}
//rule_4-24
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-24";
}
//rule_4-25
if (
((strpos($InputData_1_->Keyword, "������������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-25";
}
//rule_4-26
if (
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-26";
}
//rule_4-27
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-27";
}
//rule_4-28
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-28";
}
//rule_4-29
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-29";
}
//rule_4-30
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-30";
}
//rule_4-31
if (
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
 and
((strpos($InputData_1_->Keyword, "������������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-31";
}
//rule_4-32
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-32";
}
//rule_4-33
if (
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-33";
}
//rule_4-34
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-34";
}
//rule_4-35
if (
((strpos($InputData_1_->Keyword, "�������-���������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-35";
}
//rule_4-36
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-36";
}
//rule_4-37
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-37";
}
//rule_4-38
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "������������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-38";
}
//rule_4-39
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-39";
}
//rule_4-40
if (
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "������������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-40";
}
//rule_4-41
if (
((strpos($InputData_1_->Keyword, "�����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-41";
}
//rule_4-42
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-42";
}
//rule_4-43
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-43";
}
//rule_4-44
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-44";
}
//rule_4-45
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-45";
}
//rule_3-3
if (
((strpos($InputData_1_->Keyword, "(800)100-97-28") !== false))
 and
((strpos($InputData_1_->Keyword, "alfabank") !== false))
 and
((strpos($InputData_1_->Keyword, "oplata") !== false))
 and
((strpos($InputData_1_->Keyword, "ozon.ru") !== false))
 and
((strpos($InputData_1_->Keyword, "pokupki") !== false))
 and
((strpos($InputData_1_->Keyword, "summy") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-3";
}
//rule_3-4
if (
((strpos($InputData_1_->Keyword, "8(800)100-97-28") !== false))
 and
((strpos($InputData_1_->Keyword, "alfabank") !== false))
 and
((strpos($InputData_1_->Keyword, "oplata") !== false))
 and
((strpos($InputData_1_->Keyword, "ozon.ru") !== false))
 and
((strpos($InputData_1_->Keyword, "pokupki") !== false))
 and
((strpos($InputData_1_->Keyword, "summy") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-4";
}
//rule_3-5
if (
((strpos($InputData_1_->Keyword, "icloud.com.lfind.me") !== false))
 and
((strpos($InputData_1_->Keyword, "��������������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-5";
}
//rule_3-6
if (
((strpos($InputData_1_->Keyword, "lcioud.ru") !== false))
 and
((strpos($InputData_1_->Keyword, "linked") !== false))
 and
((strpos($InputData_1_->Keyword, "located") !== false))
 and
((strpos($InputData_1_->Keyword, "location") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-6";
}
//rule_3-7
if (
((strpos($InputData_1_->Keyword, "icloud.com.ru-en.info") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-7";
}
//rule_3-8
if (
((strpos($InputData_1_->Keyword, "3a��o��po�aha") !== false))
 and
((strpos($InputData_1_->Keyword, "�ahkobcka�") !== false))
 and
((strpos($InputData_1_->Keyword, "�apta") !== false))
 and
((strpos($InputData_1_->Keyword, "8(800)3335554") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-8";
}
//rule_3-9
if (
((strpos($InputData_1_->Keyword, "3a��o��po�aha") !== false))
 and
((strpos($InputData_1_->Keyword, "�ahkobcka�") !== false))
 and
((strpos($InputData_1_->Keyword, "�apta") !== false))
 and
((strpos($InputData_1_->Keyword, "8(800)333-86-19") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-9";
}
//rule_3-10
if (
((strpos($InputData_1_->Keyword, "88001003333") !== false))
 and
((strpos($InputData_1_->Keyword, "bimbank") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-10";
}
//rule_3-11
if (
((strpos($InputData_1_->Keyword, "8(800)511-09-80") !== false))
 and
((strpos($InputData_1_->Keyword, "binb") !== false))
 and
((strpos($InputData_1_->Keyword, "c�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-11";
}
//rule_3-12
if (
((strpos($InputData_1_->Keyword, "8(800)333-85-78") !== false))
 and
((strpos($InputData_1_->Keyword, "binb") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-12";
}
//rule_3-13
if (
((strpos($InputData_1_->Keyword, "8(800)333-85-78") !== false))
 and
((strpos($InputData_1_->Keyword, "binb") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-13";
}
//rule_3-14
if (
((strpos($InputData_1_->Keyword, "88005054928") !== false))
 and
((strpos($InputData_1_->Keyword, "binbank") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-14";
}
//rule_2-1
if (
((strpos($InputData_1_->Keyword, "click") !== false))
 and
((strpos($InputData_1_->Keyword, "hornet") !== false))
 and
((strpos($InputData_1_->Keyword, "http://bit.ly") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_2-1";
}
//rule_2-2
if (
((strpos($InputData_1_->Keyword, "c�����") !== false))
 and
((strpos($InputData_1_->Keyword, "http://vk.cc") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_2-2";
}
//rule_2-3
if (
((strpos($InputData_1_->Keyword, "c�����") !== false))
 and
((strpos($InputData_1_->Keyword, "http://www.goo.gl") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_2-3";
}
//rule_2-4
if (
((strpos($InputData_1_->Keyword, "c�����") !== false))
 and
((strpos($InputData_1_->Keyword, "http://www.vk.cc") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_2-4";
}
//rule_3-15
if (
((strpos($InputData_1_->Keyword, "icloud.com.lfind.me") !== false))
 and
((strpos($InputData_1_->Keyword, "linked") !== false))
 and
((strpos($InputData_1_->Keyword, "located") !== false))
 and
((strpos($InputData_1_->Keyword, "location") !== false))
 and
((strpos($InputData_1_->Keyword, "mihk@list.ru") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-15";
}
//rule_3-16
if (
((strpos($InputData_1_->Keyword, "lost") !== false))
 and
((strpos($InputData_1_->Keyword, "stolen") !== false))
 and
((strpos($InputData_1_->Keyword, "reclaim") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-16";
}
//rule_1-7
if (
((strpos($InputData_1_->Keyword, "rush") !== false))
 and
((strpos($InputData_1_->Keyword, "ultra") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-7";
}
//rule_1-8
if (
((strpos($InputData_1_->Keyword, "rush") !== false))
 and
((strpos($InputData_1_->Keyword, "ultra") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-8";
}
//rule_1-9
if (
((strpos($InputData_1_->Keyword, "plastyr") !== false))
 and
((strpos($InputData_1_->Keyword, "polozhi") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-9";
}
//rule_3-17
if (
((strpos($InputData_1_->Keyword, "cpo��o") !== false))
 and
((strpos($InputData_1_->Keyword, "c�����ec�") !== false))
 and
((strpos($InputData_1_->Keyword, "kap�e") !== false))
 and
((strpos($InputData_1_->Keyword, "o�epa���") !== false))
 and
((strpos($InputData_1_->Keyword, "�p�oc�a�o��e��") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-17";
}
//rule_1-10
if (
((strpos($InputData_1_->Keyword, "pharmbar.com") !== false))
 and
((strpos($InputData_1_->Keyword, "pharmbar.net") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-10";
}
//rule_3-18
if (
((strpos($InputData_1_->Keyword, "pokupka") !== false))
 and
((strpos($InputData_1_->Keyword, "tel") !== false))
 and
((strpos($InputData_1_->Keyword, "yspeshna") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-18";
}
//rule_3-19
if (
((strpos($InputData_1_->Keyword, "raiffayzen") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������:") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-19";
}
//rule_3-20
if (
((strpos($InputData_1_->Keyword, "raiffeisen") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������:") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-20";
}
//rule_2-5
if (
((strpos($InputData_1_->Keyword, "party") !== false))
 and
((strpos($InputData_1_->Keyword, "sexy") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_2-5";
}
//rule_3-21
if (
((strpos($InputData_1_->Keyword, "maximum") !== false))
 and
((strpos($InputData_1_->Keyword, "nomer") !== false))
 and
((strpos($InputData_1_->Keyword, "priz") !== false))
 and
((strpos($InputData_1_->Keyword, "spravki") !== false))
 and
((strpos($InputData_1_->Keyword, "vigrali") !== false))
 and
((strpos($InputData_1_->Keyword, "www.fm-maximum.ru") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-21";
}
//rule_3-22
if (
((strpos($InputData_1_->Keyword, "sovkom") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-22";
}
//rule_3-23
if (
((strpos($InputData_1_->Keyword, "sberbank") !== false))
 and
((strpos($InputData_1_->Keyword, "spravki") !== false))
 and
((strpos($InputData_1_->Keyword, "srochno") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-23";
}
//rule_3-24
if (
((strpos($InputData_1_->Keyword, "klient") !== false))
 and
((strpos($InputData_1_->Keyword, "sberbank") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-24";
}
//rule_3-25
if (
((strpos($InputData_1_->Keyword, "pensii") !== false))
 and
((strpos($InputData_1_->Keyword, "pensioner") !== false))
 and
((strpos($InputData_1_->Keyword, "planovaya") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-25";
}
//rule_3-26
if (
((strpos($InputData_1_->Keyword, "comepay") !== false))
 and
((strpos($InputData_1_->Keyword, "vash") !== false))
 and
((strpos($InputData_1_->Keyword, "yandex") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-26";
}
//rule_3-27
if (
((strpos($InputData_1_->Keyword, "login") !== false))
 and
((strpos($InputData_1_->Keyword, "personalniy") !== false))
 and
((strpos($InputData_1_->Keyword, "popolneniya") !== false))
 and
((strpos($InputData_1_->Keyword, "soobshaite") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-27";
}
//rule_3-28
if (
((strpos($InputData_1_->Keyword, "comepay") !== false))
 and
((strpos($InputData_1_->Keyword, "vash") !== false))
 and
((strpos($InputData_1_->Keyword, "yandex") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-28";
}
//rule_3-29
if (
((strpos($InputData_1_->Keyword, "banka") !== false))
 and
((strpos($InputData_1_->Keyword, "obrabotke") !== false))
 and
((strpos($InputData_1_->Keyword, "ojidaite") !== false))
 and
((strpos($InputData_1_->Keyword, "platej") !== false))
 and
((strpos($InputData_1_->Keyword, "prinyat") !== false))
 and
((strpos($InputData_1_->Keyword, "zachisleniya") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-29";
}
//rule_3-30
if (
((strpos($InputData_1_->Keyword, "obrabotku") !== false))
 and
((strpos($InputData_1_->Keyword, "ojidaite") !== false))
 and
((strpos($InputData_1_->Keyword, "platej") !== false))
 and
((strpos($InputData_1_->Keyword, "popolneniya!") !== false))
 and
((strpos($InputData_1_->Keyword, "prinyat") !== false))
 and
((strpos($InputData_1_->Keyword, "vash") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-30";
}
//rule_3-31
if (
((strpos($InputData_1_->Keyword, "bankovskaya") !== false))
 and
((strpos($InputData_1_->Keyword, "karta") !== false))
 and
((strpos($InputData_1_->Keyword, "zablokirovana") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-31";
}
//rule_3-32
if (
((strpos($InputData_1_->Keyword, "bankovskaya") !== false))
 and
((strpos($InputData_1_->Keyword, "spravki") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-32";
}
//rule_2-6
if (
((strpos($InputData_1_->Keyword, "http://bit.ly") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_2-6";
}
//rule_3-33
if (
((strpos($InputData_1_->Keyword, "info") !== false))
 and
((strpos($InputData_1_->Keyword, "ozon.ru") !== false))
 and
((strpos($InputData_1_->Keyword, "pokupki") !== false))
 and
((strpos($InputData_1_->Keyword, "summy") !== false))
 and
((strpos($InputData_1_->Keyword, "vtb") !== false))
 and
((strpos($InputData_1_->Keyword, "oplata") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-33";
}
//rule_3-34
if (
((strpos($InputData_1_->Keyword, "ozon.ru") !== false))
 and
((strpos($InputData_1_->Keyword, "pokupki") !== false))
 and
((strpos($InputData_1_->Keyword, "summy") !== false))
 and
((strpos($InputData_1_->Keyword, "tel") !== false))
 and
((strpos($InputData_1_->Keyword, "vtb") !== false))
 and
((strpos($InputData_1_->Keyword, "oplata") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-34";
}
//rule_3-35
if (
((strpos($InputData_1_->Keyword, "perevod") !== false))
 and
((strpos($InputData_1_->Keyword, "proizvodili") !== false))
 and
((strpos($InputData_1_->Keyword, "summa") !== false))
 and
((strpos($InputData_1_->Keyword, "tranzaktsiyu") !== false))
 and
((strpos($InputData_1_->Keyword, "vypolnen") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-35";
}
//rule_3-36
if (
((strpos($InputData_1_->Keyword, "�������������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-36";
}
//rule_3-37
if (
((strpos($InputData_1_->Keyword, "info") !== false))
 and
((strpos($InputData_1_->Keyword, "klient") !== false))
 and
((strpos($InputData_1_->Keyword, "obratites`") !== false))
 and
((strpos($InputData_1_->Keyword, "sberbank") !== false))
 and
((strpos($InputData_1_->Keyword, "srochno") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-37";
}
//rule_4-46
if (
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-46";
}
//rule_4-47
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-47";
}
//rule_4-48
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-48";
}
//rule_4-49
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-49";
}
//rule_4-50
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-50";
}
//rule_4-51
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-51";
}
//rule_4-52
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-52";
}
//rule_4-53
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-53";
}
//rule_3-38
if (
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-38";
}
//rule_3-39
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-39";
}
//rule_3-40
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-40";
}
//rule_3-41
if (
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "���") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-41";
}
//rule_3-42
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-42";
}
//rule_4-54
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-54";
}
//rule_4-55
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-55";
}
//rule_4-56
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-56";
}
//rule_3-43
if (
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-43";
}
//rule_3-44
if (
((strpos($InputData_1_->Keyword, "www.bit.ly") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-44";
}
//rule_3-45
if (
((strpos($InputData_1_->Keyword, "bit.ly") !== false))
 and
((strpos($InputData_1_->Keyword, "mms") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-45";
}
//rule_3-46
if (
((strpos($InputData_1_->Keyword, "goo.gl") !== false))
 and
((strpos($InputData_1_->Keyword, "mms") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-46";
}
//rule_3-47
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-47";
}
//rule_4-57
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-57";
}
//rule_4-58
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "������������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-58";
}
//rule_4-59
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-59";
}
//rule_1-11
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����-1�-500") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-11";
}
//rule_1-12
if (
((strpos($InputData_1_->Keyword, "1�-500") !== false))
 and
((strpos($InputData_1_->Keyword, "rash") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-12";
}
//rule_1-13
if (
((strpos($InputData_1_->Keyword, "1�-500") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-13";
}
//rule_1-14
if (
((strpos($InputData_1_->Keyword, "1���-500") !== false))
 and
((strpos($InputData_1_->Keyword, "rash") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-14";
}
//rule_4-60
if (
((strpos($InputData_1_->Keyword, "������������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-60";
}
//rule_4-61
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-61";
}
//rule_4-62
if (
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-62";
}
//rule_1-15
if (
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-15";
}
//rule_1-16
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-16";
}
//rule_1-17
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-17";
}
//rule_1-18
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-18";
}
//rule_1-19
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-19";
}
//rule_1-20
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-20";
}
//rule_1-21
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-21";
}
//rule_1-22
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-22";
}
//rule_1-23
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-23";
}
//rule_1-24
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-24";
}
//rule_1-25
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-25";
}
//rule_1-26
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-26";
}
//rule_1-27
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-27";
}
//rule_1-28
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-28";
}
//rule_1-29
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-29";
}
//rule_1-30
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-30";
}
//rule_1-31
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-31";
}
//rule_1-32
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-32";
}
//rule_1-33
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-33";
}
//rule_1-34
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-34";
}
//rule_1-35
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-35";
}
//rule_1-36
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-36";
}
//rule_1-37
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-37";
}
//rule_1-38
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-38";
}
//rule_1-39
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-39";
}
//rule_1-40
if (
((strpos($InputData_1_->Keyword, "pharmbar.org") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-40";
}
//rule_4-63
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-63";
}
//rule_4-64
if (
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-64";
}
//rule_4-65
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-65";
}
//rule_1-41
if (
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-41";
}
//rule_1-42
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-42";
}
//rule_1-43
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-43";
}
//rule_1-44
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-44";
}
//rule_1-45
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-45";
}
//rule_1-46
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����������������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-46";
}
//rule_1-47
if (
((strpos($InputData_1_->Keyword, "mn25f") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-47";
}
//rule_1-48
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-48";
}
//rule_1-49
if (
((strpos($InputData_1_->Keyword, "�����������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-49";
}
//rule_1-50
if (
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-50";
}
//rule_1-51
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-51";
}
//rule_1-52
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-52";
}
//rule_1-53
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-53";
}
//rule_4-66
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-66";
}
//rule_1-54
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-54";
}
//rule_1-55
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-55";
}
//rule_1-56
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-56";
}
//rule_1-57
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-57";
}
//rule_1-58
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-58";
}
//rule_4-67
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-67";
}
//rule_1-59
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-59";
}
//rule_1-60
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-60";
}
//rule_1-61
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-61";
}
//rule_1-62
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-62";
}
//rule_1-63
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-63";
}
//rule_1-64
if (
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-64";
}
//rule_1-65
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-65";
}
//rule_1-66
if (
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "������������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-66";
}
//rule_1-67
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-67";
}
//rule_1-68
if (
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-68";
}
//rule_1-69
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-69";
}
//rule_1-70
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-70";
}
//rule_1-71
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-71";
}
//rule_1-72
if (
((strpos($InputData_1_->Keyword, "���������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-72";
}
//rule_1-73
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-73";
}
//rule_3-48
if (
((strpos($InputData_1_->Keyword, "super.televizor") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-48";
}
//rule_4-68
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-68";
}
//rule_4-69
if (
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-69";
}
//rule_3-49
if (
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-49";
}
//rule_4-70
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-70";
}
//rule_4-71
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������������") !== false))
 and
((strpos($InputData_1_->Keyword, "������������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-71";
}
//rule_4-72
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-72";
}
//rule_4-73
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-73";
}
//rule_4-74
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-74";
}
//rule_4-75
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-75";
}
//rule_4-76
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-76";
}
//rule_4-77
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-77";
}
//rule_4-78
if (
((strpos($InputData_1_->Keyword, "�������������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-78";
}
//rule_4-79
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-79";
}
//rule_3-50
if (
((strpos($InputData_1_->Keyword, "��o��������") !== false))
 and
((strpos($InputData_1_->Keyword, "http://bit.ly") !== false))
 and
((strpos($InputData_1_->Keyword, "��o����") !== false))
 and
((strpos($InputData_1_->Keyword, "���a��") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-50";
}
//rule_3-51
if (
((strpos($InputData_1_->Keyword, "http://www.bit.ly") !== false))
 and
((strpos($InputData_1_->Keyword, "mms") !== false))
 and
((strpos($InputData_1_->Keyword, "��o��������") !== false))
 and
((strpos($InputData_1_->Keyword, "��o����") !== false))
 and
((strpos($InputData_1_->Keyword, "���a��") !== false))
 and
((strpos($InputData_1_->Keyword, "����a���") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-51";
}
//rule_4-80
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "������������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-80";
}
//rule_3-52
if (
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-52";
}
//rule_4-81
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "������������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-81";
}
//rule_4-82
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-82";
}
//rule_4-83
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-83";
}
//rule_4-84
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-84";
}
//rule_4-85
if (
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-85";
}
//rule_4-86
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-86";
}
//rule_1-74
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-74";
}
//rule_1-75
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-75";
}
//rule_1-76
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-76";
}
//rule_1-77
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-77";
}
//rule_1-78
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-78";
}
//rule_1-79
if (
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-79";
}
//rule_1-80
if (
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-80";
}
//rule_1-81
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-81";
}
//rule_1-82
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-82";
}
//rule_2-7
if (
((strpos($InputData_1_->Keyword, "������������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_2-7";
}
//rule_2-8
if (
((strpos($InputData_1_->Keyword, "������������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_2-8";
}
//rule_1-83
if (
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-83";
}
//rule_1-84
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-84";
}
//rule_1-85
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-85";
}
//rule_1-86
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-86";
}
//rule_1-87
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-87";
}
//rule_4-87
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-87";
}
//rule_1-88
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-88";
}
//rule_1-89
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-89";
}
//rule_1-90
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-90";
}
//rule_1-91
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-91";
}
//rule_1-92
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-92";
}
//rule_1-93
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-93";
}
//rule_1-94
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-94";
}
//rule_1-95
if (
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-95";
}
//rule_1-96
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-96";
}
//rule_1-97
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-97";
}
//rule_1-98
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-98";
}
//rule_1-99
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-99";
}
//rule_1-100
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-100";
}
//rule_1-101
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-101";
}
//rule_1-102
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-102";
}
//rule_1-103
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-103";
}
//rule_3-53
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-53";
}
//rule_1-104
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-104";
}
//rule_4-88
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-88";
}
//rule_1-105
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-105";
}
//rule_1-106
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-106";
}
//rule_1-107
if (
((strpos($InputData_1_->Keyword, "�����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-107";
}
//rule_1-108
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-108";
}
//rule_1-109
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-109";
}
//rule_1-110
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-110";
}
//rule_1-111
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-111";
}
//rule_1-112
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-112";
}
//rule_1-113
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-113";
}
//rule_3-54
if (
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-54";
}
//rule_1-114
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-114";
}
//rule_1-115
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-115";
}
//rule_1-116
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-116";
}
//rule_1-117
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-117";
}
//rule_1-118
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-118";
}
//rule_1-119
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-119";
}
//rule_1-120
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-120";
}
//rule_1-121
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-121";
}
//rule_1-122
if (
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-122";
}
//rule_1-123
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-123";
}
//rule_1-124
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-124";
}
//rule_1-125
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-125";
}
//rule_1-126
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-126";
}
//rule_1-127
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-127";
}
//rule_1-128
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-128";
}
//rule_1-129
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-129";
}
//rule_1-130
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-130";
}
//rule_1-131
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-131";
}
//rule_1-132
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-132";
}
//rule_1-133
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-133";
}
//rule_1-134
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-134";
}
//rule_1-135
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-135";
}
//rule_1-136
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-136";
}
//rule_1-137
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-137";
}
//rule_1-138
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-138";
}
//rule_1-139
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-139";
}
//rule_1-140
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-140";
}
//rule_1-141
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-141";
}
//rule_1-142
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-142";
}
//rule_1-143
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-143";
}
//rule_1-144
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-144";
}
//rule_1-145
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-145";
}
//rule_1-146
if (
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-146";
}
//rule_4-89
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������������") !== false))
 and
((strpos($InputData_1_->Keyword, "������������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-89";
}
//rule_1-147
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-147";
}
//rule_1-148
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-148";
}
//rule_1-149
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-149";
}
//rule_1-150
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-150";
}
//rule_1-151
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-151";
}
//rule_1-152
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-152";
}
//rule_1-153
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-153";
}
//rule_1-154
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-154";
}
//rule_1-155
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-155";
}
//rule_1-156
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-156";
}
//rule_1-157
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-157";
}
//rule_1-158
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-158";
}
//rule_1-159
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-159";
}
//rule_4-90
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-90";
}
//rule_4-91
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-91";
}
//rule_4-92
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-92";
}
//rule_1-160
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-160";
}
//rule_1-161
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-161";
}
//rule_1-162
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-162";
}
//rule_1-163
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-163";
}
//rule_1-164
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-164";
}
//rule_3-55
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-55";
}
//rule_3-56
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-56";
}
//rule_3-57
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-57";
}
//rule_3-58
if (
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-58";
}
//rule_3-59
if (
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-59";
}
//rule_3-60
if (
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-60";
}
//rule_3-61
if (
((strpos($InputData_1_->Keyword, "avitos.ml") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-61";
}
//rule_3-62
if (
((strpos($InputData_1_->Keyword, "avitoo.tk") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-62";
}
//rule_3-63
if (
((strpos($InputData_1_->Keyword, "goo.gl") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-63";
}
//rule_3-64
if (
((strpos($InputData_1_->Keyword, "avitoo.tk") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-64";
}
//rule_3-65
if (
((strpos($InputData_1_->Keyword, "vk.cc") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-65";
}
//rule_4-93
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-93";
}
//rule_4-94
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-94";
}
//rule_4-95
if (
((strpos($InputData_1_->Keyword, "�������-��") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-95";
}
//rule_4-96
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-96";
}
//rule_4-97
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-97";
}
//rule_4-98
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-98";
}
//rule_4-99
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-99";
}
//rule_4-100
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-100";
}
//rule_4-101
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-101";
}
//rule_4-102
if (
((strpos($InputData_1_->Keyword, "������������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-102";
}
//rule_4-103
if (
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-103";
}
//rule_4-104
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-104";
}
//rule_4-105
if (
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-105";
}
//rule_4-106
if (
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-106";
}
//rule_4-107
if (
((strpos($InputData_1_->Keyword, "������������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-107";
}
//rule_4-108
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-108";
}
//rule_4-109
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-109";
}
//rule_4-110
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-110";
}
//rule_1-165
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-165";
}
//rule_4-111
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-111";
}
//rule_1-166
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-166";
}
//rule_4-112
if (
((strpos($InputData_1_->Keyword, "�������������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-112";
}
//rule_4-113
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-113";
}
//rule_3-66
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-66";
}
//rule_4-114
if (
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-114";
}
//rule_4-115
if (
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-115";
}
//rule_4-116
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "������������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-116";
}
//rule_4-117
if (
((strpos($InputData_1_->Keyword, "���") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-117";
}
//rule_4-118
if (
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-118";
}
//rule_4-119
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-119";
}
//rule_3-67
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-67";
}
//rule_4-120
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-120";
}
//rule_4-121
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-121";
}
//rule_4-122
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-122";
}
//rule_4-123
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-123";
}
//rule_4-124
if (
((strpos($InputData_1_->Keyword, "������������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-124";
}
//rule_4-125
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-125";
}
//rule_4-126
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-126";
}
//rule_4-127
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-127";
}
//rule_4-128
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-128";
}
//rule_1-167
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-167";
}
//rule_4-129
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-129";
}
//rule_3-68
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-68";
}
//rule_3-69
if (
((strpos($InputData_1_->Keyword, "visa") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-69";
}
//rule_3-70
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-70";
}
//rule_3-71
if (
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-71";
}
//rule_3-72
if (
((strpos($InputData_1_->Keyword, "visa/mc") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-72";
}
//rule_3-73
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-73";
}
//rule_4-130
if (
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-130";
}
//rule_4-131
if (
((strpos($InputData_1_->Keyword, "������������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "������������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-131";
}
//rule_4-132
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-132";
}
//rule_3-74
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-74";
}
//rule_3-75
if (
((strpos($InputData_1_->Keyword, "logo.ru") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-75";
}
//rule_3-76
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-76";
}
//rule_4-133
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-133";
}
//rule_3-77
if (
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "logo.com") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "info") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-77";
}
//rule_4-134
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-134";
}
//rule_4-135
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-135";
}
//rule_4-136
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-136";
}
//rule_4-137
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-137";
}
//rule_4-138
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-138";
}
//rule_4-139
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-139";
}
//rule_4-140
if (
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-140";
}
//rule_4-141
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-141";
}
//rule_1-168
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-168";
}
//rule_1-169
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-169";
}
//rule_1-170
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-170";
}
//rule_1-171
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-171";
}
//rule_1-172
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-172";
}
//rule_1-173
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-173";
}
//rule_1-174
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-174";
}
//rule_1-175
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-175";
}
//rule_1-176
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-176";
}
//rule_1-177
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-177";
}
//rule_1-178
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-178";
}
//rule_1-179
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-179";
}
//rule_1-180
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-180";
}
//rule_1-181
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-181";
}
//rule_1-182
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-182";
}
//rule_1-183
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-183";
}
//rule_1-184
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-184";
}
//rule_1-185
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-185";
}
//rule_1-186
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-186";
}
//rule_1-187
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-187";
}
//rule_1-188
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-188";
}
//rule_1-189
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-189";
}
//rule_1-190
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-190";
}
//rule_1-191
if (
((strpos($InputData_1_->Keyword, "���������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-191";
}
//rule_1-192
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-192";
}
//rule_1-193
if (
((strpos($InputData_1_->Keyword, "�����������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-193";
}
//rule_1-194
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-194";
}
//rule_1-195
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-195";
}
//rule_1-196
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-196";
}
//rule_1-197
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-197";
}
//rule_1-198
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-198";
}
//rule_1-199
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-199";
}
//rule_1-200
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-200";
}
//rule_1-201
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-201";
}
//rule_1-202
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-202";
}
//rule_1-203
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-203";
}
//rule_1-204
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-204";
}
//rule_1-205
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-205";
}
//rule_1-206
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-206";
}
//rule_1-207
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-207";
}
//rule_1-208
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-208";
}
//rule_1-209
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-209";
}
//rule_1-210
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-210";
}
//rule_1-211
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-211";
}
//rule_1-212
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-212";
}
//rule_1-213
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-213";
}
//rule_1-214
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-214";
}
//rule_1-215
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-215";
}
//rule_4-142
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-142";
}
//rule_4-143
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "������������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-143";
}
//rule_1-216
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-216";
}
//rule_1-217
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-217";
}
//rule_1-218
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-218";
}
//rule_1-219
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-219";
}
//rule_1-220
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-220";
}
//rule_1-221
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-221";
}
//rule_4-144
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-144";
}
//rule_1-222
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-222";
}
//rule_1-223
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-223";
}
//rule_1-224
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-224";
}
//rule_1-225
if (
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-225";
}
//rule_1-226
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-226";
}
//rule_1-227
if (
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-227";
}
//rule_1-228
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-228";
}
//rule_1-229
if (
((strpos($InputData_1_->Keyword, "��-500") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-229";
}
//rule_1-230
if (
((strpos($InputData_1_->Keyword, "1�-500") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-230";
}
//rule_3-78
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-78";
}
//rule_3-79
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-79";
}
//rule_3-80
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-80";
}
//rule_1-231
if (
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-231";
}
//rule_1-232
if (
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-232";
}
//rule_1-233
if (
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-233";
}
//rule_4-145
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-145";
}
//rule_1-234
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-234";
}
//rule_1-235
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-235";
}
//rule_3-81
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-81";
}
//rule_1-236
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-236";
}
//rule_1-237
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-237";
}
//rule_1-238
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-238";
}
//rule_1-239
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-239";
}
//rule_1-240
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-240";
}
//rule_1-241
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-241";
}
//rule_1-242
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-242";
}
//rule_1-243
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-243";
}
//rule_1-244
if (
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-244";
}
//rule_1-245
if (
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-245";
}
//rule_1-246
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-246";
}
//rule_1-247
if (
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-247";
}
//rule_1-248
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "6�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-248";
}
//rule_1-249
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-249";
}
//rule_1-250
if (
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
 and
((strpos($InputData_1_->Keyword, "�������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-250";
}
//rule_1-251
if (
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "��������") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-251";
}
//rule_4-146
if (
((strpos($InputData_1_->Keyword, "���������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "��_���������";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-146";
}
//rule_1-252
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����������") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-252";
}
//rule_1-253
if (
((strpos($InputData_1_->Keyword, "������") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "�����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
 and
((strpos($InputData_1_->Keyword, "����") !== false))
){
 $OutPut_1_->MesStatus == "������";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-253";
}
?>
