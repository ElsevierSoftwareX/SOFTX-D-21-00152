<?php
//************** exported from PKBD ****************
// version: 4.2018.0201.6 
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
((strpos($Keyword_1_->Text, "8(800)333-85-78") !== false))
 and ((strpos($Keyword_1_->Text, "binb") !== false))
 and
((strpos($Keyword_1_->Text, "order") !== false))
 and
((strpos($Keyword_1_->Text, "paid") !== false))
){
 $Message_1_->Status = "error";
 $Sender_1_->Status_ = "blocked";
 $OutPut_1_->FiredRule = "rule_3-12";
}
//rule_3-13
if (
((strpos($Keyword_1_->Text, "8(800)333-85-78") !== false))
 and
((strpos($Keyword_1_->Text, "binb") !== false))
 and
((strpos($Keyword_1_->Text, "payment") !== false))
){
 $Message_1_->Status = "error";
 $Sender_1_->Status_ = "blocked";
 $OutPut_1_->FiredRule = "rule_3-13";
}
//rule_3-14
if (
((strpos($Keyword_1_->Text, "88005054928") !== false))
 and ((strpos($Keyword_1_->Text, "binbank") !== false))
 and ((strpos($Keyword_1_->Text, "order") !== false))
){
 $Message_1_->Status = "error";
 $Sender_1_->Status_ = "blocked";
 $OutPut_1_->FiredRule = "rule_3-14";
}
//rule_2-1
if (
((strpos($Keyword_1_->Text, "click") !== false))
 and ((strpos($Keyword_1_->Text, "hornet") !== false))
 and ((strpos($Keyword_1_->Text, "http://bit.ly") !== false))
){
 $Message_1_->Status = "moderated";
 $Sender_1_->Status_ = "active";
 $OutPut_1_->FiredRule = "rule_2-1";
}
//rule_2-2
if (
((strpos($Keyword_1_->Text, "download") !== false))
 and ((strpos($Keyword_1_->Text, "http://vk.cc") !== false))
 and
((strpos($Keyword_1_->Text, "bonuses") !== false))
 and
((strpos($Keyword_1_->Text, "get") !== false))
){
 $Message_1_->Status = "moderated";
 $Sender_1_->Status_ = "active";
 $OutPut_1_->FiredRule = "rule_2-2";
}
//rule_2-3
if (
((strpos($Keyword_1_->Text, "download") !== false))
 and
((strpos($Keyword_1_->Text, "http://www.goo.gl") !== false))
 and
((strpos($Keyword_1_->Text, "bonuses") !== false))
 and
((strpos($Keyword_1_->Text, "get") !== false))
){
 $Message_1_->Status = "moderated";
 $Sender_1_->Status_ = "active";
 $OutPut_1_->FiredRule = "rule_2-3";
}
//rule_2-4
if (
((strpos($Keyword_1_->Text, "download") !== false))
 and
((strpos($Keyword_1_->Text, "http://www.vk.cc") !== false))
 and
((strpos($Keyword_1_->Text, "bonuses") !== false))
 and
((strpos($Keyword_1_->Text, "receive") !== false))
){
 $Message_1_->Status = "moderated";
 $Sender_1_->Status_ = "active";
 $OutPut_1_->FiredRule = "rule_2-4";
}
//rule_3-15
if (
((strpos($Keyword_1_->Text, "icloud.com.lfind.me") !== false))
 and
((strpos($Keyword_1_->Text, "linked") !== false))
 and
((strpos($Keyword_1_->Text, "located") !== false))
 and
((strpos($Keyword_1_->Text, "location") !== false))
 and
((strpos($Keyword_1_->Text, "mihk@list.ru") !== false))
){
 $Message_1_->Status = "error";
 $Sender_1_->Status_ = "blocked";
 $OutPut_1_->FiredRule = "rule_3-15";
}
//rule_3-16
if (
((strpos($Keyword_1_->Text, "lost") !== false))
 and
((strpos($Keyword_1_->Text, "stolen") !== false))
 and
((strpos($Keyword_1_->Text, "reclaim") !== false))
){
 $Message_1_->Status = "error";
 $Sender_1_->Status_ = "blocked";
 $OutPut_1_->FiredRule = "rule_3-16";
}
//rule_1-7
if (
((strpos($Keyword_1_->Text, "rush") !== false))
 and
((strpos($Keyword_1_->Text, "ultra") !== false))
 and
((strpos($Keyword_1_->Text, "kiwi") !== false))
 and
((strpos($Keyword_1_->Text, "legal") !== false))
 and
((strpos($Keyword_1_->Text, "mix") !== false))
 and
((strpos($Keyword_1_->Text, "пробы") !== false))
){
 $Message_1_->Status = "error";
 $Sender_1_->Status_ = "blocked";
 $OutPut_1_->FiredRule = "rule_1-7";
}
//rule_1-8
if (
((strpos($Keyword_1_->Text, "rush") !== false))
 and
((strpos($Keyword_1_->Text, "ultra") !== false))
 and
((strpos($Keyword_1_->Text, "legal") !== false))
 and
((strpos($Keyword_1_->Text, "mix") !== false))
 and
((strpos($Keyword_1_->Text, "пробы") !== false))
 and
((strpos($Keyword_1_->Text, "клады") !== false))
){
 $Message_1_->Status = "error";
 $Sender_1_->Status_ = "blocked";
 $OutPut_1_->FiredRule = "rule_1-8";
}
?>
