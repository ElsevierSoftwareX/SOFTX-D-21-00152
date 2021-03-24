<?php
//************** exported from PKBD ****************
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
(($brow_1_->brow_width == "decrease"))
 and
(($eyebrow_1_->eyebrow_movement == "up"))
 and
(($eye_1_->left_eye_width == "increase") and ($eye_1_->right_eye_width == "") and ($eye_1_->left_eye_upper_eyelid_movement == "up") and ($eye_1_->right_eye_upper_eyelid_movement == ""))
 and
(($mouth_1_->mouth_length == "increase") and ($mouth_1_->mouth_form == "ellipse") and ($mouth_1_->mouth_corners_movement == ""))
){
 $emotion_1_->name = "fear";
}
//fear-p-02
if (
(($brow_1_->brow_width == "decrease"))
 and
(($eyebrow_1_->eyebrow_movement == "to_center"))
 and
(($eye_1_->left_eye_width == "") and ($eye_1_->right_eye_width == "increase") and ($eye_1_->left_eye_upper_eyelid_movement == "") and ($eye_1_->right_eye_upper_eyelid_movement == "up"))
 and
(($mouth_1_->mouth_length == "increase") and ($mouth_1_->mouth_form == "ellipse") and ($mouth_1_->mouth_corners_movement == ""))
){
 $emotion_1_->name = "fear";
}
//fear-p-03
if (
(($brow_1_->brow_width == "decrease"))
 and
(($eyebrow_1_->eyebrow_movement == "up"))
 and
(($eyebrow_1_->eyebrow_movement == "to_center"))
 and
(($eye_1_->left_eye_width == "increase") and ($eye_1_->right_eye_width == "increase") and ($eye_1_->left_eye_upper_eyelid_movement == "") and ($eye_1_->right_eye_upper_eyelid_movement == ""))
 and
(($mouth_1_->mouth_length == "increase") and ($mouth_1_->mouth_form == "ellipse") and ($mouth_1_->mouth_corners_movement == "aside"))
){
 $emotion_1_->name = "fear";
}
//fear-p-04
if (
(($brow_1_->brow_width == "decrease"))
 and
(($eyebrow_1_->eyebrow_movement == "up"))
 and
(($eye_1_->left_eye_width == "increase") and ($eye_1_->right_eye_width == "") and ($eye_1_->left_eye_upper_eyelid_movement == "up") and ($eye_1_->right_eye_upper_eyelid_movement == ""))
 and
(($mouth_1_->mouth_length == "increase") and ($mouth_1_->mouth_form == "ellipse") and ($mouth_1_->mouth_corners_movement == "aside"))
){
 $emotion_1_->name = "fear";
}
//fear-p-05
if (
(($brow_1_->brow_width == "decrease"))
 and
(($eyebrow_1_->eyebrow_movement == "to_center"))
 and
(($eye_1_->left_eye_width == "") and ($eye_1_->right_eye_width == "increase") and ($eye_1_->left_eye_upper_eyelid_movement == "") and ($eye_1_->right_eye_upper_eyelid_movement == "up"))
 and
(($mouth_1_->mouth_length == "") and ($mouth_1_->mouth_form == "ellipse") and ($mouth_1_->mouth_corners_movement == "aside"))
){
 $emotion_1_->name = "fear";
}
//fear-p-06
if (
(($brow_1_->brow_width == "decrease"))
 and
(($eyebrow_1_->eyebrow_movement == "up"))
 and
(($eyebrow_1_->eyebrow_movement == "to_center"))
 and
(($eye_1_->left_eye_width == "increase") and ($eye_1_->right_eye_width == "increase") and ($eye_1_->left_eye_upper_eyelid_movement == "up") and ($eye_1_->right_eye_upper_eyelid_movement == "up"))
 and
(($mouth_1_->mouth_length == "") and ($mouth_1_->mouth_form == "ellipse") and ($mouth_1_->mouth_corners_movement == "aside"))
){
 $emotion_1_->name = "fear";
}
//fear-n-07
if (
(($brow_1_->brow_width == "none"))
 and
(($eyebrow_1_->eyebrow_movement == "up"))
 and
(($eye_1_->left_eye_width == "increase") and ($eye_1_->right_eye_width == "") and ($eye_1_->left_eye_upper_eyelid_movement == "up") and ($eye_1_->right_eye_upper_eyelid_movement == ""))
 and
(($mouth_1_->mouth_length == "increase") and ($mouth_1_->mouth_form == "ellipse") and ($mouth_1_->mouth_corners_movement == ""))
){
 $emotion_1_->name = "none";
}
//fear-n-08
if (
(($brow_1_->brow_width == "increase"))
 and
(($eyebrow_1_->eyebrow_movement == "to_center"))
 and
(($eye_1_->left_eye_width == "") and ($eye_1_->right_eye_width == "increase") and ($eye_1_->left_eye_upper_eyelid_movement == "") and ($eye_1_->right_eye_upper_eyelid_movement == "up"))
 and
(($mouth_1_->mouth_length == "increase") and ($mouth_1_->mouth_form == "ellipse") and ($mouth_1_->mouth_corners_movement == ""))
){
 $emotion_1_->name = "none";
}
//fear-n-09
if (
(($brow_1_->brow_width == "none"))
 and
(($eyebrow_1_->eyebrow_movement == "up"))
 and
(($eyebrow_1_->eyebrow_movement == "to_center"))
 and
(($eye_1_->left_eye_width == "increase") and ($eye_1_->right_eye_width == "increase") and ($eye_1_->left_eye_upper_eyelid_movement == "") and ($eye_1_->right_eye_upper_eyelid_movement == ""))
 and
(($mouth_1_->mouth_length == "increase") and ($mouth_1_->mouth_form == "ellipse") and ($mouth_1_->mouth_corners_movement == "aside"))
){
 $emotion_1_->name = "none";
}
//fear-n-10
if (
(($brow_1_->brow_width == "increase"))
 and
(($eyebrow_1_->eyebrow_movement == "up"))
 and
(($eye_1_->left_eye_width == "increase") and ($eye_1_->right_eye_width == "") and ($eye_1_->left_eye_upper_eyelid_movement == "up") and ($eye_1_->right_eye_upper_eyelid_movement == ""))
 and
(($mouth_1_->mouth_length == "increase") and ($mouth_1_->mouth_form == "ellipse") and ($mouth_1_->mouth_corners_movement == "aside"))
){
 $emotion_1_->name = "none";
}
//fear-n-11
if (
(($brow_1_->brow_width == "decrease"))
 and
(($eyebrow_1_->eyebrow_movement == "down"))
 and
(($eye_1_->left_eye_width == "") and ($eye_1_->right_eye_width == "increase") and ($eye_1_->left_eye_upper_eyelid_movement == "") and ($eye_1_->right_eye_upper_eyelid_movement == "up"))
 and
(($mouth_1_->mouth_length == "") and ($mouth_1_->mouth_form == "ellipse") and ($mouth_1_->mouth_corners_movement == "aside"))
){
 $emotion_1_->name = "none";
}
//fear-n-12
if (
(($brow_1_->brow_width == "decrease"))
 and
(($eyebrow_1_->eyebrow_movement == "none"))
 and
(($eye_1_->left_eye_width == "increase") and ($eye_1_->right_eye_width == "increase") and ($eye_1_->left_eye_upper_eyelid_movement == "up") and ($eye_1_->right_eye_upper_eyelid_movement == "up"))
 and
(($mouth_1_->mouth_length == "") and ($mouth_1_->mouth_form == "ellipse") and ($mouth_1_->mouth_corners_movement == "aside"))
){
 $emotion_1_->name = "none";
}
//fear-n-13
if (
(($brow_1_->brow_width == "decrease"))
 and
(($eyebrow_1_->eyebrow_movement == "up"))
 and
(($eye_1_->left_eye_width == "decrease") and ($eye_1_->right_eye_width == "") and ($eye_1_->left_eye_upper_eyelid_movement == "") and ($eye_1_->right_eye_upper_eyelid_movement == ""))
 and
(($mouth_1_->mouth_length == "increase") and ($mouth_1_->mouth_form == "ellipse") and ($mouth_1_->mouth_corners_movement == ""))
){
 $emotion_1_->name = "none";
}
//fear-n-14
if (
(($brow_1_->brow_width == "decrease"))
 and
(($eyebrow_1_->eyebrow_movement == "to_center"))
 and
(($eye_1_->left_eye_width == "") and ($eye_1_->right_eye_width == "decrease") and ($eye_1_->left_eye_upper_eyelid_movement == "") and ($eye_1_->right_eye_upper_eyelid_movement == ""))
 and
(($mouth_1_->mouth_length == "increase") and ($mouth_1_->mouth_form == "ellipse") and ($mouth_1_->mouth_corners_movement == ""))
){
 $emotion_1_->name = "none";
}
//fear-n-15
if (
(($brow_1_->brow_width == "decrease"))
 and
(($eyebrow_1_->eyebrow_movement == "up"))
 and
(($eyebrow_1_->eyebrow_movement == "to_center"))
 and
(($eye_1_->left_eye_width == "decrease") and ($eye_1_->right_eye_width == "increase") and ($eye_1_->left_eye_upper_eyelid_movement == "") and ($eye_1_->right_eye_upper_eyelid_movement == ""))
 and
(($mouth_1_->mouth_length == "increase") and ($mouth_1_->mouth_form == "ellipse") and ($mouth_1_->mouth_corners_movement == "aside"))
){
 $emotion_1_->name = "none";
}
//fear-n-16
if (
(($brow_1_->brow_width == "decrease"))
 and
(($eyebrow_1_->eyebrow_movement == "up"))
 and
(($eye_1_->left_eye_width == "none") and ($eye_1_->right_eye_width == "") and ($eye_1_->left_eye_upper_eyelid_movement == "") and ($eye_1_->right_eye_upper_eyelid_movement == ""))
 and
(($mouth_1_->mouth_length == "increase") and ($mouth_1_->mouth_form == "ellipse") and ($mouth_1_->mouth_corners_movement == "aside"))
){
 $emotion_1_->name = "none";
}
//fear-n-17
if (
(($brow_1_->brow_width == "decrease"))
 and
(($eyebrow_1_->eyebrow_movement == "to_center"))
 and
(($eye_1_->left_eye_width == "") and ($eye_1_->right_eye_width == "none") and ($eye_1_->left_eye_upper_eyelid_movement == "") and ($eye_1_->right_eye_upper_eyelid_movement == ""))
 and
(($mouth_1_->mouth_length == "") and ($mouth_1_->mouth_form == "ellipse") and ($mouth_1_->mouth_corners_movement == "aside"))
){
 $emotion_1_->name = "none";
}
//fear-n-18
if (
(($brow_1_->brow_width == "decrease"))
 and
(($eyebrow_1_->eyebrow_movement == "up"))
 and
(($eyebrow_1_->eyebrow_movement == "to_center"))
 and
(($eye_1_->left_eye_width == "increase") and ($eye_1_->right_eye_width == "none") and ($eye_1_->left_eye_upper_eyelid_movement == "") and ($eye_1_->right_eye_upper_eyelid_movement == ""))
 and
(($mouth_1_->mouth_length == "") and ($mouth_1_->mouth_form == "ellipse") and ($mouth_1_->mouth_corners_movement == "aside"))
){
 $emotion_1_->name = "none";
}
//fear-n-19
if (
(($brow_1_->brow_width == "decrease"))
 and
(($eyebrow_1_->eyebrow_movement == "up"))
 and
(($eye_1_->left_eye_width == "increase") and ($eye_1_->right_eye_width == "") and ($eye_1_->left_eye_upper_eyelid_movement == "") and ($eye_1_->right_eye_upper_eyelid_movement == ""))
 and
(($mouth_1_->mouth_length == "decrease") and ($mouth_1_->mouth_form == "ellipse") and ($mouth_1_->mouth_corners_movement == ""))
){
 $emotion_1_->name = "none";
}
//fear-n-20
if (
(($brow_1_->brow_width == "decrease"))
 and
(($eyebrow_1_->eyebrow_movement == "to_center"))
 and
(($eye_1_->left_eye_width == "") and ($eye_1_->right_eye_width == "increase") and ($eye_1_->left_eye_upper_eyelid_movement == "") and ($eye_1_->right_eye_upper_eyelid_movement == ""))
 and
(($mouth_1_->mouth_length == "none") and ($mouth_1_->mouth_form == "ellipse") and ($mouth_1_->mouth_corners_movement == ""))
){
 $emotion_1_->name = "none";
}
//fear-p-21
if (
(($brow_1_->brow_width == "decrease"))
 and
(($eyebrow_1_->eyebrow_movement == "up"))
 and
(($eyebrow_1_->eyebrow_movement == "to_center"))
 and
(($eye_1_->left_eye_width == "increase") and ($eye_1_->right_eye_width == "increase") and ($eye_1_->left_eye_upper_eyelid_movement == "") and ($eye_1_->right_eye_upper_eyelid_movement == ""))
 and
(($mouth_1_->mouth_length == "decrease") and ($mouth_1_->mouth_form == "ellipse") and ($mouth_1_->mouth_corners_movement == "aside"))
){
 $emotion_1_->name = "fear";
}
//fear-p-22
if (
(($brow_1_->brow_width == "decrease"))
 and
(($eyebrow_1_->eyebrow_movement == "up"))
 and
(($eye_1_->left_eye_width == "increase") and ($eye_1_->right_eye_width == "") and ($eye_1_->left_eye_upper_eyelid_movement == "") and ($eye_1_->right_eye_upper_eyelid_movement == ""))
 and
(($mouth_1_->mouth_length == "none") and ($mouth_1_->mouth_form == "ellipse") and ($mouth_1_->mouth_corners_movement == "aside"))
){
 $emotion_1_->name = "fear";
}
//fear-n-23
if (
(($brow_1_->brow_width == "decrease"))
 and
(($eyebrow_1_->eyebrow_movement == "to_center"))
 and
(($eye_1_->left_eye_width == "") and ($eye_1_->right_eye_width == "increase") and ($eye_1_->left_eye_upper_eyelid_movement == "") and ($eye_1_->right_eye_upper_eyelid_movement == ""))
 and
(($mouth_1_->mouth_length == "") and ($mouth_1_->mouth_form == "ellipse") and ($mouth_1_->mouth_corners_movement == "down"))
){
 $emotion_1_->name = "none";
}
//fear-n-24
if (
(($brow_1_->brow_width == "decrease"))
 and
(($eyebrow_1_->eyebrow_movement == "up"))
 and
(($eyebrow_1_->eyebrow_movement == "to_center"))
 and
(($eye_1_->left_eye_width == "increase") and ($eye_1_->right_eye_width == "increase") and ($eye_1_->left_eye_upper_eyelid_movement == "") and ($eye_1_->right_eye_upper_eyelid_movement == ""))
 and
(($mouth_1_->mouth_length == "") and ($mouth_1_->mouth_form == "ellipse") and ($mouth_1_->mouth_corners_movement == "none"))
){
 $emotion_1_->name = "none";
}
//fear-n-25
if (
(($brow_1_->brow_width == "decrease"))
 and
(($eyebrow_1_->eyebrow_movement == "up"))
 and
(($eye_1_->left_eye_width == "increase") and ($eye_1_->right_eye_width == "") and ($eye_1_->left_eye_upper_eyelid_movement == "up") and ($eye_1_->right_eye_upper_eyelid_movement == ""))
 and
(($mouth_1_->mouth_length == "increase") and ($mouth_1_->mouth_form == "rectangle") and ($mouth_1_->mouth_corners_movement == ""))
){
 $emotion_1_->name = "none";
}
//fear-n-26
if (
(($brow_1_->brow_width == "decrease"))
 and
(($eyebrow_1_->eyebrow_movement == "to_center"))
 and
(($eye_1_->left_eye_width == "") and ($eye_1_->right_eye_width == "increase") and ($eye_1_->left_eye_upper_eyelid_movement == "") and ($eye_1_->right_eye_upper_eyelid_movement == "up"))
 and
(($mouth_1_->mouth_length == "increase") and ($mouth_1_->mouth_form == "line") and ($mouth_1_->mouth_corners_movement == ""))
){
 $emotion_1_->name = "none";
}
//fear-n-27
if (
(($eyebrow_1_->eyebrow_movement == "up"))
 and
(($eye_1_->left_eye_width == "increase") and ($eye_1_->right_eye_width == "") and ($eye_1_->left_eye_upper_eyelid_movement == "up") and ($eye_1_->right_eye_upper_eyelid_movement == ""))
 and
(($mouth_1_->mouth_length == "increase") and ($mouth_1_->mouth_form == "ellipse") and ($mouth_1_->mouth_corners_movement == ""))
){
 $emotion_1_->name = "none";
}
//fear-n-28
if (
(($brow_1_->brow_width == "decrease"))
 and
(($eyebrow_1_->eyebrow_movement == "to_center"))
 and
(($mouth_1_->mouth_length == "increase") and ($mouth_1_->mouth_form == "ellipse") and ($mouth_1_->mouth_corners_movement == ""))
){
 $emotion_1_->name = "none";
}
//fear-n-29
if (
(($brow_1_->brow_width == "decrease"))
 and
(($eyebrow_1_->eyebrow_movement == "up"))
 and
(($eye_1_->left_eye_width == "increase") and ($eye_1_->right_eye_width == "increase") and ($eye_1_->left_eye_upper_eyelid_movement == "") and ($eye_1_->right_eye_upper_eyelid_movement == ""))
 and
(($mouth_1_->mouth_length == "") and ($mouth_1_->mouth_form == "ellipse") and ($mouth_1_->mouth_corners_movement == ""))
){
 $emotion_1_->name = "none";
}
//fear-n-30
if (
(($brow_1_->brow_width == "decrease"))
 and
(($eyebrow_1_->eyebrow_movement == "up"))
 and
(($eye_1_->left_eye_width == "increase") and ($eye_1_->right_eye_width == "") and ($eye_1_->left_eye_upper_eyelid_movement == "up") and ($eye_1_->right_eye_upper_eyelid_movement == ""))
 and
(($mouth_1_->mouth_length == "increase") and ($mouth_1_->mouth_form == "") and ($mouth_1_->mouth_corners_movement == "aside"))
){
 $emotion_1_->name = "none";
}
//fear-n-31
if (
(($brow_1_->brow_width == "decrease"))
 and
(($eyebrow_1_->eyebrow_movement == "to_center"))
 and
(($eye_1_->left_eye_width == "") and ($eye_1_->right_eye_width == "increase") and ($eye_1_->left_eye_upper_eyelid_movement == "") and ($eye_1_->right_eye_upper_eyelid_movement == "up"))
 and
(($mouth_1_->mouth_length == "") and ($mouth_1_->mouth_form == "ellipse") and ($mouth_1_->mouth_corners_movement == ""))
){
 $emotion_1_->name = "none";
}
//fear-n-32
if (
(($brow_1_->brow_width == "decrease"))
 and
(($eyebrow_1_->eyebrow_movement == "up"))
 and
(($eye_1_->left_eye_width == "increase") and ($eye_1_->right_eye_width == "increase") and ($eye_1_->left_eye_upper_eyelid_movement == "up") and ($eye_1_->right_eye_upper_eyelid_movement == "up"))
){
 $emotion_1_->name = "none";
}
?>
