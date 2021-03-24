<?php
//************** exported from PKBD ****************
// knowledge base:
// info:

//****************** classes ***********************
class Keyword_1{
 var $Text;
 function Init(){
  $this->Text = "";
 }
}
class Message_1{
 var $Status;
 function Init(){
  $this->Status = "";
 }
}
class Sender_1{
 var $Status_;
 function Init(){
  $this->Status_ = "";
 }
}
class OutPut_1{
 var $FiredRule;
 function Init(){
  $this->FiredRule = "";
 }
}
//******** Initialization (facts) ******************
$Keyword_1_ = new Keyword_1;
$Keyword_1_->Init();
$Message_1_ = new Message_1;
$Message_1_->Init();
$Sender_1_ = new Sender_1;
$Sender_1_->Init();
$OutPut_1_ = new OutPut_1;
$OutPut_1_->Init();

//**************** rules ***************************
//rule_3-12
if (
(($Keyword_1_->Text == "8(800)333-85-78"))
 and
(($Keyword_1_->Text == "binb"))
 and
(($Keyword_1_->Text == "order"))
 and
(($Keyword_1_->Text == "paid"))
){
 $Message_1_->Status = "error";
 $Sender_1_->Status_ = "blocked";
 $OutPut_1_->FiredRule = "rule_3-12";
}
//rule_3-13
if (
(($Keyword_1_->Text == "8(800)333-85-78"))
 and
(($Keyword_1_->Text == "binb"))
 and
(($Keyword_1_->Text == "payment"))
){
 $Message_1_->Status = "error";
 $Sender_1_->Status_ = "blocked";
 $OutPut_1_->FiredRule = "rule_3-13";
}
//rule_3-14
if (
(($Keyword_1_->Text == "88005054928"))
 and
(($Keyword_1_->Text == "binbank"))
 and
(($Keyword_1_->Text == "order"))
){
 $Message_1_->Status = "error";
 $Sender_1_->Status_ = "blocked";
 $OutPut_1_->FiredRule = "rule_3-14";
}
//rule_2-1
if (
(($Keyword_1_->Text == "click"))
 and
(($Keyword_1_->Text == "hornet"))
 and
(($Keyword_1_->Text == "http://bit.ly"))
){
 $Message_1_->Status = "moderated";
 $Sender_1_->Status_ = "active";
 $OutPut_1_->FiredRule = "rule_2-1";
}
//rule_2-2
if (
(($Keyword_1_->Text == "download"))
 and
(($Keyword_1_->Text == "http://vk.cc"))
 and
(($Keyword_1_->Text == "bonuses"))
 and
(($Keyword_1_->Text == "get"))
){
 $Message_1_->Status = "moderated";
 $Sender_1_->Status_ = "active";
 $OutPut_1_->FiredRule = "rule_2-2";
}
//rule_2-3
if (
(($Keyword_1_->Text == "download"))
 and
(($Keyword_1_->Text == "http://www.goo.gl"))
 and
(($Keyword_1_->Text == "bonuses"))
 and
(($Keyword_1_->Text == "get"))
){
 $Message_1_->Status = "moderated";
 $Sender_1_->Status_ = "active";
 $OutPut_1_->FiredRule = "rule_2-3";
}
//rule_2-4
if (
(($Keyword_1_->Text == "download"))
 and
(($Keyword_1_->Text == "http://www.vk.cc"))
 and
(($Keyword_1_->Text == "bonuses"))
 and
(($Keyword_1_->Text == "receive"))
){
 $Message_1_->Status = "moderated";
 $Sender_1_->Status_ = "active";
 $OutPut_1_->FiredRule = "rule_2-4";
}
//rule_3-15
if (
(($Keyword_1_->Text == "icloud.com.lfind.me"))
 and
(($Keyword_1_->Text == "linked"))
 and
(($Keyword_1_->Text == "located"))
 and
(($Keyword_1_->Text == "location"))
 and
(($Keyword_1_->Text == "mihk@list.ru"))
){
 $Message_1_->Status = "error";
 $Sender_1_->Status_ = "blocked";
 $OutPut_1_->FiredRule = "rule_3-15";
}
//rule_3-16
if (
(($Keyword_1_->Text == "lost"))
 and
(($Keyword_1_->Text == "stolen"))
 and
(($Keyword_1_->Text == "reclaim"))
){
 $Message_1_->Status = "error";
 $Sender_1_->Status_ = "blocked";
 $OutPut_1_->FiredRule = "rule_3-16";
}
//rule_1-7
if (
(($Keyword_1_->Text == "rush"))
 and
(($Keyword_1_->Text == "ultra"))
 and
(($Keyword_1_->Text == "kiwi"))
 and
(($Keyword_1_->Text == "legal"))
 and
(($Keyword_1_->Text == "mix"))
 and
(($Keyword_1_->Text == "пробы"))
){
 $Message_1_->Status = "error";
 $Sender_1_->Status_ = "blocked";
 $OutPut_1_->FiredRule = "rule_1-7";
}
//rule_1-8
if (
(($Keyword_1_->Text == "rush"))
 and
(($Keyword_1_->Text == "ultra"))
 and
(($Keyword_1_->Text == "legal"))
 and
(($Keyword_1_->Text == "mix"))
 and
(($Keyword_1_->Text == "пробы"))
 and
(($Keyword_1_->Text == "клады"))
){
 $Message_1_->Status = "error";
 $Sender_1_->Status_ = "blocked";
 $OutPut_1_->FiredRule = "rule_1-8";
}
?>
