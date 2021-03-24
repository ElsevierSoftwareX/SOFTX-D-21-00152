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
 var $fired_rule;
 function Init(){
  $this->name = "";
  $this->fired_rule = "";
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
 $emotion_1_->fired_rule = "fear-p-01";
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
 $emotion_1_->fired_rule = "fear-p-02";
}
//fear-p-03
if (
((strpos($brow_1_->brow_width, "decrease") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "up") !== false))
 and
((strpos($eye_1_->left_eye_width, "increase") !== false) and (strpos($eye_1_->right_eye_width, "increase") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "") !== false))
 and
((strpos($mouth_1_->mouth_length, "increase") !== false) and (strpos($mouth_1_->mouth_form, "ellipse") !== false) and (strpos($mouth_1_->mouth_corners_movement, "aside") !== false))
){
 $emotion_1_->name = "fear";
 $emotion_1_->fired_rule = "fear-p-03";
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
 $emotion_1_->fired_rule = "fear-p-04";
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
 $emotion_1_->fired_rule = "fear-p-05";
}
//fear-p-06
if (
((strpos($brow_1_->brow_width, "decrease") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "up") !== false))
 and
((strpos($eye_1_->left_eye_width, "increase") !== false) and (strpos($eye_1_->right_eye_width, "increase") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "up") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "up") !== false))
 and
((strpos($mouth_1_->mouth_length, "") !== false) and (strpos($mouth_1_->mouth_form, "ellipse") !== false) and (strpos($mouth_1_->mouth_corners_movement, "aside") !== false))
){
 $emotion_1_->name = "fear";
 $emotion_1_->fired_rule = "fear-p-06";
}
//fear-p-07
if (
((strpos($brow_1_->brow_width, "decrease") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "up") !== false))
 and
((strpos($eye_1_->left_eye_width, "increase") !== false) and (strpos($eye_1_->right_eye_width, "increase") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "") !== false))
 and
((strpos($mouth_1_->mouth_length, "decrease") !== false) and (strpos($mouth_1_->mouth_form, "ellipse") !== false) and (strpos($mouth_1_->mouth_corners_movement, "aside") !== false))
){
 $emotion_1_->name = "fear";
 $emotion_1_->fired_rule = "fear-p-07";
}
//fear-p-08
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
 $emotion_1_->fired_rule = "fear-p-08";
}
//fear-p-09
if (
((strpos($brow_1_->brow_width, "decrease") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "to_center") !== false))
 and
((strpos($eye_1_->left_eye_width, "increase") !== false) and (strpos($eye_1_->right_eye_width, "increase") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "") !== false))
 and
((strpos($mouth_1_->mouth_length, "increase") !== false) and (strpos($mouth_1_->mouth_form, "ellipse") !== false) and (strpos($mouth_1_->mouth_corners_movement, "aside") !== false))
){
 $emotion_1_->name = "fear";
 $emotion_1_->fired_rule = "fear-p-09";
}
//fear-p-10
if (
((strpos($brow_1_->brow_width, "decrease") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "to_center") !== false))
 and
((strpos($eye_1_->left_eye_width, "increase") !== false) and (strpos($eye_1_->right_eye_width, "increase") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "up") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "up") !== false))
 and
((strpos($mouth_1_->mouth_length, "") !== false) and (strpos($mouth_1_->mouth_form, "ellipse") !== false) and (strpos($mouth_1_->mouth_corners_movement, "aside") !== false))
){
 $emotion_1_->name = "fear";
 $emotion_1_->fired_rule = "fear-p-10";
}
//fear-p-11
if (
((strpos($brow_1_->brow_width, "decrease") !== false))
 and
((strpos($eyebrow_1_->eyebrow_movement, "to_center") !== false))
 and
((strpos($eye_1_->left_eye_width, "increase") !== false) and (strpos($eye_1_->right_eye_width, "increase") !== false) and (strpos($eye_1_->left_eye_upper_eyelid_movement, "") !== false) and (strpos($eye_1_->right_eye_upper_eyelid_movement, "") !== false))
 and
((strpos($mouth_1_->mouth_length, "decrease") !== false) and (strpos($mouth_1_->mouth_form, "ellipse") !== false) and (strpos($mouth_1_->mouth_corners_movement, "aside") !== false))
){
 $emotion_1_->name = "fear";
 $emotion_1_->fired_rule = "fear-p-11";
}
?>
