<?php
//************** exported from PKBD ****************
// version: 4.2020.0303.2 
// knowledge base:
// info:

//****************** classes ***********************
class structural_element{
 var $Name;
 var $amount,_pcs.;
 var $pressure,_mpa;
 function Init(){
  $this->Name = "pipe 159х4,5-180 for the output of the rest of the product;pipe 273х8-200 for the output of the vapour product;pipe 159х4,5-190 for the input of the coolant;pipe 57х4-110 for the drainage;люк-лаз патрубок 480х10-200;бобышка регулятора уровня;для магнометра;люк монтажный патрубок 219х6-258;к указателю уровня;штуцер ввода трубн.пучка патрубок (1,2,3)700х36-335;";
  $this->amount,_pcs. = "1;3;2;";
  $this->pressure,_mpa = "25;-;";
 }
}
class material{
 var $marka;
 var $standard;
 function Init(){
  $this->marka = "steel 20;09g2с;";
  $this->standard = "1050-88;5520-79;";
 }
}
//******** Initialization (facts) ******************
$structural_element_ = new structural_element;
$structural_element_->Init();
$material_ = new material;
$material_->Init();

//**************** rules ***************************
//has_a_G001-R001
if (
(($structural_element_->Name == "pipe 159х4,5-180 for the output of the rest of the product") and ($structural_element_->pressure,_mpa == "25"))
){
 $material_->marka = "steel 20";
 $material_->standard = "1050-88";
}
//has_a_G001-R002
if (
(($structural_element_->Name == "pipe 273х8-200 for the output of the vapour product") and ($structural_element_->pressure,_mpa == "25"))
){
 $material_->marka = "steel 20";
 $material_->standard = "1050-88";
}
//has_a_G001-R003
if (
(($structural_element_->Name == "pipe 159х4,5-190 for the input of the coolant") and ($structural_element_->pressure,_mpa == "25"))
){
 $material_->marka = "steel 20";
 $material_->standard = "1050-88";
}
//has_a_G001-R004
if (
(($structural_element_->Name == "pipe 57х4-110 for the drainage") and ($structural_element_->pressure,_mpa == "25"))
){
 $material_->marka = "steel 20";
 $material_->standard = "1050-88";
}
//has_a_G001-R005
if (
(($structural_element_->Name == "люк-лаз патрубок 480х10-200") and ($structural_element_->pressure,_mpa == "25"))
){
 $material_->marka = "09g2с";
 $material_->standard = "5520-79";
}
//has_a_G001-R006
if (
(($structural_element_->Name == "бобышка регулятора уровня") and ($structural_element_->pressure,_mpa == "-"))
){
 $material_->marka = "steel 20";
 $material_->standard = "1050-88";
}
//has_a_G001-R007
if (
(($structural_element_->Name == "для магнометра") and ($structural_element_->pressure,_mpa == "-"))
){
 $material_->marka = "steel 20";
 $material_->standard = "1050-88";
}
//has_a_G001-R008
if (
(($structural_element_->Name == "люк монтажный патрубок 219х6-258") and ($structural_element_->pressure,_mpa == "25"))
){
 $material_->marka = "steel 20";
 $material_->standard = "1050-88";
}
//has_a_G001-R009
if (
(($structural_element_->Name == "к указателю уровня") and ($structural_element_->pressure,_mpa == "-"))
){
 $material_->marka = "steel 20";
 $material_->standard = "1050-88";
}
//has_a_G001-R010
if (
(($structural_element_->Name == "штуцер ввода трубн.пучка патрубок (1,2,3)700х36-335") and ($structural_element_->pressure,_mpa == "25"))
){
 $material_->marka = "09g2с";
 $material_->standard = "5520-79";
}
?>
