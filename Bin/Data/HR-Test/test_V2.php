<?php
//************** exported from PKBD ****************
// version: 4.2018.0201.6 
// knowledge base: 
// info: 

//****************** classes ***********************
class brow_1{
 var $brow_width;
 function Init(){
  $this->brow_width = "";
 }
}
class eyebrow_1{
 var $eyebrow_movement;
 function Init(){
  $this->eyebrow_movement = "";
 }
}
class eye_1{
 var $left_eye_width;
 var $right_eye_width;
 var $left_eye_upper_eyelid_movement;
 var $right_eye_upper_eyelid_movement;
 function Init(){
  $this->left_eye_width = "";
  $this->right_eye_width = "";
  $this->left_eye_upper_eyelid_movement = "";
  $this->right_eye_upper_eyelid_movement = "";
 }
}
class mouth_1{
 var $mouth_length;
 var $mouth_form;
 var $mouth_corners_movement;
 function Init(){
  $this->mouth_length = "";
  $this->mouth_form = "";
  $this->mouth_corners_movement = "";
 }
}
class emotion_1{
 var $name;
 function Init(){
  $this->name = "";
 }
}
//******** Initialization (facts) ******************
$brow_1_ = new brow_1;
$brow_1_->Init();
$eyebrow_1_ = new eyebrow_1;
$eyebrow_1_->Init();
$eye_1_ = new eye_1;
$eye_1_->Init();
$mouth_1_ = new mouth_1;
$mouth_1_->Init();
$emotion_1_ = new emotion_1;
$emotion_1_->Init();

//**************** rules ***************************
//fear-p-01
if (
((strpos($brow_1_->brow_width, "decrease") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "up") !== false))
 and
((strpos($eye_1_->left_eye_width, "increase") !== false) and (strpos($eye_1_->right_eye_width, "") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "up") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "") !== false))
 and
((strpos($mouth_1_->mouth_length, "increase") !== false) and (strpos($mouth_1_->mouth_form, "ellipse") !== false) and (strpos($mouth_1_->mouth_corners_movement, "") !== false))
){
 $emotion_1_->name = "fear";
}
//fear-p-02
if (
((strpos($brow_1_->brow_width, "decrease") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "to_center") !== false))
 and
((strpos($eye_1_->left_eye_width, "") !== false) and (strpos($eye_1_->right_eye_width, "increase") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "up") !== false))
 and
((strpos($mouth_1_->mouth_length, "increase") !== false) and (strpos($mouth_1_->mouth_form, "ellipse") !== false) and (strpos($mouth_1_->mouth_corners_movement, "") !== false))
){
 $emotion_1_->name = "fear";
}
//fear-p-03
if (
((strpos($brow_1_->brow_width, "decrease") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "up") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "to_center") !== false))
 and
((strpos($eye_1_->left_eye_width, "increase") !== false) and (strpos($eye_1_->right_eye_width, "increase") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "") !== false))
 and
((strpos($mouth_1_->mouth_length, "increase") !== false) and (strpos($mouth_1_->mouth_form, "ellipse") !== false) and (strpos($mouth_1_->mouth_corners_movement, "aside") !== false))
){
 $emotion_1_->name = "fear";
}
//fear-p-04
if (
((strpos($brow_1_->brow_width, "decrease") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "up") !== false))
 and
((strpos($eye_1_->left_eye_width, "increase") !== false) and (strpos($eye_1_->right_eye_width, "") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "up") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "") !== false))
 and
((strpos($mouth_1_->mouth_length, "increase") !== false) and (strpos($mouth_1_->mouth_form, "ellipse") !== false) and (strpos($mouth_1_->mouth_corners_movement, "aside") !== false))
){
 $emotion_1_->name = "fear";
}
//fear-p-05
if (
((strpos($brow_1_->brow_width, "decrease") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "to_center") !== false))
 and
((strpos($eye_1_->left_eye_width, "") !== false) and (strpos($eye_1_->right_eye_width, "increase") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "up") !== false))
 and
((strpos($mouth_1_->mouth_length, "") !== false) and (strpos($mouth_1_->mouth_form, "ellipse") !== false) and (strpos($mouth_1_->mouth_corners_movement, "aside") !== false))
){
 $emotion_1_->name = "fear";
}
//fear-p-06
if (
((strpos($brow_1_->brow_width, "decrease") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "up") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "to_center") !== false))
 and
((strpos($eye_1_->left_eye_width, "increase") !== false) and (strpos($eye_1_->right_eye_width, "increase") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "up") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "up") !== false))
 and
((strpos($mouth_1_->mouth_length, "") !== false) and (strpos($mouth_1_->mouth_form, "ellipse") !== false) and (strpos($mouth_1_->mouth_corners_movement, "aside") !== false))
){
 $emotion_1_->name = "fear";
}
//fear-n-07
if (
((strpos($brow_1_->brow_width, "none") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "up") !== false))
 and
((strpos($eye_1_->left_eye_width, "increase") !== false) and (strpos($eye_1_->right_eye_width, "") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "up") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "") !== false))
 and
((strpos($mouth_1_->mouth_length, "increase") !== false) and (strpos($mouth_1_->mouth_form, "ellipse") !== false) and (strpos($mouth_1_->mouth_corners_movement, "") !== false))
){
 $emotion_1_->name = "none";
}
//fear-n-08
if (
((strpos($brow_1_->brow_width, "increase") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "to_center") !== false))
 and
((strpos($eye_1_->left_eye_width, "") !== false) and (strpos($eye_1_->right_eye_width, "increase") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "up") !== false))
 and
((strpos($mouth_1_->mouth_length, "increase") !== false) and (strpos($mouth_1_->mouth_form, "ellipse") !== false) and (strpos($mouth_1_->mouth_corners_movement, "") !== false))
){
 $emotion_1_->name = "none";
}
//fear-n-09
if (
((strpos($brow_1_->brow_width, "none") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "up") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "to_center") !== false))
 and
((strpos($eye_1_->left_eye_width, "increase") !== false) and (strpos($eye_1_->right_eye_width, "increase") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "") !== false))
 and
((strpos($mouth_1_->mouth_length, "increase") !== false) and (strpos($mouth_1_->mouth_form, "ellipse") !== false) and (strpos($mouth_1_->mouth_corners_movement, "aside") !== false))
){
 $emotion_1_->name = "none";
}
//fear-n-10
if (
((strpos($brow_1_->brow_width, "increase") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "up") !== false))
 and
((strpos($eye_1_->left_eye_width, "increase") !== false) and (strpos($eye_1_->right_eye_width, "") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "up") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "") !== false))
 and
((strpos($mouth_1_->mouth_length, "increase") !== false) and (strpos($mouth_1_->mouth_form, "ellipse") !== false) and (strpos($mouth_1_->mouth_corners_movement, "aside") !== false))
){
 $emotion_1_->name = "none";
}
//fear-n-11
if (
((strpos($brow_1_->brow_width, "decrease") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "down") !== false))
 and
((strpos($eye_1_->left_eye_width, "") !== false) and (strpos($eye_1_->right_eye_width, "increase") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "up") !== false))
 and
((strpos($mouth_1_->mouth_length, "") !== false) and (strpos($mouth_1_->mouth_form, "ellipse") !== false) and (strpos($mouth_1_->mouth_corners_movement, "aside") !== false))
){
 $emotion_1_->name = "none";
}
//fear-n-12
if (
((strpos($brow_1_->brow_width, "decrease") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "none") !== false))
 and
((strpos($eye_1_->left_eye_width, "increase") !== false) and (strpos($eye_1_->right_eye_width, "increase") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "up") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "up") !== false))
 and
((strpos($mouth_1_->mouth_length, "") !== false) and (strpos($mouth_1_->mouth_form, "ellipse") !== false) and (strpos($mouth_1_->mouth_corners_movement, "aside") !== false))
){
 $emotion_1_->name = "none";
}
//fear-n-13
if (
((strpos($brow_1_->brow_width, "decrease") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "up") !== false))
 and
((strpos($eye_1_->left_eye_width, "decrease") !== false) and (strpos($eye_1_->right_eye_width, "") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "") !== false))
 and
((strpos($mouth_1_->mouth_length, "increase") !== false) and (strpos($mouth_1_->mouth_form, "ellipse") !== false) and (strpos($mouth_1_->mouth_corners_movement, "") !== false))
){
 $emotion_1_->name = "none";
}
//fear-n-14
if (
((strpos($brow_1_->brow_width, "decrease") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "to_center") !== false))
 and
((strpos($eye_1_->left_eye_width, "") !== false) and (strpos($eye_1_->right_eye_width, "decrease") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "") !== false))
 and
((strpos($mouth_1_->mouth_length, "increase") !== false) and (strpos($mouth_1_->mouth_form, "ellipse") !== false) and (strpos($mouth_1_->mouth_corners_movement, "") !== false))
){
 $emotion_1_->name = "none";
}
//fear-n-15
if (
((strpos($brow_1_->brow_width, "decrease") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "up") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "to_center") !== false))
 and
((strpos($eye_1_->left_eye_width, "decrease") !== false) and (strpos($eye_1_->right_eye_width, "increase") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "") !== false))
 and
((strpos($mouth_1_->mouth_length, "increase") !== false) and (strpos($mouth_1_->mouth_form, "ellipse") !== false) and (strpos($mouth_1_->mouth_corners_movement, "aside") !== false))
){
 $emotion_1_->name = "none";
}
//fear-n-16
if (
((strpos($brow_1_->brow_width, "decrease") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "up") !== false))
 and
((strpos($eye_1_->left_eye_width, "none") !== false) and (strpos($eye_1_->right_eye_width, "") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "") !== false))
 and
((strpos($mouth_1_->mouth_length, "increase") !== false) and (strpos($mouth_1_->mouth_form, "ellipse") !== false) and (strpos($mouth_1_->mouth_corners_movement, "aside") !== false))
){
 $emotion_1_->name = "none";
}
//fear-n-17
if (
((strpos($brow_1_->brow_width, "decrease") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "to_center") !== false))
 and
((strpos($eye_1_->left_eye_width, "") !== false) and (strpos($eye_1_->right_eye_width, "none") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "") !== false))
 and
((strpos($mouth_1_->mouth_length, "") !== false) and (strpos($mouth_1_->mouth_form, "ellipse") !== false) and (strpos($mouth_1_->mouth_corners_movement, "aside") !== false))
){
 $emotion_1_->name = "none";
}
//fear-n-18
if (
((strpos($brow_1_->brow_width, "decrease") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "up") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "to_center") !== false))
 and
((strpos($eye_1_->left_eye_width, "increase") !== false) and (strpos($eye_1_->right_eye_width, "none") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "") !== false))
 and
((strpos($mouth_1_->mouth_length, "") !== false) and (strpos($mouth_1_->mouth_form, "ellipse") !== false) and (strpos($mouth_1_->mouth_corners_movement, "aside") !== false))
){
 $emotion_1_->name = "none";
}
//fear-n-19
if (
((strpos($brow_1_->brow_width, "decrease") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "up") !== false))
 and
((strpos($eye_1_->left_eye_width, "increase") !== false) and (strpos($eye_1_->right_eye_width, "") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "") !== false))
 and
((strpos($mouth_1_->mouth_length, "decrease") !== false) and (strpos($mouth_1_->mouth_form, "ellipse") !== false) and (strpos($mouth_1_->mouth_corners_movement, "") !== false))
){
 $emotion_1_->name = "none";
}
//fear-n-20
if (
((strpos($brow_1_->brow_width, "decrease") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "to_center") !== false))
 and
((strpos($eye_1_->left_eye_width, "") !== false) and (strpos($eye_1_->right_eye_width, "increase") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "") !== false))
 and
((strpos($mouth_1_->mouth_length, "none") !== false) and (strpos($mouth_1_->mouth_form, "ellipse") !== false) and (strpos($mouth_1_->mouth_corners_movement, "") !== false))
){
 $emotion_1_->name = "none";
}
//fear-p-21
if (
((strpos($brow_1_->brow_width, "decrease") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "up") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "to_center") !== false))
 and
((strpos($eye_1_->left_eye_width, "increase") !== false) and (strpos($eye_1_->right_eye_width, "increase") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "") !== false))
 and
((strpos($mouth_1_->mouth_length, "decrease") !== false) and (strpos($mouth_1_->mouth_form, "ellipse") !== false) and (strpos($mouth_1_->mouth_corners_movement, "aside") !== false))
){
 $emotion_1_->name = "fear";
}
//fear-p-22
if (
((strpos($brow_1_->brow_width, "decrease") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "up") !== false))
 and
((strpos($eye_1_->left_eye_width, "increase") !== false) and (strpos($eye_1_->right_eye_width, "") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "") !== false))
 and
((strpos($mouth_1_->mouth_length, "none") !== false) and (strpos($mouth_1_->mouth_form, "ellipse") !== false) and (strpos($mouth_1_->mouth_corners_movement, "aside") !== false))
){
 $emotion_1_->name = "fear";
}
//fear-n-23
if (
((strpos($brow_1_->brow_width, "decrease") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "to_center") !== false))
 and
((strpos($eye_1_->left_eye_width, "") !== false) and (strpos($eye_1_->right_eye_width, "increase") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "") !== false))
 and
((strpos($mouth_1_->mouth_length, "") !== false) and (strpos($mouth_1_->mouth_form, "ellipse") !== false) and (strpos($mouth_1_->mouth_corners_movement, "down") !== false))
){
 $emotion_1_->name = "none";
}
//fear-n-24
if (
((strpos($brow_1_->brow_width, "decrease") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "up") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "to_center") !== false))
 and
((strpos($eye_1_->left_eye_width, "increase") !== false) and (strpos($eye_1_->right_eye_width, "increase") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "") !== false))
 and
((strpos($mouth_1_->mouth_length, "") !== false) and (strpos($mouth_1_->mouth_form, "ellipse") !== false) and (strpos($mouth_1_->mouth_corners_movement, "none") !== false))
){
 $emotion_1_->name = "none";
}
//fear-n-25
if (
((strpos($brow_1_->brow_width, "decrease") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "up") !== false))
 and
((strpos($eye_1_->left_eye_width, "increase") !== false) and (strpos($eye_1_->right_eye_width, "") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "up") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "") !== false))
 and
((strpos($mouth_1_->mouth_length, "increase") !== false) and (strpos($mouth_1_->mouth_form, "rectangle") !== false) and (strpos($mouth_1_->mouth_corners_movement, "") !== false))
){
 $emotion_1_->name = "none";
}
//fear-n-26
if (
((strpos($brow_1_->brow_width, "decrease") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "to_center") !== false))
 and
((strpos($eye_1_->left_eye_width, "") !== false) and (strpos($eye_1_->right_eye_width, "increase") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "up") !== false))
 and
((strpos($mouth_1_->mouth_length, "increase") !== false) and (strpos($mouth_1_->mouth_form, "line") !== false) and (strpos($mouth_1_->mouth_corners_movement, "") !== false))
){
 $emotion_1_->name = "none";
}
//fear-n-27
if (
((strpos($eyebrow_1_->eyebrow_movement, "up") !== false))
 and
((strpos($eye_1_->left_eye_width, "increase") !== false) and (strpos($eye_1_->right_eye_width, "") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "up") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "") !== false))
 and
((strpos($mouth_1_->mouth_length, "increase") !== false) and (strpos($mouth_1_->mouth_form, "ellipse") !== false) and (strpos($mouth_1_->mouth_corners_movement, "") !== false))
){
 $emotion_1_->name = "none";
}
//fear-n-28
if (
((strpos($brow_1_->brow_width, "decrease") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "to_center") !== false))
 and
((strpos($mouth_1_->mouth_length, "increase") !== false) and (strpos($mouth_1_->mouth_form, "ellipse") !== false) and (strpos($mouth_1_->mouth_corners_movement, "") !== false))
){
 $emotion_1_->name = "none";
}
//fear-n-29
if (
((strpos($brow_1_->brow_width, "decrease") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "up") !== false))
 and
((strpos($eye_1_->left_eye_width, "increase") !== false) and (strpos($eye_1_->right_eye_width, "increase") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "") !== false))
 and
((strpos($mouth_1_->mouth_length, "") !== false) and (strpos($mouth_1_->mouth_form, "ellipse") !== false) and (strpos($mouth_1_->mouth_corners_movement, "") !== false))
){
 $emotion_1_->name = "none";
}
//fear-n-30
if (
((strpos($brow_1_->brow_width, "decrease") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "up") !== false))
 and
((strpos($eye_1_->left_eye_width, "increase") !== false) and (strpos($eye_1_->right_eye_width, "") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "up") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "") !== false))
 and
((strpos($mouth_1_->mouth_length, "increase") !== false) and (strpos($mouth_1_->mouth_form, "") !== false) and (strpos($mouth_1_->mouth_corners_movement, "aside") !== false))
){
 $emotion_1_->name = "none";
}
//fear-n-31
if (
((strpos($brow_1_->brow_width, "decrease") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "to_center") !== false))
 and
((strpos($eye_1_->left_eye_width, "") !== false) and (strpos($eye_1_->right_eye_width, "increase") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "up") !== false))
 and
((strpos($mouth_1_->mouth_length, "") !== false) and (strpos($mouth_1_->mouth_form, "ellipse") !== false) and (strpos($mouth_1_->mouth_corners_movement, "") !== false))
){
 $emotion_1_->name = "none";
}
//fear-n-32
if (
((strpos($brow_1_->brow_width, "decrease") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "up") !== false))
 and
((strpos($eye_1_->left_eye_width, "increase") !== false) and (strpos($eye_1_->right_eye_width, "increase") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "up") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "up") !== false))
){
 $emotion_1_->name = "none";
}
?>
