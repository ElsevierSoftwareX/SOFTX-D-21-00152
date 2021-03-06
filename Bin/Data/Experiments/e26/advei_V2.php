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
  $this->Name = "pipe 159?4,5-180 for the output of the rest of the product;pipe 273?8-200 for the output of the vapour product;pipe 159?4,5-190 for the input of the coolant;pipe 57?4-110 for the drainage;???-??? ???????? 480?10-200;??????? ?????????? ??????;??? ??????????;??? ????????? ???????? 219?6-258;? ????????? ??????;?????? ????? ?????.????? ???????? (1,2,3)700?36-335;";
  $this->amount,_pcs. = "1;3;2;";
  $this->pressure,_mpa = "25;-;";
 }
}
class material{
 var $marka;
 var $standard;
 function Init(){
  $this->marka = "steel 20;09g2?;";
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
((strpos($structural_element_->Name, "pipe 159?4,5-180 for the output of the rest of the product") !== false) and (strpos($structural_element_->pressure,_mpa, "25") !== false) and (strpos($structural_element_->amount,_pcs., "") !== false))
){
 $material_->marka = "steel 20";
 $material_->standard = "1050-88";
}
//has_a_G001-R002
if (
((strpos($structural_element_->Name, "pipe 273?8-200 for the output of the vapour product") !== false) and (strpos($structural_element_->pressure,_mpa, "25") !== false) and (strpos($structural_element_->amount,_pcs., "") !== false))
){
 $material_->marka = "steel 20";
 $material_->standard = "1050-88";
}
//has_a_G001-R003
if (
((strpos($structural_element_->Name, "pipe 159?4,5-190 for the input of the coolant") !== false) and (strpos($structural_element_->pressure,_mpa, "25") !== false) and (strpos($structural_element_->amount,_pcs., "") !== false))
){
 $material_->marka = "steel 20";
 $material_->standard = "1050-88";
}
//has_a_G001-R004
if (
((strpos($structural_element_->Name, "pipe 57?4-110 for the drainage") !== false) and (strpos($structural_element_->pressure,_mpa, "25") !== false) and (strpos($structural_element_->amount,_pcs., "") !== false))
){
 $material_->marka = "steel 20";
 $material_->standard = "1050-88";
}
//has_a_G001-R005
if (
((strpos($structural_element_->Name, "???-??? ???????? 480?10-200") !== false) and (strpos($structural_element_->pressure,_mpa, "25") !== false) and (strpos($structural_element_->amount,_pcs., "") !== false))
){
 $material_->marka = "09g2?";
 $material_->standard = "5520-79";
}
//has_a_G001-R006
if (
((strpos($structural_element_->Name, "??????? ?????????? ??????") !== false) and (strpos($structural_element_->pressure,_mpa, "-") !== false) and (strpos($structural_element_->amount,_pcs., "") !== false))
){
 $material_->marka = "steel 20";
 $material_->standard = "1050-88";
}
//has_a_G001-R007
if (
((strpos($structural_element_->Name, "??? ??????????") !== false) and (strpos($structural_element_->pressure,_mpa, "-") !== false) and (strpos($structural_element_->amount,_pcs., "") !== false))
){
 $material_->marka = "steel 20";
 $material_->standard = "1050-88";
}
//has_a_G001-R008
if (
((strpos($structural_element_->Name, "??? ????????? ???????? 219?6-258") !== false) and (strpos($structural_element_->pressure,_mpa, "25") !== false) and (strpos($structural_element_->amount,_pcs., "") !== false))
){
 $material_->marka = "steel 20";
 $material_->standard = "1050-88";
}
//has_a_G001-R009
if (
((strpos($structural_element_->Name, "? ????????? ??????") !== false) and (strpos($structural_element_->pressure,_mpa, "-") !== false) and (strpos($structural_element_->amount,_pcs., "") !== false))
){
 $material_->marka = "steel 20";
 $material_->standard = "1050-88";
}
//has_a_G001-R010
if (
((strpos($structural_element_->Name, "?????? ????? ?????.????? ???????? (1,2,3)700?36-335") !== false) and (strpos($structural_element_->pressure,_mpa, "25") !== false) and (strpos($structural_element_->amount,_pcs., "") !== false))
){
 $material_->marka = "09g2?";
 $material_->standard = "5520-79";
}
?>
