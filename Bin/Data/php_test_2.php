<?php
//************** exported from PKBD ****************
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

//*************** facts ****************************

//**************** rules ***************************
//rule_4-1
if (
(($InputData_1_->Keyword == "гулящая"))
 and
(($InputData_1_->Keyword == "упала"))
 and
(($InputData_1_->Keyword == "шалава"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-1";
}
//rule_3-2
if (
(($InputData_1_->Keyword == "8800-500-01-01"))
 and
(($InputData_1_->Keyword == "справка"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-2";
}
//rule_1-1
if (
(($InputData_1_->Keyword == "токо"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-1";
}
//rule_4-2
if (
(($InputData_1_->Keyword == "маменькин"))
 and
(($InputData_1_->Keyword == "молодой"))
 and
(($InputData_1_->Keyword == "ноющий"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-2";
}
//rule_4-3
if (
(($InputData_1_->Keyword == "блудная"))
 and
(($InputData_1_->Keyword == "нагулялась"))
 and
(($InputData_1_->Keyword == "овца"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-3";
}
//rule_4-4
if (
(($InputData_1_->Keyword == "баба-мужик"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-4";
}
//rule_1-2
if (
(($InputData_1_->Keyword == "1п+1п=2п"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-2";
}
//rule_1-3
if (
(($InputData_1_->Keyword == "1п-500"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-3";
}
//rule_1-4
if (
(($InputData_1_->Keyword == "89320112866"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-4";
}
//rule_1-5
if (
(($InputData_1_->Keyword == "ложи"))
 and
(($InputData_1_->Keyword == "сюда"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-5";
}
//rule_1-6
if (
(($InputData_1_->Keyword == "9320112866"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-6";
}
//rule_4-5
if (
(($InputData_1_->Keyword == "стремотой"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-5";
}
//rule_4-6
if (
(($InputData_1_->Keyword == "развод"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-6";
}
//rule_4-7
if (
(($InputData_1_->Keyword == "сменить"))
 and
(($InputData_1_->Keyword == "теперь"))
 and
(($InputData_1_->Keyword == "фамилию"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-7";
}
//rule_4-8
if (
(($InputData_1_->Keyword == "трэш"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-8";
}
//rule_4-9
if (
(($InputData_1_->Keyword == "отстойный"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-9";
}
//rule_4-10
if (
(($InputData_1_->Keyword == "скинется"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-10";
}
//rule_4-11
if (
(($InputData_1_->Keyword == "мозгов"))
 and
(($InputData_1_->Keyword == "навозных"))
 and
(($InputData_1_->Keyword == "шалавистой"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-11";
}
//rule_4-12
if (
(($InputData_1_->Keyword == "актёришка"))
 and
(($InputData_1_->Keyword == "аплодисментами"))
 and
(($InputData_1_->Keyword == "долбанный"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-12";
}
//rule_4-13
if (
(($InputData_1_->Keyword == "злючая"))
 and
(($InputData_1_->Keyword == "курить"))
 and
(($InputData_1_->Keyword == "мамашка"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-13";
}
//rule_4-14
if (
(($InputData_1_->Keyword == "висят"))
 and
(($InputData_1_->Keyword == "груди"))
 and
(($InputData_1_->Keyword == "когда"))
 and
(($InputData_1_->Keyword == "нравится"))
 and
(($InputData_1_->Keyword == "спаниеля"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-14";
}
//rule_4-15
if (
(($InputData_1_->Keyword == "шалава"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-15";
}
//rule_4-16
if (
(($InputData_1_->Keyword == "агрессией"))
 and
(($InputData_1_->Keyword == "любовницы"))
 and
(($InputData_1_->Keyword == "позорной"))
 and
(($InputData_1_->Keyword == "шизофренической"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-16";
}
//rule_4-17
if (
(($InputData_1_->Keyword == "душат"))
 and
(($InputData_1_->Keyword == "послал"))
 and
(($InputData_1_->Keyword == "посылают"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-17";
}
//rule_4-18
if (
(($InputData_1_->Keyword == "брошенка"))
 and
(($InputData_1_->Keyword == "гулящяя"))
 and
(($InputData_1_->Keyword == "разведёнка"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-18";
}
//rule_4-19
if (
(($InputData_1_->Keyword == "жесть"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-19";
}
//rule_4-20
if (
(($InputData_1_->Keyword == "лысой"))
 and
(($InputData_1_->Keyword == "пиздёнкой"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-20";
}
//rule_4-21
if (
(($InputData_1_->Keyword == "мамочке-шалавочке"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-21";
}
//rule_4-22
if (
(($InputData_1_->Keyword == "тварь"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-22";
}
//rule_4-23
if (
(($InputData_1_->Keyword == "мамочка-ш"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-23";
}
//rule_4-24
if (
(($InputData_1_->Keyword == "жопе"))
 and
(($InputData_1_->Keyword == "пиздёнку"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-24";
}
//rule_4-25
if (
(($InputData_1_->Keyword == "бессовестная"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-25";
}
//rule_4-26
if (
(($InputData_1_->Keyword == "секс"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-26";
}
//rule_4-27
if (
(($InputData_1_->Keyword == "мразь"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-27";
}
//rule_4-28
if (
(($InputData_1_->Keyword == "блочишь"))
 and
(($InputData_1_->Keyword == "женихов"))
 and
(($InputData_1_->Keyword == "подыскиваем"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-28";
}
//rule_4-29
if (
(($InputData_1_->Keyword == "дать"))
 and
(($InputData_1_->Keyword == "женщине"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-29";
}
//rule_4-30
if (
(($InputData_1_->Keyword == "гонется"))
 and
(($InputData_1_->Keyword == "деньгами"))
 and
(($InputData_1_->Keyword == "потаскуха"))
 and
(($InputData_1_->Keyword == "старикашке"))
 and
(($InputData_1_->Keyword == "чужими"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-30";
}
//rule_4-31
if (
(($InputData_1_->Keyword == "обострение"))
 and
(($InputData_1_->Keyword == "толстозадая"))
 and
(($InputData_1_->Keyword == "шизофреников"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-31";
}
//rule_4-32
if (
(($InputData_1_->Keyword == "мужик"))
 and
(($InputData_1_->Keyword == "непорядочной"))
 and
(($InputData_1_->Keyword == "развестись"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-32";
}
//rule_4-33
if (
(($InputData_1_->Keyword == "обострение"))
 and
(($InputData_1_->Keyword == "признаки"))
 and
(($InputData_1_->Keyword == "ревности"))
 and
(($InputData_1_->Keyword == "шалавой"))
 and
(($InputData_1_->Keyword == "шизофрении"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-33";
}
//rule_4-34
if (
(($InputData_1_->Keyword == "камера"))
 and
(($InputData_1_->Keyword == "лысая"))
 and
(($InputData_1_->Keyword == "пиздёнка"))
 and
(($InputData_1_->Keyword == "скрытая"))
 and
(($InputData_1_->Keyword == "снимала"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-34";
}
//rule_4-35
if (
(($InputData_1_->Keyword == "мамочке-шалавочке"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-35";
}
//rule_4-36
if (
(($InputData_1_->Keyword == "брошенка"))
 and
(($InputData_1_->Keyword == "разведёнкой"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-36";
}
//rule_4-37
if (
(($InputData_1_->Keyword == "брошенки"))
 and
(($InputData_1_->Keyword == "любовница"))
 and
(($InputData_1_->Keyword == "позорище"))
 and
(($InputData_1_->Keyword == "тёлка"))
 and
(($InputData_1_->Keyword == "шалава"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-37";
}
//rule_4-38
if (
(($InputData_1_->Keyword == "бывший"))
 and
(($InputData_1_->Keyword == "забудь"))
 and
(($InputData_1_->Keyword == "опрокинул"))
 and
(($InputData_1_->Keyword == "потаскушечье"))
 and
(($InputData_1_->Keyword == "разводе"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-38";
}
//rule_4-39
if (
(($InputData_1_->Keyword == "брошенка"))
 and
(($InputData_1_->Keyword == "никчёмности"))
 and
(($InputData_1_->Keyword == "отвращения"))
 and
(($InputData_1_->Keyword == "разведёнка"))
 and
(($InputData_1_->Keyword == "сдохла"))
 and
(($InputData_1_->Keyword == "шалавистая"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-39";
}
//rule_4-40
if (
(($InputData_1_->Keyword == "заслужила"))
 and
(($InputData_1_->Keyword == "захлебнулась"))
 and
(($InputData_1_->Keyword == "злости"))
 and
(($InputData_1_->Keyword == "изменить"))
 and
(($InputData_1_->Keyword == "никчёмное"))
 and
(($InputData_1_->Keyword == "ревности"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-40";
}
//rule_4-41
if (
(($InputData_1_->Keyword == "безудержный"))
 and
(($InputData_1_->Keyword == "месть"))
 and
(($InputData_1_->Keyword == "кайфово"))
 and
(($InputData_1_->Keyword == "потаскушка"))
 and
(($InputData_1_->Keyword == "приятненько"))
 and
(($InputData_1_->Keyword == "секс"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-41";
}
//rule_4-42
if (
(($InputData_1_->Keyword == "выносишь"))
 and
(($InputData_1_->Keyword == "отвыкни"))
 and
(($InputData_1_->Keyword == "звонишь"))
 and
(($InputData_1_->Keyword == "мозги"))
 and
(($InputData_1_->Keyword == "обманывают"))
 and
(($InputData_1_->Keyword == "потаскушка"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-42";
}
//rule_4-43
if (
(($InputData_1_->Keyword == "плевать"))
 and
(($InputData_1_->Keyword == "потаскушка"))
 and
(($InputData_1_->Keyword == "тупой"))
 and
(($InputData_1_->Keyword == "хватит"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-43";
}
//rule_4-44
if (
(($InputData_1_->Keyword == "близости"))
 and
(($InputData_1_->Keyword == "бывший"))
 and
(($InputData_1_->Keyword == "интимной"))
 and
(($InputData_1_->Keyword == "шизофреничная"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-44";
}
//rule_4-45
if (
(($InputData_1_->Keyword == "мамаша"))
 and
(($InputData_1_->Keyword == "отожгла"))
 and
(($InputData_1_->Keyword == "отчимом"))
 and
(($InputData_1_->Keyword == "старикашка"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-45";
}
//rule_3-3
if (
(($InputData_1_->Keyword == "(800)100-97-28"))
 and
(($InputData_1_->Keyword == "alfabank"))
 and
(($InputData_1_->Keyword == "oplata"))
 and
(($InputData_1_->Keyword == "ozon.ru"))
 and
(($InputData_1_->Keyword == "pokupki"))
 and
(($InputData_1_->Keyword == "summy"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-3";
}
//rule_3-4
if (
(($InputData_1_->Keyword == "8(800)100-97-28"))
 and
(($InputData_1_->Keyword == "alfabank"))
 and
(($InputData_1_->Keyword == "oplata"))
 and
(($InputData_1_->Keyword == "ozon.ru"))
 and
(($InputData_1_->Keyword == "pokupki"))
 and
(($InputData_1_->Keyword == "summy"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-4";
}
//rule_3-5
if (
(($InputData_1_->Keyword == "icloud.com.lfind.me"))
 and
(($InputData_1_->Keyword == "местоположении"))
 and
(($InputData_1_->Keyword == "обнаружен"))
 and
(($InputData_1_->Keyword == "последнем"))
 and
(($InputData_1_->Keyword == "сегодня"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-5";
}
//rule_3-6
if (
(($InputData_1_->Keyword == "lcioud.ru"))
 and
(($InputData_1_->Keyword == "linked"))
 and
(($InputData_1_->Keyword == "located"))
 and
(($InputData_1_->Keyword == "location"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-6";
}
//rule_3-7
if (
(($InputData_1_->Keyword == "icloud.com.ru-en.info"))
 and
(($InputData_1_->Keyword == "информация"))
 and
(($InputData_1_->Keyword == "местоположении"))
 and
(($InputData_1_->Keyword == "обнаружен"))
 and
(($InputData_1_->Keyword == "сегодня"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-7";
}
//rule_3-8
if (
(($InputData_1_->Keyword == "3aблoкиpoвaha"))
 and
(($InputData_1_->Keyword == "бahkobckaя"))
 and
(($InputData_1_->Keyword == "кapta"))
 and
(($InputData_1_->Keyword == "8(800)3335554"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-8";
}
//rule_3-9
if (
(($InputData_1_->Keyword == "3aблoкиpoвaha"))
 and
(($InputData_1_->Keyword == "бahkobckaя"))
 and
(($InputData_1_->Keyword == "кapta"))
 and
(($InputData_1_->Keyword == "8(800)333-86-19"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-9";
}
//rule_3-10
if (
(($InputData_1_->Keyword == "88001003333"))
 and
(($InputData_1_->Keyword == "bimbank"))
 and
(($InputData_1_->Keyword == "списание"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-10";
}
//rule_3-11
if (
(($InputData_1_->Keyword == "8(800)511-09-80"))
 and
(($InputData_1_->Keyword == "binb"))
 and
(($InputData_1_->Keyword == "cписание"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-11";
}
//rule_3-12
if (
(($InputData_1_->Keyword == "8(800)333-85-78"))
 and
(($InputData_1_->Keyword == "binb"))
 and
(($InputData_1_->Keyword == "заказ"))
 and
(($InputData_1_->Keyword == "оплачен"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-12";
}
//rule_3-13
if (
(($InputData_1_->Keyword == "8(800)333-85-78"))
 and
(($InputData_1_->Keyword == "binb"))
 and
(($InputData_1_->Keyword == "платеж"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-13";
}
//rule_3-14
if (
(($InputData_1_->Keyword == "88005054928"))
 and
(($InputData_1_->Keyword == "binbank"))
 and
(($InputData_1_->Keyword == "заказ"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-14";
}
//rule_2-1
if (
(($InputData_1_->Keyword == "click"))
 and
(($InputData_1_->Keyword == "hornet"))
 and
(($InputData_1_->Keyword == "http://bit.ly"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_2-1";
}
//rule_2-2
if (
(($InputData_1_->Keyword == "cкачай"))
 and
(($InputData_1_->Keyword == "http://vk.cc"))
 and
(($InputData_1_->Keyword == "бонусов"))
 and
(($InputData_1_->Keyword == "получи"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_2-2";
}
//rule_2-3
if (
(($InputData_1_->Keyword == "cкачай"))
 and
(($InputData_1_->Keyword == "http://www.goo.gl"))
 and
(($InputData_1_->Keyword == "бонусов"))
 and
(($InputData_1_->Keyword == "получи"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_2-3";
}
//rule_2-4
if (
(($InputData_1_->Keyword == "cкачай"))
 and
(($InputData_1_->Keyword == "http://www.vk.cc"))
 and
(($InputData_1_->Keyword == "бонусов"))
 and
(($InputData_1_->Keyword == "получи"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_2-4";
}
//rule_3-15
if (
(($InputData_1_->Keyword == "icloud.com.lfind.me"))
 and
(($InputData_1_->Keyword == "linked"))
 and
(($InputData_1_->Keyword == "located"))
 and
(($InputData_1_->Keyword == "location"))
 and
(($InputData_1_->Keyword == "mihk@list.ru"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-15";
}
//rule_3-16
if (
(($InputData_1_->Keyword == "lost"))
 and
(($InputData_1_->Keyword == "stolen"))
 and
(($InputData_1_->Keyword == "reclaim"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-16";
}
//rule_1-7
if (
(($InputData_1_->Keyword == "rush"))
 and
(($InputData_1_->Keyword == "ultra"))
 and
(($InputData_1_->Keyword == "киви"))
 and
(($InputData_1_->Keyword == "легальный"))
 and
(($InputData_1_->Keyword == "микс"))
 and
(($InputData_1_->Keyword == "пробы"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-7";
}
//rule_1-8
if (
(($InputData_1_->Keyword == "rush"))
 and
(($InputData_1_->Keyword == "ultra"))
 and
(($InputData_1_->Keyword == "легальный"))
 and
(($InputData_1_->Keyword == "микс"))
 and
(($InputData_1_->Keyword == "пробы"))
 and
(($InputData_1_->Keyword == "клады"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-8";
}
//rule_1-9
if (
(($InputData_1_->Keyword == "plastyr"))
 and
(($InputData_1_->Keyword == "polozhi"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-9";
}
//rule_3-17
if (
(($InputData_1_->Keyword == "cpoчнo"))
 and
(($InputData_1_->Keyword == "cвяжитecь"))
 and
(($InputData_1_->Keyword == "kapтe"))
 and
(($InputData_1_->Keyword == "oпepaции"))
 and
(($InputData_1_->Keyword == "пpиocтaнoвлeны"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-17";
}
//rule_1-10
if (
(($InputData_1_->Keyword == "pharmbar.com"))
 and
(($InputData_1_->Keyword == "pharmbar.net"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-10";
}
//rule_3-18
if (
(($InputData_1_->Keyword == "pokupka"))
 and
(($InputData_1_->Keyword == "tel"))
 and
(($InputData_1_->Keyword == "yspeshna"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-18";
}
//rule_3-19
if (
(($InputData_1_->Keyword == "raiffayzen"))
 and
(($InputData_1_->Keyword == "списание"))
 and
(($InputData_1_->Keyword == "справки:"))
 and
(($InputData_1_->Keyword == "сумму"))
 and
(($InputData_1_->Keyword == "успешно"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-19";
}
//rule_3-20
if (
(($InputData_1_->Keyword == "raiffeisen"))
 and
(($InputData_1_->Keyword == "списание"))
 and
(($InputData_1_->Keyword == "справки:"))
 and
(($InputData_1_->Keyword == "сумму"))
 and
(($InputData_1_->Keyword == "успешно"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-20";
}
//rule_2-5
if (
(($InputData_1_->Keyword == "party"))
 and
(($InputData_1_->Keyword == "sexy"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_2-5";
}
//rule_3-21
if (
(($InputData_1_->Keyword == "maximum"))
 and
(($InputData_1_->Keyword == "nomer"))
 and
(($InputData_1_->Keyword == "priz"))
 and
(($InputData_1_->Keyword == "spravki"))
 and
(($InputData_1_->Keyword == "vigrali"))
 and
(($InputData_1_->Keyword == "www.fm-maximum.ru"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-21";
}
//rule_3-22
if (
(($InputData_1_->Keyword == "sovkom"))
 and
(($InputData_1_->Keyword == "списание"))
 and
(($InputData_1_->Keyword == "сумму"))
 and
(($InputData_1_->Keyword == "успешно"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-22";
}
//rule_3-23
if (
(($InputData_1_->Keyword == "sberbank"))
 and
(($InputData_1_->Keyword == "spravki"))
 and
(($InputData_1_->Keyword == "srochno"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-23";
}
//rule_3-24
if (
(($InputData_1_->Keyword == "klient"))
 and
(($InputData_1_->Keyword == "sberbank"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-24";
}
//rule_3-25
if (
(($InputData_1_->Keyword == "pensii"))
 and
(($InputData_1_->Keyword == "pensioner"))
 and
(($InputData_1_->Keyword == "planovaya"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-25";
}
//rule_3-26
if (
(($InputData_1_->Keyword == "comepay"))
 and
(($InputData_1_->Keyword == "vash"))
 and
(($InputData_1_->Keyword == "yandex"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-26";
}
//rule_3-27
if (
(($InputData_1_->Keyword == "login"))
 and
(($InputData_1_->Keyword == "personalniy"))
 and
(($InputData_1_->Keyword == "popolneniya"))
 and
(($InputData_1_->Keyword == "soobshaite"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-27";
}
//rule_3-28
if (
(($InputData_1_->Keyword == "comepay"))
 and
(($InputData_1_->Keyword == "vash"))
 and
(($InputData_1_->Keyword == "yandex"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-28";
}
//rule_3-29
if (
(($InputData_1_->Keyword == "banka"))
 and
(($InputData_1_->Keyword == "obrabotke"))
 and
(($InputData_1_->Keyword == "ojidaite"))
 and
(($InputData_1_->Keyword == "platej"))
 and
(($InputData_1_->Keyword == "prinyat"))
 and
(($InputData_1_->Keyword == "zachisleniya"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-29";
}
//rule_3-30
if (
(($InputData_1_->Keyword == "obrabotku"))
 and
(($InputData_1_->Keyword == "ojidaite"))
 and
(($InputData_1_->Keyword == "platej"))
 and
(($InputData_1_->Keyword == "popolneniya!"))
 and
(($InputData_1_->Keyword == "prinyat"))
 and
(($InputData_1_->Keyword == "vash"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-30";
}
//rule_3-31
if (
(($InputData_1_->Keyword == "bankovskaya"))
 and
(($InputData_1_->Keyword == "karta"))
 and
(($InputData_1_->Keyword == "zablokirovana"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-31";
}
//rule_3-32
if (
(($InputData_1_->Keyword == "bankovskaya"))
 and
(($InputData_1_->Keyword == "spravki"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-32";
}
//rule_2-6
if (
(($InputData_1_->Keyword == "http://bit.ly"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_2-6";
}
//rule_3-33
if (
(($InputData_1_->Keyword == "info"))
 and
(($InputData_1_->Keyword == "ozon.ru"))
 and
(($InputData_1_->Keyword == "pokupki"))
 and
(($InputData_1_->Keyword == "summy"))
 and
(($InputData_1_->Keyword == "vtb"))
 and
(($InputData_1_->Keyword == "oplata"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-33";
}
//rule_3-34
if (
(($InputData_1_->Keyword == "ozon.ru"))
 and
(($InputData_1_->Keyword == "pokupki"))
 and
(($InputData_1_->Keyword == "summy"))
 and
(($InputData_1_->Keyword == "tel"))
 and
(($InputData_1_->Keyword == "vtb"))
 and
(($InputData_1_->Keyword == "oplata"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-34";
}
//rule_3-35
if (
(($InputData_1_->Keyword == "perevod"))
 and
(($InputData_1_->Keyword == "proizvodili"))
 and
(($InputData_1_->Keyword == "summa"))
 and
(($InputData_1_->Keyword == "tranzaktsiyu"))
 and
(($InputData_1_->Keyword == "vypolnen"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-35";
}
//rule_3-36
if (
(($InputData_1_->Keyword == "заблокирована"))
 and
(($InputData_1_->Keyword == "справки"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-36";
}
//rule_3-37
if (
(($InputData_1_->Keyword == "info"))
 and
(($InputData_1_->Keyword == "klient"))
 and
(($InputData_1_->Keyword == "obratites`"))
 and
(($InputData_1_->Keyword == "sberbank"))
 and
(($InputData_1_->Keyword == "srochno"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-37";
}
//rule_4-46
if (
(($InputData_1_->Keyword == "разведётся"))
 and
(($InputData_1_->Keyword == "счастливы"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-46";
}
//rule_4-47
if (
(($InputData_1_->Keyword == "вибратор"))
 and
(($InputData_1_->Keyword == "женщина"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-47";
}
//rule_4-48
if (
(($InputData_1_->Keyword == "горами"))
 and
(($InputData_1_->Keyword == "развод"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-48";
}
//rule_4-49
if (
(($InputData_1_->Keyword == "рога"))
 and
(($InputData_1_->Keyword == "сами"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-49";
}
//rule_4-50
if (
(($InputData_1_->Keyword == "гулящая"))
 and
(($InputData_1_->Keyword == "жена"))
 and
(($InputData_1_->Keyword == "корыстная"))
 and
(($InputData_1_->Keyword == "мужчины"))
 and
(($InputData_1_->Keyword == "неблагодарная"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-50";
}
//rule_4-51
if (
(($InputData_1_->Keyword == "бывших"))
 and
(($InputData_1_->Keyword == "всегда"))
 and
(($InputData_1_->Keyword == "любовников"))
 and
(($InputData_1_->Keyword == "мужья"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-51";
}
//rule_4-52
if (
(($InputData_1_->Keyword == "тачка"))
 and
(($InputData_1_->Keyword == "твоя"))
 and
(($InputData_1_->Keyword == "трэш"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-52";
}
//rule_4-53
if (
(($InputData_1_->Keyword == "любовном"))
 and
(($InputData_1_->Keyword == "напополам"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-53";
}
//rule_3-38
if (
(($InputData_1_->Keyword == "банковская"))
 and
(($InputData_1_->Keyword == "ваша"))
 and
(($InputData_1_->Keyword == "заблокирована"))
 and
(($InputData_1_->Keyword == "карта"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-38";
}
//rule_3-39
if (
(($InputData_1_->Keyword == "заявка"))
 and
(($InputData_1_->Keyword == "отмены"))
 and
(($InputData_1_->Keyword == "платья"))
 and
(($InputData_1_->Keyword == "покупку"))
 and
(($InputData_1_->Keyword == "принята"))
 and
(($InputData_1_->Keyword == "стоимостью"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-39";
}
//rule_3-40
if (
(($InputData_1_->Keyword == "верните"))
 and
(($InputData_1_->Keyword == "деньги"))
 and
(($InputData_1_->Keyword == "консультацию"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-40";
}
//rule_3-41
if (
(($InputData_1_->Keyword == "банковская"))
 and
(($InputData_1_->Keyword == "ваша"))
 and
(($InputData_1_->Keyword == "заблокирована"))
 and
(($InputData_1_->Keyword == "карта"))
 and
(($InputData_1_->Keyword == "тел"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-41";
}
//rule_3-42
if (
(($InputData_1_->Keyword == "ваша"))
 and
(($InputData_1_->Keyword == "заблокирована"))
 and
(($InputData_1_->Keyword == "справки"))
 and
(($InputData_1_->Keyword == "карта"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-42";
}
//rule_4-54
if (
(($InputData_1_->Keyword == "гулящая"))
 and
(($InputData_1_->Keyword == "жаловаться"))
 and
(($InputData_1_->Keyword == "женщина"))
 and
(($InputData_1_->Keyword == "изменять"))
 and
(($InputData_1_->Keyword == "раздвигать"))
 and
(($InputData_1_->Keyword == "шалава"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-54";
}
//rule_4-55
if (
(($InputData_1_->Keyword == "акстись"))
 and
(($InputData_1_->Keyword == "бывшего"))
 and
(($InputData_1_->Keyword == "дуууурааааа"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-55";
}
//rule_4-56
if (
(($InputData_1_->Keyword == "бросили"))
 and
(($InputData_1_->Keyword == "суёшь"))
 and
(($InputData_1_->Keyword == "чужие"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-56";
}
//rule_3-43
if (
(($InputData_1_->Keyword == "банковские"))
 and
(($InputData_1_->Keyword == "временно"))
 and
(($InputData_1_->Keyword == "операции"))
 and
(($InputData_1_->Keyword == "приостановленны"))
 and
(($InputData_1_->Keyword == "справки"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-43";
}
//rule_3-44
if (
(($InputData_1_->Keyword == "www.bit.ly"))
 and
(($InputData_1_->Keyword == "получили"))
 and
(($InputData_1_->Keyword == "просмотреть"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-44";
}
//rule_3-45
if (
(($InputData_1_->Keyword == "bit.ly"))
 and
(($InputData_1_->Keyword == "mms"))
 and
(($InputData_1_->Keyword == "получили"))
 and
(($InputData_1_->Keyword == "просмотреть"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-45";
}
//rule_3-46
if (
(($InputData_1_->Keyword == "goo.gl"))
 and
(($InputData_1_->Keyword == "mms"))
 and
(($InputData_1_->Keyword == "получили"))
 and
(($InputData_1_->Keyword == "просмотреть"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-46";
}
//rule_3-47
if (
(($InputData_1_->Keyword == "выполнен"))
 and
(($InputData_1_->Keyword == "звоните"))
 and
(($InputData_1_->Keyword == "перевод"))
 and
(($InputData_1_->Keyword == "производили"))
 and
(($InputData_1_->Keyword == "сумма"))
 and
(($InputData_1_->Keyword == "транзакцию"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-47";
}
//rule_4-57
if (
(($InputData_1_->Keyword == "гулящая"))
 and
(($InputData_1_->Keyword == "женщина"))
 and
(($InputData_1_->Keyword == "нужная"))
 and
(($InputData_1_->Keyword == "падшая"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-57";
}
//rule_4-58
if (
(($InputData_1_->Keyword == "быть"))
 and
(($InputData_1_->Keyword == "второсортной"))
 and
(($InputData_1_->Keyword == "любовницей"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-58";
}
//rule_4-59
if (
(($InputData_1_->Keyword == "дурой"))
 and
(($InputData_1_->Keyword == "конченной"))
 and
(($InputData_1_->Keyword == "мразью"))
 and
(($InputData_1_->Keyword == "наконец"))
 and
(($InputData_1_->Keyword == "отталкиваешь"))
 and
(($InputData_1_->Keyword == "слепой"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-59";
}
//rule_1-11
if (
(($InputData_1_->Keyword == "клады"))
 and
(($InputData_1_->Keyword == "курительные"))
 and
(($InputData_1_->Keyword == "легал"))
 and
(($InputData_1_->Keyword == "пробы"))
 and
(($InputData_1_->Keyword == "смеси-1п-500"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-11";
}
//rule_1-12
if (
(($InputData_1_->Keyword == "1п-500"))
 and
(($InputData_1_->Keyword == "rash"))
 and
(($InputData_1_->Keyword == "клады"))
 and
(($InputData_1_->Keyword == "легал"))
 and
(($InputData_1_->Keyword == "микс"))
 and
(($InputData_1_->Keyword == "пробы"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-12";
}
//rule_1-13
if (
(($InputData_1_->Keyword == "1п-500"))
 and
(($InputData_1_->Keyword == "курительный"))
 and
(($InputData_1_->Keyword == "легальный"))
 and
(($InputData_1_->Keyword == "микс"))
 and
(($InputData_1_->Keyword == "пробы"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-13";
}
//rule_1-14
if (
(($InputData_1_->Keyword == "1пак-500"))
 and
(($InputData_1_->Keyword == "rash"))
 and
(($InputData_1_->Keyword == "клады"))
 and
(($InputData_1_->Keyword == "легальный"))
 and
(($InputData_1_->Keyword == "микс"))
 and
(($InputData_1_->Keyword == "пробники"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-14";
}
//rule_4-60
if (
(($InputData_1_->Keyword == "алкогольного"))
 and
(($InputData_1_->Keyword == "воспитанием"))
 and
(($InputData_1_->Keyword == "занялась"))
 and
(($InputData_1_->Keyword == "опьянения"))
 and
(($InputData_1_->Keyword == "постоянно"))
 and
(($InputData_1_->Keyword == "состоянии"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-60";
}
//rule_4-61
if (
(($InputData_1_->Keyword == "страшные"))
 and
(($InputData_1_->Keyword == "сучка"))
 and
(($InputData_1_->Keyword == "трепать"))
 and
(($InputData_1_->Keyword == "умрешь"))
 and
(($InputData_1_->Keyword == "язык"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-61";
}
//rule_4-62
if (
(($InputData_1_->Keyword == "любовница"))
 and
(($InputData_1_->Keyword == "нужду"))
 and
(($InputData_1_->Keyword == "справлять"))
 and
(($InputData_1_->Keyword == "точности"))
 and
(($InputData_1_->Keyword == "туалет"))
 and
(($InputData_1_->Keyword == "чужой"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-62";
}
//rule_1-15
if (
(($InputData_1_->Keyword == "ближайшее"))
 and
(($InputData_1_->Keyword == "еманжелинск"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-15";
}
//rule_1-16
if (
(($InputData_1_->Keyword == "блин"))
 and
(($InputData_1_->Keyword == "забывай"))
 and
(($InputData_1_->Keyword == "понял"))
 and
(($InputData_1_->Keyword == "шуми"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-16";
}
//rule_1-17
if (
(($InputData_1_->Keyword == "блин"))
 and
(($InputData_1_->Keyword == "было"))
 and
(($InputData_1_->Keyword == "вкрай"))
 and
(($InputData_1_->Keyword == "извини"))
 and
(($InputData_1_->Keyword == "магаз"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-17";
}
//rule_1-18
if (
(($InputData_1_->Keyword == "блин"))
 and
(($InputData_1_->Keyword == "номер"))
 and
(($InputData_1_->Keyword == "пишу"))
 and
(($InputData_1_->Keyword == "спутал"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-18";
}
//rule_1-19
if (
(($InputData_1_->Keyword == "блин"))
 and
(($InputData_1_->Keyword == "недождался"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-19";
}
//rule_1-20
if (
(($InputData_1_->Keyword == "бажова"))
 and
(($InputData_1_->Keyword == "падик"))
 and
(($InputData_1_->Keyword == "ящиком"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-20";
}
//rule_1-21
if (
(($InputData_1_->Keyword == "внизу"))
 and
(($InputData_1_->Keyword == "возле"))
 and
(($InputData_1_->Keyword == "крыльцо"))
 and
(($InputData_1_->Keyword == "магазин"))
 and
(($InputData_1_->Keyword == "ступени"))
 and
(($InputData_1_->Keyword == "уголком"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-21";
}
//rule_1-22
if (
(($InputData_1_->Keyword == "слева"))
 and
(($InputData_1_->Keyword == "бажова"))
 and
(($InputData_1_->Keyword == "лампой"))
 and
(($InputData_1_->Keyword == "падик"))
 and
(($InputData_1_->Keyword == "проводами"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-22";
}
//rule_1-23
if (
(($InputData_1_->Keyword == "барыг"))
 and
(($InputData_1_->Keyword == "дохуя"))
 and
(($InputData_1_->Keyword == "спортсмены"))
 and
(($InputData_1_->Keyword == "крепят"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-23";
}
//rule_1-24
if (
(($InputData_1_->Keyword == "буландо"))
 and
(($InputData_1_->Keyword == "падик"))
 and
(($InputData_1_->Keyword == "слево"))
 and
(($InputData_1_->Keyword == "электокаробке"))
 and
(($InputData_1_->Keyword == "этаж"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-24";
}
//rule_1-25
if (
(($InputData_1_->Keyword == "буландо"))
 and
(($InputData_1_->Keyword == "железная"))
 and
(($InputData_1_->Keyword == "левой"))
 and
(($InputData_1_->Keyword == "лестница"))
 and
(($InputData_1_->Keyword == "падик"))
 and
(($InputData_1_->Keyword == "рельсой"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-25";
}
//rule_1-26
if (
(($InputData_1_->Keyword == "буландо"))
 and
(($InputData_1_->Keyword == "вторая"))
 and
(($InputData_1_->Keyword == "домофон"))
 and
(($InputData_1_->Keyword == "падике"))
 and
(($InputData_1_->Keyword == "труба"))
 and
(($InputData_1_->Keyword == "утеплителем"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-26";
}
//rule_1-27
if (
(($InputData_1_->Keyword == "буландо"))
 and
(($InputData_1_->Keyword == "падик"))
 and
(($InputData_1_->Keyword == "этаж"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-27";
}
//rule_1-28
if (
(($InputData_1_->Keyword == "буландо"))
 and
(($InputData_1_->Keyword == "квартира"))
 and
(($InputData_1_->Keyword == "подьезд"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-28";
}
//rule_1-29
if (
(($InputData_1_->Keyword == "ебнулся"))
 and
(($InputData_1_->Keyword == "ладно"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-29";
}
//rule_1-30
if (
(($InputData_1_->Keyword == "внизу"))
 and
(($InputData_1_->Keyword == "заходиш"))
 and
(($InputData_1_->Keyword == "падик"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-30";
}
//rule_1-31
if (
(($InputData_1_->Keyword == "плакат"))
 and
(($InputData_1_->Keyword == "посуда"))
 and
(($InputData_1_->Keyword == "справого"))
 and
(($InputData_1_->Keyword == "торца"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-31";
}
//rule_1-32
if (
(($InputData_1_->Keyword == "желтый"))
 and
(($InputData_1_->Keyword == "большая"))
 and
(($InputData_1_->Keyword == "вывеска"))
 and
(($InputData_1_->Keyword == "магазин"))
 and
(($InputData_1_->Keyword == "слон"))
 and
(($InputData_1_->Keyword == "справа"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-32";
}
//rule_1-33
if (
(($InputData_1_->Keyword == "взади"))
 and
(($InputData_1_->Keyword == "падик"))
 and
(($InputData_1_->Keyword == "ящиком"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-33";
}
//rule_1-34
if (
(($InputData_1_->Keyword == "другого"))
 and
(($InputData_1_->Keyword == "забереш"))
 and
(($InputData_1_->Keyword == "предложить"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-34";
}
//rule_1-35
if (
(($InputData_1_->Keyword == "комент"))
 and
(($InputData_1_->Keyword == "ложи"))
 and
(($InputData_1_->Keyword == "придумай"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-35";
}
//rule_1-36
if (
(($InputData_1_->Keyword == "будет"))
 and
(($InputData_1_->Keyword == "вассаби"))
 and
(($InputData_1_->Keyword == "ложи"))
 and
(($InputData_1_->Keyword == "молниеносно"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-36";
}
//rule_1-37
if (
(($InputData_1_->Keyword == "киви"))
 and
(($InputData_1_->Keyword == "комент"))
 and
(($InputData_1_->Keyword == "ложи"))
 and
(($InputData_1_->Keyword == "мегафон"))
 and
(($InputData_1_->Keyword == "придумай"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-37";
}
//rule_1-38
if (
(($InputData_1_->Keyword == "ложи"))
 and
(($InputData_1_->Keyword == "сюда"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-38";
}
//rule_1-39
if (
(($InputData_1_->Keyword == "время"))
 and
(($InputData_1_->Keyword == "киви"))
 and
(($InputData_1_->Keyword == "комент"))
 and
(($InputData_1_->Keyword == "ложи"))
 and
(($InputData_1_->Keyword == "номер"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-39";
}
//rule_1-40
if (
(($InputData_1_->Keyword == "pharmbar.org"))
 and
(($InputData_1_->Keyword == "фармыч"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-40";
}
//rule_4-63
if (
(($InputData_1_->Keyword == "прилёт"))
 and
(($InputData_1_->Keyword == "развод"))
 and
(($InputData_1_->Keyword == "существовании"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-63";
}
//rule_4-64
if (
(($InputData_1_->Keyword == "алкоголика"))
 and
(($InputData_1_->Keyword == "занялась"))
 and
(($InputData_1_->Keyword == "мужьям"))
 and
(($InputData_1_->Keyword == "постоянно"))
 and
(($InputData_1_->Keyword == "пьяном"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-64";
}
//rule_4-65
if (
(($InputData_1_->Keyword == "бывший"))
 and
(($InputData_1_->Keyword == "горевал"))
 and
(($InputData_1_->Keyword == "гулять"))
 and
(($InputData_1_->Keyword == "долго"))
 and
(($InputData_1_->Keyword == "любовника"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-65";
}
//rule_1-41
if (
(($InputData_1_->Keyword == "количество"))
 and
(($InputData_1_->Keyword == "увеличу"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-41";
}
//rule_1-42
if (
(($InputData_1_->Keyword == "забрал"))
 and
(($InputData_1_->Keyword == "интерсвязи"))
 and
(($InputData_1_->Keyword == "сверху"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-42";
}
//rule_1-43
if (
(($InputData_1_->Keyword == "весы"))
 and
(($InputData_1_->Keyword == "вешаеш"))
 and
(($InputData_1_->Keyword == "морковь"))
 and
(($InputData_1_->Keyword == "откуда"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-43";
}
//rule_1-44
if (
(($InputData_1_->Keyword == "город"))
 and
(($InputData_1_->Keyword == "какой"))
 and
(($InputData_1_->Keyword == "хоть"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-44";
}
//rule_1-45
if (
(($InputData_1_->Keyword == "было"))
 and
(($InputData_1_->Keyword == "какой"))
 and
(($InputData_1_->Keyword == "качество"))
 and
(($InputData_1_->Keyword == "почем"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-45";
}
//rule_1-46
if (
(($InputData_1_->Keyword == "есть"))
 and
(($InputData_1_->Keyword == "куряк"))
 and
(($InputData_1_->Keyword == "много"))
 and
(($InputData_1_->Keyword == "распространяется"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-46";
}
//rule_1-47
if (
(($InputData_1_->Keyword == "mn25f"))
 and
(($InputData_1_->Keyword == "долгий"))
 and
(($InputData_1_->Keyword == "легальный"))
 and
(($InputData_1_->Keyword == "махра"))
 and
(($InputData_1_->Keyword == "микс"))
 and
(($InputData_1_->Keyword == "мягкий"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-47";
}
//rule_1-48
if (
(($InputData_1_->Keyword == "встал"))
 and
(($InputData_1_->Keyword == "отвечаю"))
 and
(($InputData_1_->Keyword == "пасибо"))
 and
(($InputData_1_->Keyword == "пропущенные"))
 and
(($InputData_1_->Keyword == "токо"))
 and
(($InputData_1_->Keyword == "шумят"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-48";
}
//rule_1-49
if (
(($InputData_1_->Keyword == "аптекарьщик"))
 and
(($InputData_1_->Keyword == "аспирина"))
 and
(($InputData_1_->Keyword == "лишканул"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-49";
}
//rule_1-50
if (
(($InputData_1_->Keyword == "аквамарин"))
 and
(($InputData_1_->Keyword == "есть"))
 and
(($InputData_1_->Keyword == "ложи"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-50";
}
//rule_1-51
if (
(($InputData_1_->Keyword == "есть"))
 and
(($InputData_1_->Keyword == "курильная"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-51";
}
//rule_1-52
if (
(($InputData_1_->Keyword == "адрес"))
 and
(($InputData_1_->Keyword == "быстро"))
 and
(($InputData_1_->Keyword == "есть"))
 and
(($InputData_1_->Keyword == "пребыстро"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-52";
}
//rule_1-53
if (
(($InputData_1_->Keyword == "готовый"))
 and
(($InputData_1_->Keyword == "есть"))
 and
(($InputData_1_->Keyword == "клад"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-53";
}
//rule_4-66
if (
(($InputData_1_->Keyword == "позор"))
 and
(($InputData_1_->Keyword == "женщина"))
 and
(($InputData_1_->Keyword == "жизнь"))
 and
(($InputData_1_->Keyword == "репутацией"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-66";
}
//rule_1-54
if (
(($InputData_1_->Keyword == "адрес"))
 and
(($InputData_1_->Keyword == "бонусом"))
 and
(($InputData_1_->Keyword == "закладчик"))
 and
(($InputData_1_->Keyword == "отдам"))
 and
(($InputData_1_->Keyword == "положит"))
 and
(($InputData_1_->Keyword == "южнике"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-54";
}
//rule_1-55
if (
(($InputData_1_->Keyword == "забереш"))
 and
(($InputData_1_->Keyword == "напиши"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-55";
}
//rule_1-56
if (
(($InputData_1_->Keyword == "дальней"))
 and
(($InputData_1_->Keyword == "двери"))
 and
(($InputData_1_->Keyword == "зайди"))
 and
(($InputData_1_->Keyword == "напротив"))
 and
(($InputData_1_->Keyword == "ниша"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-56";
}
//rule_1-57
if (
(($InputData_1_->Keyword == "верху"))
 and
(($InputData_1_->Keyword == "зайди"))
 and
(($InputData_1_->Keyword == "интерсвязи"))
 and
(($InputData_1_->Keyword == "посмотри"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-57";
}
//rule_1-58
if (
(($InputData_1_->Keyword == "верху"))
 and
(($InputData_1_->Keyword == "есть"))
 and
(($InputData_1_->Keyword == "зайди"))
 and
(($InputData_1_->Keyword == "интерсвязи"))
 and
(($InputData_1_->Keyword == "ниче"))
 and
(($InputData_1_->Keyword == "посмотри"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-58";
}
//rule_4-67
if (
(($InputData_1_->Keyword == "выносит"))
 and
(($InputData_1_->Keyword == "мозги"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-67";
}
//rule_1-59
if (
(($InputData_1_->Keyword == "городом"))
 and
(($InputData_1_->Keyword == "готовые"))
 and
(($InputData_1_->Keyword == "клады"))
 and
(($InputData_1_->Keyword == "проб"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-59";
}
//rule_1-60
if (
(($InputData_1_->Keyword == "записать"))
 and
(($InputData_1_->Keyword == "коменте"))
 and
(($InputData_1_->Keyword == "напиши"))
 and
(($InputData_1_->Keyword == "проблем"))
 and
(($InputData_1_->Keyword == "тебя"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-60";
}
//rule_1-61
if (
(($InputData_1_->Keyword == "комент"))
 and
(($InputData_1_->Keyword == "придумай"))
 and
(($InputData_1_->Keyword == "свой"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-61";
}
//rule_1-62
if (
(($InputData_1_->Keyword == "глупые"))
 and
(($InputData_1_->Keyword == "деятели"))
 and
(($InputData_1_->Keyword == "нужны"))
 and
(($InputData_1_->Keyword == "такие"))
 and
(($InputData_1_->Keyword == "чайки"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-62";
}
//rule_1-63
if (
(($InputData_1_->Keyword == "были"))
 and
(($InputData_1_->Keyword == "переживай"))
 and
(($InputData_1_->Keyword == "тебе"))
 and
(($InputData_1_->Keyword == "успокойся"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-63";
}
//rule_1-64
if (
(($InputData_1_->Keyword == "аквамарин"))
 and
(($InputData_1_->Keyword == "легальный"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-64";
}
//rule_1-65
if (
(($InputData_1_->Keyword == "киви"))
 and
(($InputData_1_->Keyword == "ложи"))
 and
(($InputData_1_->Keyword == "могу"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-65";
}
//rule_1-66
if (
(($InputData_1_->Keyword == "переживай"))
 and
(($InputData_1_->Keyword == "соориентирую"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-66";
}
//rule_1-67
if (
(($InputData_1_->Keyword == "стелс"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-67";
}
//rule_1-68
if (
(($InputData_1_->Keyword == "бесплатно"))
 and
(($InputData_1_->Keyword == "грамм"))
 and
(($InputData_1_->Keyword == "почти"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-68";
}
//rule_1-69
if (
(($InputData_1_->Keyword == "прет"))
 and
(($InputData_1_->Keyword == "продукт"))
 and
(($InputData_1_->Keyword == "производных"))
 and
(($InputData_1_->Keyword == "прошлом"))
 and
(($InputData_1_->Keyword == "химия"))
 and
(($InputData_1_->Keyword == "натур"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-69";
}
//rule_1-70
if (
(($InputData_1_->Keyword == "давай"))
 and
(($InputData_1_->Keyword == "комент"))
 and
(($InputData_1_->Keyword == "пиши"))
 and
(($InputData_1_->Keyword == "филя"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-70";
}
//rule_1-71
if (
(($InputData_1_->Keyword == "докидыва"))
 and
(($InputData_1_->Keyword == "тута"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-71";
}
//rule_1-72
if (
(($InputData_1_->Keyword == "докидывай"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-72";
}
//rule_1-73
if (
(($InputData_1_->Keyword == "брызжет"))
 and
(($InputData_1_->Keyword == "другой"))
 and
(($InputData_1_->Keyword == "заслужила"))
 and
(($InputData_1_->Keyword == "злости"))
 and
(($InputData_1_->Keyword == "ревностным"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-73";
}
//rule_3-48
if (
(($InputData_1_->Keyword == "super.televizor"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-48";
}
//rule_4-68
if (
(($InputData_1_->Keyword == "бухать"))
 and
(($InputData_1_->Keyword == "завхоза"))
 and
(($InputData_1_->Keyword == "работы"))
 and
(($InputData_1_->Keyword == "уволят"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-68";
}
//rule_4-69
if (
(($InputData_1_->Keyword == "жаловаться"))
 and
(($InputData_1_->Keyword == "хватит"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-69";
}
//rule_3-49
if (
(($InputData_1_->Keyword == "алкоголика"))
 and
(($InputData_1_->Keyword == "воспитанием"))
 and
(($InputData_1_->Keyword == "жирной"))
 and
(($InputData_1_->Keyword == "задницей"))
 and
(($InputData_1_->Keyword == "крутить"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-49";
}
//rule_4-70
if (
(($InputData_1_->Keyword == "замки"))
 and
(($InputData_1_->Keyword == "сменить"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-70";
}
//rule_4-71
if (
(($InputData_1_->Keyword == "бросил"))
 and
(($InputData_1_->Keyword == "бывшего"))
 and
(($InputData_1_->Keyword == "разводе"))
 and
(($InputData_1_->Keyword == "рассказываешь"))
 and
(($InputData_1_->Keyword == "родственники"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-71";
}
//rule_4-72
if (
(($InputData_1_->Keyword == "звонить"))
 and
(($InputData_1_->Keyword == "звонков"))
 and
(($InputData_1_->Keyword == "поздновато"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-72";
}
//rule_4-73
if (
(($InputData_1_->Keyword == "бывшим"))
 and
(($InputData_1_->Keyword == "когда"))
 and
(($InputData_1_->Keyword == "мужем"))
 and
(($InputData_1_->Keyword == "наконец"))
 and
(($InputData_1_->Keyword == "следить"))
 and
(($InputData_1_->Keyword == "стыдно"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-73";
}
//rule_4-74
if (
(($InputData_1_->Keyword == "бывший"))
 and
(($InputData_1_->Keyword == "мразота"))
 and
(($InputData_1_->Keyword == "овцой"))
 and
(($InputData_1_->Keyword == "опозориться"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-74";
}
//rule_4-75
if (
(($InputData_1_->Keyword == "бывший"))
 and
(($InputData_1_->Keyword == "догадываешься"))
 and
(($InputData_1_->Keyword == "интересно"))
 and
(($InputData_1_->Keyword == "любимым"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-75";
}
//rule_4-76
if (
(($InputData_1_->Keyword == "случайно"))
 and
(($InputData_1_->Keyword == "тебе"))
 and
(($InputData_1_->Keyword == "худеешь"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-76";
}
//rule_4-77
if (
(($InputData_1_->Keyword == "любовник"))
 and
(($InputData_1_->Keyword == "мужчину"))
 and
(($InputData_1_->Keyword == "просторах"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-77";
}
//rule_4-78
if (
(($InputData_1_->Keyword == "зарабатываешь"))
 and
(($InputData_1_->Keyword == "истощёного"))
 and
(($InputData_1_->Keyword == "лапши"))
 and
(($InputData_1_->Keyword == "наврное"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-78";
}
//rule_4-79
if (
(($InputData_1_->Keyword == "бывшего"))
 and
(($InputData_1_->Keyword == "знать"))
 and
(($InputData_1_->Keyword == "любимая"))
 and
(($InputData_1_->Keyword == "мужа"))
 and
(($InputData_1_->Keyword == "хочешь"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-79";
}
//rule_3-50
if (
(($InputData_1_->Keyword == "прoсмотреть"))
 and
(($InputData_1_->Keyword == "http://bit.ly"))
 and
(($InputData_1_->Keyword == "абoнент"))
 and
(($InputData_1_->Keyword == "билaйн"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-50";
}
//rule_3-51
if (
(($InputData_1_->Keyword == "http://www.bit.ly"))
 and
(($InputData_1_->Keyword == "mms"))
 and
(($InputData_1_->Keyword == "прoсмотреть"))
 and
(($InputData_1_->Keyword == "абoнент"))
 and
(($InputData_1_->Keyword == "билaйн"))
 and
(($InputData_1_->Keyword == "отпрaвил"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-51";
}
//rule_4-80
if (
(($InputData_1_->Keyword == "бывшему"))
 and
(($InputData_1_->Keyword == "давай"))
 and
(($InputData_1_->Keyword == "мужу"))
 and
(($InputData_1_->Keyword == "нажаловалась"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-80";
}
//rule_3-52
if (
(($InputData_1_->Keyword == "авиабилет"))
 and
(($InputData_1_->Keyword == "москва"))
 and
(($InputData_1_->Keyword == "сочи"))
 and
(($InputData_1_->Keyword == "оплачен"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-52";
}
//rule_4-81
if (
(($InputData_1_->Keyword == "забудь"))
 and
(($InputData_1_->Keyword == "мужу"))
 and
(($InputData_1_->Keyword == "пожаловаться"))
 and
(($InputData_1_->Keyword == "позвонить"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-81";
}
//rule_4-82
if (
(($InputData_1_->Keyword == "забудь"))
 and
(($InputData_1_->Keyword == "сменить"))
 and
(($InputData_1_->Keyword == "фамилию"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-82";
}
//rule_4-83
if (
(($InputData_1_->Keyword == "женщина"))
 and
(($InputData_1_->Keyword == "просто"))
 and
(($InputData_1_->Keyword == "шалава"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-83";
}
//rule_4-84
if (
(($InputData_1_->Keyword == "женщина"))
 and
(($InputData_1_->Keyword == "шалава"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-84";
}
//rule_4-85
if (
(($InputData_1_->Keyword == "брошенная"))
 and
(($InputData_1_->Keyword == "женщина"))
 and
(($InputData_1_->Keyword == "мужем"))
 and
(($InputData_1_->Keyword == "шалава"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-85";
}
//rule_4-86
if (
(($InputData_1_->Keyword == "баба"))
 and
(($InputData_1_->Keyword == "гулящая"))
 and
(($InputData_1_->Keyword == "непорядочная"))
 and
(($InputData_1_->Keyword == "шалава"))
 and
(($InputData_1_->Keyword == "шалавистая"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-86";
}
//rule_1-74
if (
(($InputData_1_->Keyword == "забрали"))
 and
(($InputData_1_->Keyword == "коробке"))
 and
(($InputData_1_->Keyword == "посмотрят"))
 and
(($InputData_1_->Keyword == "свое"))
 and
(($InputData_1_->Keyword == "счас"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-74";
}
//rule_1-75
if (
(($InputData_1_->Keyword == "вооще"))
 and
(($InputData_1_->Keyword == "двигается"))
 and
(($InputData_1_->Keyword == "тема"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-75";
}
//rule_1-76
if (
(($InputData_1_->Keyword == "берут"))
 and
(($InputData_1_->Keyword == "кладами"))
 and
(($InputData_1_->Keyword == "руки"))
 and
(($InputData_1_->Keyword == "спайс"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-76";
}
//rule_1-77
if (
(($InputData_1_->Keyword == "какие"))
 and
(($InputData_1_->Keyword == "полки"))
 and
(($InputData_1_->Keyword == "понимаю"))
 and
(($InputData_1_->Keyword == "твоей"))
 and
(($InputData_1_->Keyword == "фени"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-77";
}
//rule_1-78
if (
(($InputData_1_->Keyword == "качество"))
 and
(($InputData_1_->Keyword == "курил"))
 and
(($InputData_1_->Keyword == "самое"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-78";
}
//rule_1-79
if (
(($InputData_1_->Keyword == "каслинская"))
 and
(($InputData_1_->Keyword == "отливом"))
 and
(($InputData_1_->Keyword == "падик"))
 and
(($InputData_1_->Keyword == "паследний"))
 and
(($InputData_1_->Keyword == "слева"))
 and
(($InputData_1_->Keyword == "справа"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-79";
}
//rule_1-80
if (
(($InputData_1_->Keyword == "каслинская"))
 and
(($InputData_1_->Keyword == "отливомокна"))
 and
(($InputData_1_->Keyword == "падик"))
 and
(($InputData_1_->Keyword == "последний"))
 and
(($InputData_1_->Keyword == "слева"))
 and
(($InputData_1_->Keyword == "справа"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-80";
}
//rule_1-81
if (
(($InputData_1_->Keyword == "номер"))
 and
(($InputData_1_->Keyword == "киви"))
 and
(($InputData_1_->Keyword == "клад"))
 and
(($InputData_1_->Keyword == "мегафона"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-81";
}
//rule_1-82
if (
(($InputData_1_->Keyword == "вторые"))
 and
(($InputData_1_->Keyword == "дает"))
 and
(($InputData_1_->Keyword == "конечно"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-82";
}
//rule_2-7
if (
(($InputData_1_->Keyword == "консультации"))
 and
(($InputData_1_->Keyword == "справки"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_2-7";
}
//rule_2-8
if (
(($InputData_1_->Keyword == "консультации"))
 and
(($InputData_1_->Keyword == "кредитах"))
 and
(($InputData_1_->Keyword == "справки"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_2-8";
}
//rule_1-83
if (
(($InputData_1_->Keyword == "интерсвязи"))
 and
(($InputData_1_->Keyword == "электрокаробке"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-83";
}
//rule_1-84
if (
(($InputData_1_->Keyword == "взорвали"))
 and
(($InputData_1_->Keyword == "забрали"))
 and
(($InputData_1_->Keyword == "интерсвязи"))
 and
(($InputData_1_->Keyword == "кружили"))
 and
(($InputData_1_->Keyword == "чайки"))
 and
(($InputData_1_->Keyword == "элкоробке"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-84";
}
//rule_1-85
if (
(($InputData_1_->Keyword == "найдеш"))
 and
(($InputData_1_->Keyword == "отпишишся"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-85";
}
//rule_1-86
if (
(($InputData_1_->Keyword == "боюсь"))
 and
(($InputData_1_->Keyword == "курю"))
 and
(($InputData_1_->Keyword == "мудаки"))
 and
(($InputData_1_->Keyword == "передохнут"))
 and
(($InputData_1_->Keyword == "понимаю"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-86";
}
//rule_1-87
if (
(($InputData_1_->Keyword == "надумаеш"))
 and
(($InputData_1_->Keyword == "шуми"))
 and
(($InputData_1_->Keyword == "шутник"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-87";
}
//rule_4-87
if (
(($InputData_1_->Keyword == "бывший"))
 and
(($InputData_1_->Keyword == "душил"))
 and
(($InputData_1_->Keyword == "наверное"))
 and
(($InputData_1_->Keyword == "платья"))
 and
(($InputData_1_->Keyword == "рвал"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-87";
}
//rule_1-88
if (
(($InputData_1_->Keyword == "надо"))
 and
(($InputData_1_->Keyword == "ниче"))
 and
(($InputData_1_->Keyword == "писать"))
 and
(($InputData_1_->Keyword == "потому"))
 and
(($InputData_1_->Keyword == "разлетится"))
 and
(($InputData_1_->Keyword == "ровно"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-88";
}
//rule_1-89
if (
(($InputData_1_->Keyword == "доме"))
 and
(($InputData_1_->Keyword == "ментовке"))
 and
(($InputData_1_->Keyword == "отливом"))
 and
(($InputData_1_->Keyword == "падик"))
 and
(($InputData_1_->Keyword == "последний"))
 and
(($InputData_1_->Keyword == "справа"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-89";
}
//rule_1-90
if (
(($InputData_1_->Keyword == "вдолг"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-90";
}
//rule_1-91
if (
(($InputData_1_->Keyword == "вижу"))
 and
(($InputData_1_->Keyword == "деньги"))
 and
(($InputData_1_->Keyword == "паникуй"))
 and
(($InputData_1_->Keyword == "писать"))
 and
(($InputData_1_->Keyword == "просто"))
 and
(($InputData_1_->Keyword == "успеваю"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-91";
}
//rule_1-92
if (
(($InputData_1_->Keyword == "гляну"))
 and
(($InputData_1_->Keyword == "паникуй"))
 and
(($InputData_1_->Keyword == "успеваю"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-92";
}
//rule_1-93
if (
(($InputData_1_->Keyword == "адрес"))
 and
(($InputData_1_->Keyword == "первый"))
 and
(($InputData_1_->Keyword == "потому"))
 and
(($InputData_1_->Keyword == "седня"))
 and
(($InputData_1_->Keyword == "третий"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-93";
}
//rule_1-94
if (
(($InputData_1_->Keyword == "ложить"))
 and
(($InputData_1_->Keyword == "наберу"))
 and
(($InputData_1_->Keyword == "спеши"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-94";
}
//rule_1-95
if (
(($InputData_1_->Keyword == "бесплатно"))
 and
(($InputData_1_->Keyword == "давал"))
 and
(($InputData_1_->Keyword == "думаю"))
 and
(($InputData_1_->Keyword == "неделю"))
 and
(($InputData_1_->Keyword == "хватит"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-95";
}
//rule_1-96
if (
(($InputData_1_->Keyword == "весь"))
 and
(($InputData_1_->Keyword == "давай"))
 and
(($InputData_1_->Keyword == "друг"))
 and
(($InputData_1_->Keyword == "завтра"))
 and
(($InputData_1_->Keyword == "знаеш"))
 and
(($InputData_1_->Keyword == "правилам"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-96";
}
//rule_1-97
if (
(($InputData_1_->Keyword == "конечно"))
 and
(($InputData_1_->Keyword == "подумай"))
 and
(($InputData_1_->Keyword == "пойду"))
 and
(($InputData_1_->Keyword == "счас"))
 and
(($InputData_1_->Keyword == "часок"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-97";
}
//rule_1-98
if (
(($InputData_1_->Keyword == "время"))
 and
(($InputData_1_->Keyword == "никакого"))
 and
(($InputData_1_->Keyword == "пополнения"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-98";
}
//rule_1-99
if (
(($InputData_1_->Keyword == "ложи"))
 and
(($InputData_1_->Keyword == "пакет"))
 and
(($InputData_1_->Keyword == "положу"))
 and
(($InputData_1_->Keyword == "проб"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-99";
}
//rule_1-100
if (
(($InputData_1_->Keyword == "левые"))
 and
(($InputData_1_->Keyword == "железного"))
 and
(($InputData_1_->Keyword == "зеленого"))
 and
(($InputData_1_->Keyword == "крыльца"))
 and
(($InputData_1_->Keyword == "ступеньки"))
 and
(($InputData_1_->Keyword == "уголка"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-100";
}
//rule_1-101
if (
(($InputData_1_->Keyword == "видно"))
 and
(($InputData_1_->Keyword == "внизу"))
 and
(($InputData_1_->Keyword == "даже"))
 and
(($InputData_1_->Keyword == "салфетке"))
 and
(($InputData_1_->Keyword == "стороны"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-101";
}
//rule_1-102
if (
(($InputData_1_->Keyword == "киви"))
 and
(($InputData_1_->Keyword == "лежит"))
 and
(($InputData_1_->Keyword == "мегафон"))
 and
(($InputData_1_->Keyword == "номер"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-102";
}
//rule_1-103
if (
(($InputData_1_->Keyword == "валлет"))
 and
(($InputData_1_->Keyword == "сумма"))
 and
(($InputData_1_->Keyword == "виза"))
 and
(($InputData_1_->Keyword == "оплат"))
 and
(($InputData_1_->Keyword == "услуг"))
 and
(($InputData_1_->Keyword == "киви"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-103";
}
//rule_3-53
if (
(($InputData_1_->Keyword == "инфо"))
 and
(($InputData_1_->Keyword == "карте"))
 and
(($InputData_1_->Keyword == "операции"))
 and
(($InputData_1_->Keyword == "приостановлены"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-53";
}
//rule_1-104
if (
(($InputData_1_->Keyword == "давай"))
 and
(($InputData_1_->Keyword == "киви"))
 and
(($InputData_1_->Keyword == "мегафоновский"))
 and
(($InputData_1_->Keyword == "номер"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-104";
}
//rule_4-88
if (
(($InputData_1_->Keyword == "гулящей"))
 and
(($InputData_1_->Keyword == "женщины"))
 and
(($InputData_1_->Keyword == "разведённой"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-88";
}
//rule_1-105
if (
(($InputData_1_->Keyword == "готовый"))
 and
(($InputData_1_->Keyword == "киви"))
 and
(($InputData_1_->Keyword == "клад"))
 and
(($InputData_1_->Keyword == "конечно"))
 and
(($InputData_1_->Keyword == "мегафон"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-105";
}
//rule_1-106
if (
(($InputData_1_->Keyword == "изза"))
 and
(($InputData_1_->Keyword == "меня"))
 and
(($InputData_1_->Keyword == "проблеммы"))
 and
(($InputData_1_->Keyword == "седня"))
 and
(($InputData_1_->Keyword == "тебя"))
 and
(($InputData_1_->Keyword == "филя"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-106";
}
//rule_1-107
if (
(($InputData_1_->Keyword == "дублируются"))
 and
(($InputData_1_->Keyword == "сверить"))
 and
(($InputData_1_->Keyword == "клады"))
 and
(($InputData_1_->Keyword == "сохраняй"))
 and
(($InputData_1_->Keyword == "стопроцентные"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-107";
}
//rule_1-108
if (
(($InputData_1_->Keyword == "городом"))
 and
(($InputData_1_->Keyword == "клады"))
 and
(($InputData_1_->Keyword == "остались"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-108";
}
//rule_1-109
if (
(($InputData_1_->Keyword == "березой"))
 and
(($InputData_1_->Keyword == "кичигино"))
 and
(($InputData_1_->Keyword == "остановка"))
 and
(($InputData_1_->Keyword == "руль"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-109";
}
//rule_1-110
if (
(($InputData_1_->Keyword == "легал"))
 and
(($InputData_1_->Keyword == "наличии"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-110";
}
//rule_1-111
if (
(($InputData_1_->Keyword == "меня"))
 and
(($InputData_1_->Keyword == "пока"))
 and
(($InputData_1_->Keyword == "тихо"))
 and
(($InputData_1_->Keyword == "южнике"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-111";
}
//rule_1-112
if (
(($InputData_1_->Keyword == "готовые"))
 and
(($InputData_1_->Keyword == "докидывай"))
 and
(($InputData_1_->Keyword == "остались"))
 and
(($InputData_1_->Keyword == "токо"))
 and
(($InputData_1_->Keyword == "южнике"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-112";
}
//rule_1-113
if (
(($InputData_1_->Keyword == "качеству"))
 and
(($InputData_1_->Keyword == "надо"))
 and
(($InputData_1_->Keyword == "привыкли"))
 and
(($InputData_1_->Keyword == "чему"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-113";
}
//rule_3-54
if (
(($InputData_1_->Keyword == "банковская"))
 and
(($InputData_1_->Keyword == "ваша"))
 and
(($InputData_1_->Keyword == "карта"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-54";
}
//rule_1-114
if (
(($InputData_1_->Keyword == "вериш"))
 and
(($InputData_1_->Keyword == "занимаюсь"))
 and
(($InputData_1_->Keyword == "пишу"))
 and
(($InputData_1_->Keyword == "токо"))
 and
(($InputData_1_->Keyword == "этим"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-114";
}
//rule_1-115
if (
(($InputData_1_->Keyword == "вижу"))
 and
(($InputData_1_->Keyword == "стелс"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-115";
}
//rule_1-116
if (
(($InputData_1_->Keyword == "адрес"))
 and
(($InputData_1_->Keyword == "вижу"))
 and
(($InputData_1_->Keyword == "успел"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-116";
}
//rule_1-117
if (
(($InputData_1_->Keyword == "адрес"))
 and
(($InputData_1_->Keyword == "возмеш"))
 and
(($InputData_1_->Keyword == "второй"))
 and
(($InputData_1_->Keyword == "отпиши"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-117";
}
//rule_1-118
if (
(($InputData_1_->Keyword == "балкон"))
 and
(($InputData_1_->Keyword == "вчера"))
 and
(($InputData_1_->Keyword == "салфетке"))
 and
(($InputData_1_->Keyword == "торца"))
 and
(($InputData_1_->Keyword == "уголком"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-118";
}
//rule_1-119
if (
(($InputData_1_->Keyword == "верху"))
 and
(($InputData_1_->Keyword == "интер"))
 and
(($InputData_1_->Keyword == "коробке"))
 and
(($InputData_1_->Keyword == "связи"))
 and
(($InputData_1_->Keyword == "смотри"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-119";
}
//rule_1-120
if (
(($InputData_1_->Keyword == "взял"))
 and
(($InputData_1_->Keyword == "говорят"))
 and
(($InputData_1_->Keyword == "ниче"))
 and
(($InputData_1_->Keyword == "одни"))
 and
(($InputData_1_->Keyword == "смотрели"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-120";
}
//rule_1-121
if (
(($InputData_1_->Keyword == "ебется"))
 and
(($InputData_1_->Keyword == "крадет"))
 and
(($InputData_1_->Keyword == "пиздит"))
 and
(($InputData_1_->Keyword == "пласт"))
 and
(($InputData_1_->Keyword == "проверенный"))
 and
(($InputData_1_->Keyword == "чужое"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-121";
}
//rule_1-122
if (
(($InputData_1_->Keyword == "водоотлив"))
 and
(($InputData_1_->Keyword == "вызывай"))
 and
(($InputData_1_->Keyword == "долежит"))
 and
(($InputData_1_->Keyword == "зато"))
 and
(($InputData_1_->Keyword == "пудов"))
 and
(($InputData_1_->Keyword == "спада"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-122";
}
//rule_1-123
if (
(($InputData_1_->Keyword == "выполнил"))
 and
(($InputData_1_->Keyword == "нахуй"))
 and
(($InputData_1_->Keyword == "пизду"))
 and
(($InputData_1_->Keyword == "план"))
 and
(($InputData_1_->Keyword == "посылай"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-123";
}
//rule_1-124
if (
(($InputData_1_->Keyword == "быстро"))
 and
(($InputData_1_->Keyword == "пребыстро"))
 and
(($InputData_1_->Keyword == "всегда"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-124";
}
//rule_1-125
if (
(($InputData_1_->Keyword == "многих"))
 and
(($InputData_1_->Keyword == "отличии"))
 and
(($InputData_1_->Keyword == "тебя"))
 and
(($InputData_1_->Keyword == "точно"))
 and
(($InputData_1_->Keyword == "тупиш"))
 and
(($InputData_1_->Keyword == "хоть"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-125";
}
//rule_1-126
if (
(($InputData_1_->Keyword == "время"))
 and
(($InputData_1_->Keyword == "какое"))
 and
(($InputData_1_->Keyword == "чеку"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-126";
}
//rule_1-127
if (
(($InputData_1_->Keyword == "вылезет"))
 and
(($InputData_1_->Keyword == "оплаты"))
 and
(($InputData_1_->Keyword == "терминала"))
 and
(($InputData_1_->Keyword == "указанное"))
 and
(($InputData_1_->Keyword == "услуги"))
 and
(($InputData_1_->Keyword == "чеке"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-127";
}
//rule_1-128
if (
(($InputData_1_->Keyword == "вэтом"))
 and
(($InputData_1_->Keyword == "лесенкой"))
 and
(($InputData_1_->Keyword == "падике"))
 and
(($InputData_1_->Keyword == "первом"))
 and
(($InputData_1_->Keyword == "чипсах"))
 and
(($InputData_1_->Keyword == "этаже"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-128";
}
//rule_1-129
if (
(($InputData_1_->Keyword == "бывшему"))
 and
(($InputData_1_->Keyword == "всеобщее"))
 and
(($InputData_1_->Keyword == "гулящей"))
 and
(($InputData_1_->Keyword == "делала"))
 and
(($InputData_1_->Keyword == "женщиной"))
 and
(($InputData_1_->Keyword == "стыдно"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-129";
}
//rule_1-130
if (
(($InputData_1_->Keyword == "кошелек"))
 and
(($InputData_1_->Keyword == "пиши"))
 and
(($InputData_1_->Keyword == "томер"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-130";
}
//rule_1-131
if (
(($InputData_1_->Keyword == "киви"))
 and
(($InputData_1_->Keyword == "номер"))
 and
(($InputData_1_->Keyword == "пиши"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-131";
}
//rule_1-132
if (
(($InputData_1_->Keyword == "надо"))
 and
(($InputData_1_->Keyword == "отлучиться"))
 and
(($InputData_1_->Keyword == "пиши"))
 and
(($InputData_1_->Keyword == "скорее"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-132";
}
//rule_1-133
if (
(($InputData_1_->Keyword == "аптеке"))
 and
(($InputData_1_->Keyword == "всегда"))
 and
(($InputData_1_->Keyword == "пиши"))
 and
(($InputData_1_->Keyword == "рекомендуй"))
 and
(($InputData_1_->Keyword == "четко"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-133";
}
//rule_1-134
if (
(($InputData_1_->Keyword == "докинеш"))
 and
(($InputData_1_->Keyword == "писят"))
 and
(($InputData_1_->Keyword == "потом"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-134";
}
//rule_1-135
if (
(($InputData_1_->Keyword == "емане"))
 and
(($InputData_1_->Keyword == "качества"))
 and
(($InputData_1_->Keyword == "поводу"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-135";
}
//rule_1-136
if (
(($InputData_1_->Keyword == "колян"))
 and
(($InputData_1_->Keyword == "гасись"))
 and
(($InputData_1_->Keyword == "ведешь"))
 and
(($InputData_1_->Keyword == "даже"))
 and
(($InputData_1_->Keyword == "звонить"))
 and
(($InputData_1_->Keyword == "малолетка"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-136";
}
//rule_1-137
if (
(($InputData_1_->Keyword == "город"))
 and
(($InputData_1_->Keyword == "какой"))
 and
(($InputData_1_->Keyword == "подожди"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-137";
}
//rule_1-138
if (
(($InputData_1_->Keyword == "отпишиш"))
 and
(($InputData_1_->Keyword == "попробуеш"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-138";
}
//rule_1-139
if (
(($InputData_1_->Keyword == "долгу"))
 and
(($InputData_1_->Keyword == "известен"))
 and
(($InputData_1_->Keyword == "останусь"))
 and
(($InputData_1_->Keyword == "помоги"))
 and
(($InputData_1_->Keyword == "рынок"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-139";
}
//rule_1-140
if (
(($InputData_1_->Keyword == "ночи"))
 and
(($InputData_1_->Keyword == "полчаса"))
 and
(($InputData_1_->Keyword == "понимаеш"))
 and
(($InputData_1_->Keyword == "порой"))
 and
(($InputData_1_->Keyword == "пропадаю"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-140";
}
//rule_1-141
if (
(($InputData_1_->Keyword == "есть"))
 and
(($InputData_1_->Keyword == "ложи"))
 and
(($InputData_1_->Keyword == "привет"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-141";
}
//rule_1-142
if (
(($InputData_1_->Keyword == "ложи"))
 and
(($InputData_1_->Keyword == "привет"))
 and
(($InputData_1_->Keyword == "сделаю"))
 and
(($InputData_1_->Keyword == "хороший"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-142";
}
//rule_1-143
if (
(($InputData_1_->Keyword == "привет"))
 and
(($InputData_1_->Keyword == "проснулся"))
 and
(($InputData_1_->Keyword == "тружусь"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-143";
}
//rule_1-144
if (
(($InputData_1_->Keyword == "привет"))
 and
(($InputData_1_->Keyword == "проснулся"))
 and
(($InputData_1_->Keyword == "работаю"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-144";
}
//rule_1-145
if (
(($InputData_1_->Keyword == "грустиш"))
 and
(($InputData_1_->Keyword == "мешок"))
 and
(($InputData_1_->Keyword == "привет"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-145";
}
//rule_1-146
if (
(($InputData_1_->Keyword == "докидывай"))
 and
(($InputData_1_->Keyword == "привет"))
 and
(($InputData_1_->Keyword == "спал"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-146";
}
//rule_4-89
if (
(($InputData_1_->Keyword == "брачных"))
 and
(($InputData_1_->Keyword == "наши"))
 and
(($InputData_1_->Keyword == "освобождением"))
 and
(($InputData_1_->Keyword == "поздравления"))
 and
(($InputData_1_->Keyword == "примите"))
 and
(($InputData_1_->Keyword == "связи"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-89";
}
//rule_1-147
if (
(($InputData_1_->Keyword == "заебался"))
 and
(($InputData_1_->Keyword == "кидать"))
 and
(($InputData_1_->Keyword == "пришли"))
 and
(($InputData_1_->Keyword == "проб"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-147";
}
//rule_1-148
if (
(($InputData_1_->Keyword == "есть"))
 and
(($InputData_1_->Keyword == "клады"))
 and
(($InputData_1_->Keyword == "положить"))
 and
(($InputData_1_->Keyword == "проб"))
 and
(($InputData_1_->Keyword == "седня"))
 and
(($InputData_1_->Keyword == "смогу"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-148";
}
//rule_1-149
if (
(($InputData_1_->Keyword == "проба"))
 and
(($InputData_1_->Keyword == "стоит"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-149";
}
//rule_1-150
if (
(($InputData_1_->Keyword == "легал"))
 and
(($InputData_1_->Keyword == "нелегал"))
 and
(($InputData_1_->Keyword == "проба"))
 and
(($InputData_1_->Keyword == "стоит"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-150";
}
//rule_1-151
if (
(($InputData_1_->Keyword == "европаке"))
 and
(($InputData_1_->Keyword == "падик"))
 and
(($InputData_1_->Keyword == "пробник"))
 and
(($InputData_1_->Keyword == "толью"))
 and
(($InputData_1_->Keyword == "трубапод"))
 and
(($InputData_1_->Keyword == "черная"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-151";
}
//rule_1-152
if (
(($InputData_1_->Keyword == "даймонд"))
 and
(($InputData_1_->Keyword == "есть"))
 and
(($InputData_1_->Keyword == "легал"))
 and
(($InputData_1_->Keyword == "пробы"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-152";
}
//rule_1-153
if (
(($InputData_1_->Keyword == "клады"))
 and
(($InputData_1_->Keyword == "остались"))
 and
(($InputData_1_->Keyword == "пробы"))
 and
(($InputData_1_->Keyword == "роздал"))
 and
(($InputData_1_->Keyword == "седня"))
 and
(($InputData_1_->Keyword == "токо"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-153";
}
//rule_1-154
if (
(($InputData_1_->Keyword == "бабос"))
 and
(($InputData_1_->Keyword == "бери"))
 and
(($InputData_1_->Keyword == "кончились"))
 and
(($InputData_1_->Keyword == "пробы"))
 and
(($InputData_1_->Keyword == "сегодня"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-154";
}
//rule_1-155
if (
(($InputData_1_->Keyword == "есть"))
 and
(($InputData_1_->Keyword == "клады"))
 and
(($InputData_1_->Keyword == "пробы"))
 and
(($InputData_1_->Keyword == "розданы"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-155";
}
//rule_1-156
if (
(($InputData_1_->Keyword == "есть"))
 and
(($InputData_1_->Keyword == "пробы"))
 and
(($InputData_1_->Keyword == "розданы"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-156";
}
//rule_1-157
if (
(($InputData_1_->Keyword == "есть"))
 and
(($InputData_1_->Keyword == "пробы"))
 and
(($InputData_1_->Keyword == "розданы"))
 and
(($InputData_1_->Keyword == "соли"))
 and
(($InputData_1_->Keyword == "токо"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-157";
}
//rule_1-158
if (
(($InputData_1_->Keyword == "пробу"))
 and
(($InputData_1_->Keyword == "сделал"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-158";
}
//rule_1-159
if (
(($InputData_1_->Keyword == "забрать"))
 and
(($InputData_1_->Keyword == "нужно"))
 and
(($InputData_1_->Keyword == "саил"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-159";
}
//rule_4-90
if (
(($InputData_1_->Keyword == "деньги"))
 and
(($InputData_1_->Keyword == "меркантильная"))
 and
(($InputData_1_->Keyword == "стерва"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-90";
}
//rule_4-91
if (
(($InputData_1_->Keyword == "брака"))
 and
(($InputData_1_->Keyword == "началом"))
 and
(($InputData_1_->Keyword == "поздравлю"))
 and
(($InputData_1_->Keyword == "разводу"))
 and
(($InputData_1_->Keyword == "расторжением"))
 and
(($InputData_1_->Keyword == "свободной"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-91";
}
//rule_4-92
if (
(($InputData_1_->Keyword == "лицом"))
 and
(($InputData_1_->Keyword == "мужчин"))
 and
(($InputData_1_->Keyword == "раздвигаешь"))
 and
(($InputData_1_->Keyword == "цепляться"))
 and
(($InputData_1_->Keyword == "чужих"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-92";
}
//rule_1-160
if (
(($InputData_1_->Keyword == "даааавно"))
 and
(($InputData_1_->Keyword == "нужна"))
 and
(($InputData_1_->Keyword == "реклама"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-160";
}
//rule_1-161
if (
(($InputData_1_->Keyword == "бонусом"))
 and
(($InputData_1_->Keyword == "доедеш"))
 and
(($InputData_1_->Keyword == "отдадут"))
 and
(($InputData_1_->Keyword == "сказать"))
 and
(($InputData_1_->Keyword == "тоже"))
 and
(($InputData_1_->Keyword == "челиковским"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-161";
}
//rule_1-162
if (
(($InputData_1_->Keyword == "вечером"))
 and
(($InputData_1_->Keyword == "могу"))
 and
(($InputData_1_->Keyword == "пробу"))
 and
(($InputData_1_->Keyword == "сделать"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-162";
}
//rule_1-163
if (
(($InputData_1_->Keyword == "адрес"))
 and
(($InputData_1_->Keyword == "дать"))
 and
(($InputData_1_->Keyword == "могу"))
 and
(($InputData_1_->Keyword == "счас"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-163";
}
//rule_1-164
if (
(($InputData_1_->Keyword == "могу"))
 and
(($InputData_1_->Keyword == "ложи"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-164";
}
//rule_3-55
if (
(($InputData_1_->Keyword == "клиент"))
 and
(($InputData_1_->Keyword == "обратитетесь"))
 and
(($InputData_1_->Keyword == "сбербанк"))
 and
(($InputData_1_->Keyword == "справки"))
 and
(($InputData_1_->Keyword == "срочно"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-55";
}
//rule_3-56
if (
(($InputData_1_->Keyword == "клиент"))
 and
(($InputData_1_->Keyword == "обратитесь"))
 and
(($InputData_1_->Keyword == "сбербанк"))
 and
(($InputData_1_->Keyword == "справки"))
 and
(($InputData_1_->Keyword == "срочно"))
 and
(($InputData_1_->Keyword == "уважаемый"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-56";
}
//rule_3-57
if (
(($InputData_1_->Keyword == "выплата"))
 and
(($InputData_1_->Keyword == "доставленные"))
 and
(($InputData_1_->Keyword == "задержкой"))
 and
(($InputData_1_->Keyword == "извинения"))
 and
(($InputData_1_->Keyword == "неудобства"))
 and
(($InputData_1_->Keyword == "пенсии"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-57";
}
//rule_3-58
if (
(($InputData_1_->Keyword == "банковским"))
 and
(($InputData_1_->Keyword == "ограничения"))
 and
(($InputData_1_->Keyword == "операциям"))
 and
(($InputData_1_->Keyword == "справки"))
 and
(($InputData_1_->Keyword == "установлены"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-58";
}
//rule_3-59
if (
(($InputData_1_->Keyword == "банковскую"))
 and
(($InputData_1_->Keyword == "блокировка"))
 and
(($InputData_1_->Keyword == "вашу"))
 and
(($InputData_1_->Keyword == "инфо"))
 and
(($InputData_1_->Keyword == "карту"))
 and
(($InputData_1_->Keyword == "установлена"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-59";
}
//rule_3-60
if (
(($InputData_1_->Keyword == "банковскую"))
 and
(($InputData_1_->Keyword == "блокировка"))
 and
(($InputData_1_->Keyword == "вашу"))
 and
(($InputData_1_->Keyword == "инфо"))
 and
(($InputData_1_->Keyword == "карту"))
 and
(($InputData_1_->Keyword == "установлена"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-60";
}
//rule_3-61
if (
(($InputData_1_->Keyword == "avitos.ml"))
 and
(($InputData_1_->Keyword == "бонусов"))
 and
(($InputData_1_->Keyword == "получи"))
 and
(($InputData_1_->Keyword == "приложение"))
 and
(($InputData_1_->Keyword == "рублей"))
 and
(($InputData_1_->Keyword == "установи"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-61";
}
//rule_3-62
if (
(($InputData_1_->Keyword == "avitoo.tk"))
 and
(($InputData_1_->Keyword == "бонусов"))
 and
(($InputData_1_->Keyword == "получи"))
 and
(($InputData_1_->Keyword == "приложение"))
 and
(($InputData_1_->Keyword == "рублей"))
 and
(($InputData_1_->Keyword == "установи"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-62";
}
//rule_3-63
if (
(($InputData_1_->Keyword == "goo.gl"))
 and
(($InputData_1_->Keyword == "бонусов"))
 and
(($InputData_1_->Keyword == "получи"))
 and
(($InputData_1_->Keyword == "приложение"))
 and
(($InputData_1_->Keyword == "рублей"))
 and
(($InputData_1_->Keyword == "установи"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-63";
}
//rule_3-64
if (
(($InputData_1_->Keyword == "avitoo.tk"))
 and
(($InputData_1_->Keyword == "бонусов"))
 and
(($InputData_1_->Keyword == "получи"))
 and
(($InputData_1_->Keyword == "приложение"))
 and
(($InputData_1_->Keyword == "рублей"))
 and
(($InputData_1_->Keyword == "установи"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-64";
}
//rule_3-65
if (
(($InputData_1_->Keyword == "vk.cc"))
 and
(($InputData_1_->Keyword == "бонусов"))
 and
(($InputData_1_->Keyword == "получи"))
 and
(($InputData_1_->Keyword == "приложение"))
 and
(($InputData_1_->Keyword == "рублей"))
 and
(($InputData_1_->Keyword == "установи"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-65";
}
//rule_4-93
if (
(($InputData_1_->Keyword == "влезать"))
 and
(($InputData_1_->Keyword == "мужа"))
 and
(($InputData_1_->Keyword == "семьи"))
 and
(($InputData_1_->Keyword == "уводить"))
 and
(($InputData_1_->Keyword == "хорошо"))
 and
(($InputData_1_->Keyword == "чужие"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-93";
}
//rule_4-94
if (
(($InputData_1_->Keyword == "влезать"))
 and
(($InputData_1_->Keyword == "женщины"))
 and
(($InputData_1_->Keyword == "падшие"))
 and
(($InputData_1_->Keyword == "семьи"))
 and
(($InputData_1_->Keyword == "уводить"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-94";
}
//rule_4-95
if (
(($InputData_1_->Keyword == "наконец-то"))
 and
(($InputData_1_->Keyword == "сдохла"))
 and
(($InputData_1_->Keyword == "сдохни"))
 and
(($InputData_1_->Keyword == "скорее"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-95";
}
//rule_4-96
if (
(($InputData_1_->Keyword == "давай"))
 and
(($InputData_1_->Keyword == "подыхай"))
 and
(($InputData_1_->Keyword == "сдохла"))
 and
(($InputData_1_->Keyword == "скорей"))
 and
(($InputData_1_->Keyword == "чювырла"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-96";
}
//rule_4-97
if (
(($InputData_1_->Keyword == "нелегко"))
 and
(($InputData_1_->Keyword == "позором"))
 and
(($InputData_1_->Keyword == "семьи"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-97";
}
//rule_4-98
if (
(($InputData_1_->Keyword == "бывший"))
 and
(($InputData_1_->Keyword == "клиентка"))
 and
(($InputData_1_->Keyword == "маникюр"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-98";
}
//rule_4-99
if (
(($InputData_1_->Keyword == "господь"))
 and
(($InputData_1_->Keyword == "достоинством"))
 and
(($InputData_1_->Keyword == "женским"))
 and
(($InputData_1_->Keyword == "обделил"))
 and
(($InputData_1_->Keyword == "стрёмная"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-99";
}
//rule_4-100
if (
(($InputData_1_->Keyword == "греет"))
 and
(($InputData_1_->Keyword == "лачужке"))
 and
(($InputData_1_->Keyword == "постел"))
 and
(($InputData_1_->Keyword == "съёмной"))
 and
(($InputData_1_->Keyword == "чужим"))
 and
(($InputData_1_->Keyword == "шастая"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-100";
}
//rule_4-101
if (
(($InputData_1_->Keyword == "дождусь"))
 and
(($InputData_1_->Keyword == "момента"))
 and
(($InputData_1_->Keyword == "назвать"))
 and
(($InputData_1_->Keyword == "наконец"))
 and
(($InputData_1_->Keyword == "разведёнкой"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-101";
}
//rule_4-102
if (
(($InputData_1_->Keyword == "интересуемся"))
 and
(($InputData_1_->Keyword == "лезешь"))
 and
(($InputData_1_->Keyword == "развод"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-102";
}
//rule_4-103
if (
(($InputData_1_->Keyword == "бестактная"))
 and
(($InputData_1_->Keyword == "воспитал"))
 and
(($InputData_1_->Keyword == "воспитания"))
 and
(($InputData_1_->Keyword == "дефектами"))
 and
(($InputData_1_->Keyword == "скотина"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-103";
}
//rule_4-104
if (
(($InputData_1_->Keyword == "быть"))
 and
(($InputData_1_->Keyword == "захлёбываешься"))
 and
(($InputData_1_->Keyword == "злости"))
 and
(($InputData_1_->Keyword == "ревности"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-104";
}
//rule_4-105
if (
(($InputData_1_->Keyword == "задеваешь"))
 and
(($InputData_1_->Keyword == "представляешь"))
 and
(($InputData_1_->Keyword == "рога"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-105";
}
//rule_4-106
if (
(($InputData_1_->Keyword == "выглядишь"))
 and
(($InputData_1_->Keyword == "глупо"))
 and
(($InputData_1_->Keyword == "гулящая"))
 and
(($InputData_1_->Keyword == "деньги"))
 and
(($InputData_1_->Keyword == "наивная"))
 and
(($InputData_1_->Keyword == "дурочка"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-106";
}
//rule_4-107
if (
(($InputData_1_->Keyword == "бессовестная"))
 and
(($InputData_1_->Keyword == "гуляешь"))
 and
(($InputData_1_->Keyword == "изменяешь"))
 and
(($InputData_1_->Keyword == "конченная"))
 and
(($InputData_1_->Keyword == "мразь"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-107";
}
//rule_4-108
if (
(($InputData_1_->Keyword == "гулящую"))
 and
(($InputData_1_->Keyword == "падшую"))
 and
(($InputData_1_->Keyword == "скинулся"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-108";
}
//rule_4-109
if (
(($InputData_1_->Keyword == "терпеть"))
 and
(($InputData_1_->Keyword == "глупых"))
 and
(($InputData_1_->Keyword == "женщин"))
 and
(($InputData_1_->Keyword == "хочется"))
 and
(($InputData_1_->Keyword == "чужие"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-109";
}
//rule_4-110
if (
(($InputData_1_->Keyword == "ласки"))
 and
(($InputData_1_->Keyword == "переживаешь"))
 and
(($InputData_1_->Keyword == "получает"))
 and
(($InputData_1_->Keyword == "порцию"))
 and
(($InputData_1_->Keyword == "секса"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-110";
}
//rule_1-165
if (
(($InputData_1_->Keyword == "бесплат"))
 and
(($InputData_1_->Keyword == "курительная"))
 and
(($InputData_1_->Keyword == "оплата"))
 and
(($InputData_1_->Keyword == "пробы"))
 and
(($InputData_1_->Keyword == "смесь"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-165";
}
//rule_4-111
if (
(($InputData_1_->Keyword == "врагом"))
 and
(($InputData_1_->Keyword == "другом"))
 and
(($InputData_1_->Keyword == "друзьями"))
 and
(($InputData_1_->Keyword == "женой"))
 and
(($InputData_1_->Keyword == "любовниками"))
 and
(($InputData_1_->Keyword == "любовницей"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-111";
}
//rule_1-166
if (
(($InputData_1_->Keyword == "пластырь"))
 and
(($InputData_1_->Keyword == "пожалуйста"))
 and
(($InputData_1_->Keyword == "положи"))
 and
(($InputData_1_->Keyword == "прочее"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-166";
}
//rule_4-112
if (
(($InputData_1_->Keyword == "меркантильная"))
 and
(($InputData_1_->Keyword == "никому"))
 and
(($InputData_1_->Keyword == "нужна"))
 and
(($InputData_1_->Keyword == "нужны"))
 and
(($InputData_1_->Keyword == "осталась"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-112";
}
//rule_4-113
if (
(($InputData_1_->Keyword == "пьёт"))
 and
(($InputData_1_->Keyword == "развлечения"))
 and
(($InputData_1_->Keyword == "стыдно"))
 and
(($InputData_1_->Keyword == "сына"))
 and
(($InputData_1_->Keyword == "алкоголика"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-113";
}
//rule_3-66
if (
(($InputData_1_->Keyword == "заявка"))
 and
(($InputData_1_->Keyword == "звоните"))
 and
(($InputData_1_->Keyword == "оплату"))
 and
(($InputData_1_->Keyword == "отмены"))
 and
(($InputData_1_->Keyword == "принята"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-66";
}
//rule_4-114
if (
(($InputData_1_->Keyword == "ветвистые"))
 and
(($InputData_1_->Keyword == "головы"))
 and
(($InputData_1_->Keyword == "мешают"))
 and
(($InputData_1_->Keyword == "рога"))
 and
(($InputData_1_->Keyword == "роскошные"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-114";
}
//rule_4-115
if (
(($InputData_1_->Keyword == "брошенкой"))
 and
(($InputData_1_->Keyword == "женщина"))
 and
(($InputData_1_->Keyword == "тёлка"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-115";
}
//rule_4-116
if (
(($InputData_1_->Keyword == "брошенка"))
 and
(($InputData_1_->Keyword == "женщины"))
 and
(($InputData_1_->Keyword == "любовница"))
 and
(($InputData_1_->Keyword == "унизительный"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-116";
}
//rule_4-117
if (
(($InputData_1_->Keyword == "жёны"))
 and
(($InputData_1_->Keyword == "шалавы"))
 and
(($InputData_1_->Keyword == "избавляться"))
 and
(($InputData_1_->Keyword == "позор"))
 and
(($InputData_1_->Keyword == "пришлось"))
 and
(($InputData_1_->Keyword == "развод"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-117";
}
//rule_4-118
if (
(($InputData_1_->Keyword == "ветвистые"))
 and
(($InputData_1_->Keyword == "влюбленного"))
 and
(($InputData_1_->Keyword == "женатого"))
 and
(($InputData_1_->Keyword == "крылья"))
 and
(($InputData_1_->Keyword == "рога"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-118";
}
//rule_4-119
if (
(($InputData_1_->Keyword == "барана"))
 and
(($InputData_1_->Keyword == "возомнившая"))
 and
(($InputData_1_->Keyword == "который"))
 and
(($InputData_1_->Keyword == "может"))
 and
(($InputData_1_->Keyword == "мужчину"))
 and
(($InputData_1_->Keyword == "овца"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-119";
}
//rule_3-67
if (
(($InputData_1_->Keyword == "карте"))
 and
(($InputData_1_->Keyword == "операции"))
 and
(($InputData_1_->Keyword == "приостановлены"))
 and
(($InputData_1_->Keyword == "срочно"))
 and
(($InputData_1_->Keyword == "свяжитесь"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-67";
}
//rule_4-120
if (
(($InputData_1_->Keyword == "борщом"))
 and
(($InputData_1_->Keyword == "бывшего"))
 and
(($InputData_1_->Keyword == "вкусным"))
 and
(($InputData_1_->Keyword == "любовницу"))
 and
(($InputData_1_->Keyword == "местоположение"))
 and
(($InputData_1_->Keyword == "секс"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-120";
}
//rule_4-121
if (
(($InputData_1_->Keyword == "признак"))
 and
(($InputData_1_->Keyword == "стыда"))
 and
(($InputData_1_->Keyword == "тебе"))
 and
(($InputData_1_->Keyword == "шизофрении"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-121";
}
//rule_4-122
if (
(($InputData_1_->Keyword == "здохни"))
 and
(($InputData_1_->Keyword == "сдохни"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-122";
}
//rule_4-123
if (
(($InputData_1_->Keyword == "передок"))
 and
(($InputData_1_->Keyword == "слаба"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-123";
}
//rule_4-124
if (
(($InputData_1_->Keyword == "бестолковыми"))
 and
(($InputData_1_->Keyword == "бывшему"))
 and
(($InputData_1_->Keyword == "мужу"))
 and
(($InputData_1_->Keyword == "напрягать"))
 and
(($InputData_1_->Keyword == "шалава"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-124";
}
//rule_4-125
if (
(($InputData_1_->Keyword == "ласки"))
 and
(($InputData_1_->Keyword == "любви"))
 and
(($InputData_1_->Keyword == "позорница"))
 and
(($InputData_1_->Keyword == "получает"))
 and
(($InputData_1_->Keyword == "порцию"))
 and
(($InputData_1_->Keyword == "сейчас"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-125";
}
//rule_4-126
if (
(($InputData_1_->Keyword == "любовник"))
 and
(($InputData_1_->Keyword == "мартышка"))
 and
(($InputData_1_->Keyword == "потеряла"))
 and
(($InputData_1_->Keyword == "просто"))
 and
(($InputData_1_->Keyword == "тупая"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-126";
}
//rule_4-127
if (
(($InputData_1_->Keyword == "влезла"))
 and
(($InputData_1_->Keyword == "гуляешь"))
 and
(($InputData_1_->Keyword == "изменяешь"))
 and
(($InputData_1_->Keyword == "семью"))
 and
(($InputData_1_->Keyword == "совести"))
 and
(($InputData_1_->Keyword == "чужую"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-127";
}
//rule_4-128
if (
(($InputData_1_->Keyword == "висят"))
 and
(($InputData_1_->Keyword == "говорит"))
 and
(($InputData_1_->Keyword == "груди"))
 and
(($InputData_1_->Keyword == "подкачать"))
 and
(($InputData_1_->Keyword == "сиськи"))
 and
(($InputData_1_->Keyword == "спаниеля"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-128";
}
//rule_1-167
if (
(($InputData_1_->Keyword == "железка"))
 and
(($InputData_1_->Keyword == "зайдите"))
 and
(($InputData_1_->Keyword == "край"))
 and
(($InputData_1_->Keyword == "лифтом"))
 and
(($InputData_1_->Keyword == "отогните"))
 and
(($InputData_1_->Keyword == "падик"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-167";
}
//rule_4-129
if (
(($InputData_1_->Keyword == "девушку"))
 and
(($InputData_1_->Keyword == "злобная"))
 and
(($InputData_1_->Keyword == "мамашка"))
 and
(($InputData_1_->Keyword == "разводится"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-129";
}
//rule_3-68
if (
(($InputData_1_->Keyword == "звоните"))
 and
(($InputData_1_->Keyword == "совершали"))
 and
(($InputData_1_->Keyword == "списание"))
 and
(($InputData_1_->Keyword == "успешно"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-68";
}
//rule_3-69
if (
(($InputData_1_->Keyword == "visa"))
 and
(($InputData_1_->Keyword == "вашей"))
 and
(($InputData_1_->Keyword == "списание"))
 and
(($InputData_1_->Keyword == "справки"))
 and
(($InputData_1_->Keyword == "успешно"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-69";
}
//rule_3-70
if (
(($InputData_1_->Keyword == "инфо"))
 and
(($InputData_1_->Keyword == "списание"))
 and
(($InputData_1_->Keyword == "успешно"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-70";
}
//rule_3-71
if (
(($InputData_1_->Keyword == "выполнено"))
 and
(($InputData_1_->Keyword == "списание"))
 and
(($InputData_1_->Keyword == "справка"))
 and
(($InputData_1_->Keyword == "успешно"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-71";
}
//rule_3-72
if (
(($InputData_1_->Keyword == "visa/mc"))
 and
(($InputData_1_->Keyword == "вашей"))
 and
(($InputData_1_->Keyword == "списание"))
 and
(($InputData_1_->Keyword == "справки"))
 and
(($InputData_1_->Keyword == "успешно"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-72";
}
//rule_3-73
if (
(($InputData_1_->Keyword == "списание"))
 and
(($InputData_1_->Keyword == "сумму"))
 and
(($InputData_1_->Keyword == "успешно"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-73";
}
//rule_4-130
if (
(($InputData_1_->Keyword == "брошенкой"))
 and
(($InputData_1_->Keyword == "осталась"))
 and
(($InputData_1_->Keyword == "просто"))
 and
(($InputData_1_->Keyword == "смирись"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-130";
}
//rule_4-131
if (
(($InputData_1_->Keyword == "вертихвостка"))
 and
(($InputData_1_->Keyword == "давящая"))
 and
(($InputData_1_->Keyword == "жалость"))
 and
(($InputData_1_->Keyword == "ноги"))
 and
(($InputData_1_->Keyword == "раздвигающая"))
 and
(($InputData_1_->Keyword == "чужими"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-131";
}
//rule_4-132
if (
(($InputData_1_->Keyword == "возрасте"))
 and
(($InputData_1_->Keyword == "женщиной"))
 and
(($InputData_1_->Keyword == "задницей"))
 and
(($InputData_1_->Keyword == "крутишь"))
 and
(($InputData_1_->Keyword == "мужьями"))
 and
(($InputData_1_->Keyword == "позорно"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-132";
}
//rule_3-74
if (
(($InputData_1_->Keyword == "приянята"))
 and
(($InputData_1_->Keyword == "сумма"))
 and
(($InputData_1_->Keyword == "успешна"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-74";
}
//rule_3-75
if (
(($InputData_1_->Keyword == "logo.ru"))
 and
(($InputData_1_->Keyword == "пользования"))
 and
(($InputData_1_->Keyword == "принята"))
 and
(($InputData_1_->Keyword == "саитом"))
 and
(($InputData_1_->Keyword == "сумма"))
 and
(($InputData_1_->Keyword == "успешна"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-75";
}
//rule_3-76
if (
(($InputData_1_->Keyword == "банк"))
 and
(($InputData_1_->Keyword == "вашей"))
 and
(($InputData_1_->Keyword == "карте"))
 and
(($InputData_1_->Keyword == "платежи"))
 and
(($InputData_1_->Keyword == "приостановлены"))
 and
(($InputData_1_->Keyword == "справки"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-76";
}
//rule_4-133
if (
(($InputData_1_->Keyword == "камера"))
 and
(($InputData_1_->Keyword == "лысая"))
 and
(($InputData_1_->Keyword == "пиздёнка"))
 and
(($InputData_1_->Keyword == "пиздец"))
 and
(($InputData_1_->Keyword == "скрытая"))
 and
(($InputData_1_->Keyword == "снимает"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-133";
}
//rule_3-77
if (
(($InputData_1_->Keyword == "выполнена"))
 and
(($InputData_1_->Keyword == "покупка"))
 and
(($InputData_1_->Keyword == "logo.com"))
 and
(($InputData_1_->Keyword == "сумму"))
 and
(($InputData_1_->Keyword == "успешна"))
 and
(($InputData_1_->Keyword == "info"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-77";
}
//rule_4-134
if (
(($InputData_1_->Keyword == "мамочке"))
 and
(($InputData_1_->Keyword == "привет"))
 and
(($InputData_1_->Keyword == "шалавочке"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-134";
}
//rule_4-135
if (
(($InputData_1_->Keyword == "бывшей"))
 and
(($InputData_1_->Keyword == "вашей"))
 and
(($InputData_1_->Keyword == "вообще"))
 and
(($InputData_1_->Keyword == "жены"))
 and
(($InputData_1_->Keyword == "ухажёр"))
 and
(($InputData_1_->Keyword == "любовник"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-135";
}
//rule_4-136
if (
(($InputData_1_->Keyword == "привет"))
 and
(($InputData_1_->Keyword == "шизофреничка"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-136";
}
//rule_4-137
if (
(($InputData_1_->Keyword == "брошенка"))
 and
(($InputData_1_->Keyword == "трогать"))
 and
(($InputData_1_->Keyword == "хватит"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-137";
}
//rule_4-138
if (
(($InputData_1_->Keyword == "лезешь"))
 and
(($InputData_1_->Keyword == "потасканная"))
 and
(($InputData_1_->Keyword == "привет"))
 and
(($InputData_1_->Keyword == "развод"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-138";
}
//rule_4-139
if (
(($InputData_1_->Keyword == "рошенной"))
 and
(($InputData_1_->Keyword == "всеми"))
 and
(($InputData_1_->Keyword == "мужем"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-139";
}
//rule_4-140
if (
(($InputData_1_->Keyword == "обострение"))
 and
(($InputData_1_->Keyword == "потаскуха"))
 and
(($InputData_1_->Keyword == "стрёмная"))
 and
(($InputData_1_->Keyword == "тварина"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-140";
}
//rule_4-141
if (
(($InputData_1_->Keyword == "давалка"))
 and
(($InputData_1_->Keyword == "любовник"))
 and
(($InputData_1_->Keyword == "разводится"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-141";
}
//rule_1-168
if (
(($InputData_1_->Keyword == "аптека"))
 and
(($InputData_1_->Keyword == "запишу"))
 and
(($InputData_1_->Keyword == "тебя"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-168";
}
//rule_1-169
if (
(($InputData_1_->Keyword == "ложи"))
 and
(($InputData_1_->Keyword == "запишу"))
 and
(($InputData_1_->Keyword == "мешок"))
 and
(($InputData_1_->Keyword == "тебя"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-169";
}
//rule_1-170
if (
(($InputData_1_->Keyword == "гребут"))
 and
(($InputData_1_->Keyword == "обясни"))
 and
(($InputData_1_->Keyword == "петухи"))
 and
(($InputData_1_->Keyword == "себя"))
 and
(($InputData_1_->Keyword == "экскаваторы"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-170";
}
//rule_1-171
if (
(($InputData_1_->Keyword == "второй"))
 and
(($InputData_1_->Keyword == "двойные"))
 and
(($InputData_1_->Keyword == "разобрали"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-171";
}
//rule_1-172
if (
(($InputData_1_->Keyword == "затолкан"))
 and
(($InputData_1_->Keyword == "проц"))
 and
(($InputData_1_->Keyword == "сильно"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-172";
}
//rule_1-173
if (
(($InputData_1_->Keyword == "берут"))
 and
(($InputData_1_->Keyword == "другие"))
 and
(($InputData_1_->Keyword == "есть"))
 and
(($InputData_1_->Keyword == "пацаны"))
 and
(($InputData_1_->Keyword == "посмотрят"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-173";
}
//rule_1-174
if (
(($InputData_1_->Keyword == "посмотри"))
 and
(($InputData_1_->Keyword == "руль"))
 and
(($InputData_1_->Keyword == "старый"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-174";
}
//rule_1-175
if (
(($InputData_1_->Keyword == "внизу"))
 and
(($InputData_1_->Keyword == "железная"))
 and
(($InputData_1_->Keyword == "лесница"))
 and
(($InputData_1_->Keyword == "лесницей"))
 and
(($InputData_1_->Keyword == "мусор"))
 and
(($InputData_1_->Keyword == "чердак"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-175";
}
//rule_1-176
if (
(($InputData_1_->Keyword == "вроде"))
 and
(($InputData_1_->Keyword == "ментовка"))
 and
(($InputData_1_->Keyword == "отливом"))
 and
(($InputData_1_->Keyword == "первого"))
 and
(($InputData_1_->Keyword == "подвале"))
 and
(($InputData_1_->Keyword == "этажа"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-176";
}
//rule_1-177
if (
(($InputData_1_->Keyword == "дали"))
 and
(($InputData_1_->Keyword == "логично"))
 and
(($InputData_1_->Keyword == "номер"))
 and
(($InputData_1_->Keyword == "случайно"))
 and
(($InputData_1_->Keyword == "тебе"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-177";
}
//rule_1-178
if (
(($InputData_1_->Keyword == "дать"))
 and
(($InputData_1_->Keyword == "пробу"))
 and
(($InputData_1_->Keyword == "тебе"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-178";
}
//rule_1-179
if (
(($InputData_1_->Keyword == "большой"))
 and
(($InputData_1_->Keyword == "бумажке"))
 and
(($InputData_1_->Keyword == "падик"))
 and
(($InputData_1_->Keyword == "слево"))
 and
(($InputData_1_->Keyword == "титова"))
 and
(($InputData_1_->Keyword == "ящик"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-179";
}
//rule_1-180
if (
(($InputData_1_->Keyword == "делал"))
 and
(($InputData_1_->Keyword == "забрали"))
 and
(($InputData_1_->Keyword == "интерсвязи"))
 and
(($InputData_1_->Keyword == "клада"))
 and
(($InputData_1_->Keyword == "коробке"))
 and
(($InputData_1_->Keyword == "пластовские"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-180";
}
//rule_1-181
if (
(($InputData_1_->Keyword == "готовые"))
 and
(($InputData_1_->Keyword == "тока"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-181";
}
//rule_1-182
if (
(($InputData_1_->Keyword == "клады"))
 and
(($InputData_1_->Keyword == "токо"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-182";
}
//rule_1-183
if (
(($InputData_1_->Keyword == "днях"))
 and
(($InputData_1_->Keyword == "кстати"))
 and
(($InputData_1_->Keyword == "такой"))
 and
(($InputData_1_->Keyword == "токо"))
 and
(($InputData_1_->Keyword == "увеличу"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-183";
}
//rule_1-184
if (
(($InputData_1_->Keyword == "клад"))
 and
(($InputData_1_->Keyword == "рублевый"))
 and
(($InputData_1_->Keyword == "токо"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-184";
}
//rule_1-185
if (
(($InputData_1_->Keyword == "левую"))
 and
(($InputData_1_->Keyword == "оптика"))
 and
(($InputData_1_->Keyword == "правую"))
 and
(($InputData_1_->Keyword == "руку"))
 and
(($InputData_1_->Keyword == "травой"))
 and
(($InputData_1_->Keyword == "тротуару"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-185";
}
//rule_1-186
if (
(($InputData_1_->Keyword == "взяли"))
 and
(($InputData_1_->Keyword == "впридачу"))
 and
(($InputData_1_->Keyword == "пацаны"))
 and
(($InputData_1_->Keyword == "похоже"))
 and
(($InputData_1_->Keyword == "свое"))
 and
(($InputData_1_->Keyword == "твои"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-186";
}
//rule_1-187
if (
(($InputData_1_->Keyword == "гдето"))
 and
(($InputData_1_->Keyword == "подьезда"))
 and
(($InputData_1_->Keyword == "понимаю"))
 and
(($InputData_1_->Keyword == "рядом"))
 and
(($InputData_1_->Keyword == "твои"))
 and
(($InputData_1_->Keyword == "этого"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-187";
}
//rule_1-188
if (
(($InputData_1_->Keyword == "буду"))
 and
(($InputData_1_->Keyword == "замарачиваться"))
 and
(($InputData_1_->Keyword == "пакет"))
 and
(($InputData_1_->Keyword == "положи"))
 and
(($InputData_1_->Keyword == "рублей"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-188";
}
//rule_1-189
if (
(($InputData_1_->Keyword == "будеш"))
 and
(($InputData_1_->Keyword == "если"))
 and
(($InputData_1_->Keyword == "спросиш"))
 and
(($InputData_1_->Keyword == "поймеш"))
 and
(($InputData_1_->Keyword == "терминала"))
 and
(($InputData_1_->Keyword == "чтото"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-189";
}
//rule_1-190
if (
(($InputData_1_->Keyword == "брал"))
 and
(($InputData_1_->Keyword == "вчера"))
 and
(($InputData_1_->Keyword == "зверобой"))
 and
(($InputData_1_->Keyword == "любой"))
 and
(($InputData_1_->Keyword == "наполнитель"))
 and
(($InputData_1_->Keyword == "ромашка"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-190";
}
//rule_1-191
if (
(($InputData_1_->Keyword == "докидывай"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-191";
}
//rule_1-192
if (
(($InputData_1_->Keyword == "закинеш"))
 and
(($InputData_1_->Keyword == "когда"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-192";
}
//rule_1-193
if (
(($InputData_1_->Keyword == "внимательно"))
 and
(($InputData_1_->Keyword == "всегда"))
 and
(($InputData_1_->Keyword == "паникуй"))
 and
(($InputData_1_->Keyword == "смотри"))
 and
(($InputData_1_->Keyword == "читай"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-193";
}
//rule_1-194
if (
(($InputData_1_->Keyword == "клады"))
 and
(($InputData_1_->Keyword == "адрес"))
 and
(($InputData_1_->Keyword == "кину"))
 and
(($InputData_1_->Keyword == "молниеносно"))
 and
(($InputData_1_->Keyword == "отблагодари"))
 and
(($InputData_1_->Keyword == "сначала"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-194";
}
//rule_1-195
if (
(($InputData_1_->Keyword == "ложиш"))
 and
(($InputData_1_->Keyword == "нажать"))
 and
(($InputData_1_->Keyword == "неправильно"))
 and
(($InputData_1_->Keyword == "оплату"))
 and
(($InputData_1_->Keyword == "пришло"))
 and
(($InputData_1_->Keyword == "услуг"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-195";
}
//rule_1-196
if (
(($InputData_1_->Keyword == "кончинуй"))
 and
(($InputData_1_->Keyword == "пидор"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-196";
}
//rule_1-197
if (
(($InputData_1_->Keyword == "больше"))
 and
(($InputData_1_->Keyword == "брал"))
 and
(($InputData_1_->Keyword == "качество"))
 and
(($InputData_1_->Keyword == "количество"))
 and
(($InputData_1_->Keyword == "пробу"))
 and
(($InputData_1_->Keyword == "самое"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-197";
}
//rule_1-198
if (
(($InputData_1_->Keyword == "пробу"))
 and
(($InputData_1_->Keyword == "просил"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-198";
}
//rule_1-199
if (
(($InputData_1_->Keyword == "если"))
 and
(($InputData_1_->Keyword == "знать"))
 and
(($InputData_1_->Keyword == "надо"))
 and
(($InputData_1_->Keyword == "положил"))
 and
(($InputData_1_->Keyword == "пробу"))
 and
(($InputData_1_->Keyword == "просил"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-199";
}
//rule_1-200
if (
(($InputData_1_->Keyword == "есть"))
 and
(($InputData_1_->Keyword == "кроме"))
 and
(($InputData_1_->Keyword == "люди"))
 and
(($InputData_1_->Keyword == "тебя"))
 and
(($InputData_1_->Keyword == "устраиваеш"))
 and
(($InputData_1_->Keyword == "чекхарду"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-200";
}
//rule_1-201
if (
(($InputData_1_->Keyword == "дубу"))
 and
(($InputData_1_->Keyword == "какой"))
 and
(($InputData_1_->Keyword == "магазин"))
 and
(($InputData_1_->Keyword == "рухнул"))
 and
(($InputData_1_->Keyword == "совсем"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-201";
}
//rule_1-202
if (
(($InputData_1_->Keyword == "вижу"))
 and
(($InputData_1_->Keyword == "всегда"))
 and
(($InputData_1_->Keyword == "мешаеш"))
 and
(($InputData_1_->Keyword == "писать"))
 and
(($InputData_1_->Keyword == "понимаю"))
 and
(($InputData_1_->Keyword == "спешиш"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-202";
}
//rule_1-203
if (
(($InputData_1_->Keyword == "будеш"))
 and
(($InputData_1_->Keyword == "времени"))
 and
(($InputData_1_->Keyword == "скоко"))
 and
(($InputData_1_->Keyword == "собрался"))
 and
(($InputData_1_->Keyword == "танцы"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-203";
}
//rule_1-204
if (
(($InputData_1_->Keyword == "молчиш"))
 and
(($InputData_1_->Keyword == "филя"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-204";
}
//rule_1-205
if (
(($InputData_1_->Keyword == "есть"))
 and
(($InputData_1_->Keyword == "ищет"))
 and
(($InputData_1_->Keyword == "филя"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-205";
}
//rule_1-206
if (
(($InputData_1_->Keyword == "нужны"))
 and
(($InputData_1_->Keyword == "работаю"))
 and
(($InputData_1_->Keyword == "такие"))
 and
(($InputData_1_->Keyword == "третий"))
 and
(($InputData_1_->Keyword == "филя"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-206";
}
//rule_1-207
if (
(($InputData_1_->Keyword == "гляну"))
 and
(($InputData_1_->Keyword == "куда"))
 and
(($InputData_1_->Keyword == "ложил"))
 and
(($InputData_1_->Keyword == "переживай"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-207";
}
//rule_1-208
if (
(($InputData_1_->Keyword == "надо"))
 and
(($InputData_1_->Keyword == "штоли"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-208";
}
//rule_1-209
if (
(($InputData_1_->Keyword == "вообще"))
 and
(($InputData_1_->Keyword == "прет"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-209";
}
//rule_1-210
if (
(($InputData_1_->Keyword == "органика"))
 and
(($InputData_1_->Keyword == "бошки"))
 and
(($InputData_1_->Keyword == "такое"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-210";
}
//rule_1-211
if (
(($InputData_1_->Keyword == "махра"))
 and
(($InputData_1_->Keyword == "органика"))
 and
(($InputData_1_->Keyword == "бошки"))
 and
(($InputData_1_->Keyword == "такое"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-211";
}
//rule_1-212
if (
(($InputData_1_->Keyword == "друг"))
 and
(($InputData_1_->Keyword == "какая"))
 and
(($InputData_1_->Keyword == "мутная"))
 and
(($InputData_1_->Keyword == "тебя"))
 and
(($InputData_1_->Keyword == "феня"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-212";
}
//rule_1-213
if (
(($InputData_1_->Keyword == "филя"))
 and
(($InputData_1_->Keyword == "хотел"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-213";
}
//rule_1-214
if (
(($InputData_1_->Keyword == "городе"))
 and
(($InputData_1_->Keyword == "зашуганные"))
 and
(($InputData_1_->Keyword == "настороженные"))
 and
(($InputData_1_->Keyword == "пробу"))
 and
(($InputData_1_->Keyword == "просил"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-214";
}
//rule_1-215
if (
(($InputData_1_->Keyword == "движ"))
 and
(($InputData_1_->Keyword == "сюда"))
 and
(($InputData_1_->Keyword == "туда"))
 and
(($InputData_1_->Keyword == "хоть"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-215";
}
//rule_4-142
if (
(($InputData_1_->Keyword == "уймись"))
 and
(($InputData_1_->Keyword == "хватит"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-142";
}
//rule_4-143
if (
(($InputData_1_->Keyword == "ровно"))
 and
(($InputData_1_->Keyword == "тебе"))
 and
(($InputData_1_->Keyword == "хули"))
 and
(($InputData_1_->Keyword == "экономически"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-143";
}
//rule_1-216
if (
(($InputData_1_->Keyword == "забрали"))
 and
(($InputData_1_->Keyword == "пласта"))
 and
(($InputData_1_->Keyword == "хуеплеты"))
 and
(($InputData_1_->Keyword == "чужое"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-216";
}
//rule_1-217
if (
(($InputData_1_->Keyword == "двигался"))
 and
(($InputData_1_->Keyword == "емана"))
 and
(($InputData_1_->Keyword == "никто"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-217";
}
//rule_1-218
if (
(($InputData_1_->Keyword == "зеленым"))
 and
(($InputData_1_->Keyword == "туалетом"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-218";
}
//rule_1-219
if (
(($InputData_1_->Keyword == "калитки"))
 and
(($InputData_1_->Keyword == "права"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-219";
}
//rule_1-220
if (
(($InputData_1_->Keyword == "качество"))
 and
(($InputData_1_->Keyword == "толкает"))
 and
(($InputData_1_->Keyword == "швыра"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-220";
}
//rule_1-221
if (
(($InputData_1_->Keyword == "делать"))
 and
(($InputData_1_->Keyword == "кладов"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-221";
}
//rule_4-144
if (
(($InputData_1_->Keyword == "сдохни"))
 and
(($InputData_1_->Keyword == "скорее"))
 and
(($InputData_1_->Keyword == "тошная"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-144";
}
//rule_1-222
if (
(($InputData_1_->Keyword == "времени"))
 and
(($InputData_1_->Keyword == "надо"))
 and
(($InputData_1_->Keyword == "скоко"))
 and
(($InputData_1_->Keyword == "спешу"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-222";
}
//rule_1-223
if (
(($InputData_1_->Keyword == "времени"))
 and
(($InputData_1_->Keyword == "скоко"))
 and
(($InputData_1_->Keyword == "точно"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-223";
}
//rule_1-224
if (
(($InputData_1_->Keyword == "возникла"))
 and
(($InputData_1_->Keyword == "ждать"))
 and
(($InputData_1_->Keyword == "необходимость"))
 and
(($InputData_1_->Keyword == "отлучиться"))
 and
(($InputData_1_->Keyword == "скоко"))
 and
(($InputData_1_->Keyword == "тебя"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-224";
}
//rule_1-225
if (
(($InputData_1_->Keyword == "плакатом"))
 and
(($InputData_1_->Keyword == "вывеской"))
 and
(($InputData_1_->Keyword == "рекламой"))
 and
(($InputData_1_->Keyword == "слева"))
 and
(($InputData_1_->Keyword == "снизу"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-225";
}
//rule_1-226
if (
(($InputData_1_->Keyword == "вверху"))
 and
(($InputData_1_->Keyword == "стене"))
 and
(($InputData_1_->Keyword == "углубление"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-226";
}
//rule_1-227
if (
(($InputData_1_->Keyword == "количество"))
 and
(($InputData_1_->Keyword == "сегодня"))
 and
(($InputData_1_->Keyword == "увеличил"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-227";
}
//rule_1-228
if (
(($InputData_1_->Keyword == "емане"))
 and
(($InputData_1_->Keyword == "закладчиком"))
 and
(($InputData_1_->Keyword == "свяэался"))
 and
(($InputData_1_->Keyword == "токо"))
 and
(($InputData_1_->Keyword == "троицке"))
 and
(($InputData_1_->Keyword == "челике"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-228";
}
//rule_1-229
if (
(($InputData_1_->Keyword == "сп-500"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-229";
}
//rule_1-230
if (
(($InputData_1_->Keyword == "1п-500"))
 and
(($InputData_1_->Keyword == "есть"))
 and
(($InputData_1_->Keyword == "киви"))
 and
(($InputData_1_->Keyword == "клады"))
 and
(($InputData_1_->Keyword == "пробы"))
 and
(($InputData_1_->Keyword == "спайс"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-230";
}
//rule_3-78
if (
(($InputData_1_->Keyword == "карты"))
 and
(($InputData_1_->Keyword == "списание"))
 and
(($InputData_1_->Keyword == "справка"))
 and
(($InputData_1_->Keyword == "успешно"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-78";
}
//rule_3-79
if (
(($InputData_1_->Keyword == "вашей"))
 and
(($InputData_1_->Keyword == "карты"))
 and
(($InputData_1_->Keyword == "списание"))
 and
(($InputData_1_->Keyword == "справка"))
 and
(($InputData_1_->Keyword == "успешно"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-79";
}
//rule_3-80
if (
(($InputData_1_->Keyword == "вашей"))
 and
(($InputData_1_->Keyword == "карты"))
 and
(($InputData_1_->Keyword == "списание"))
 and
(($InputData_1_->Keyword == "успешно"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-80";
}
//rule_1-231
if (
(($InputData_1_->Keyword == "интерсвязи"))
 and
(($InputData_1_->Keyword == "межде"))
 and
(($InputData_1_->Keyword == "падик"))
 and
(($InputData_1_->Keyword == "спортивная"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-231";
}
//rule_1-232
if (
(($InputData_1_->Keyword == "лестницей"))
 and
(($InputData_1_->Keyword == "падик"))
 and
(($InputData_1_->Keyword == "слево"))
 and
(($InputData_1_->Keyword == "спортивная"))
 and
(($InputData_1_->Keyword == "углу"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-232";
}
//rule_1-233
if (
(($InputData_1_->Keyword == "интерсвязи"))
 and
(($InputData_1_->Keyword == "падик"))
 and
(($InputData_1_->Keyword == "спортивная"))
 and
(($InputData_1_->Keyword == "этаж"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-233";
}
//rule_4-145
if (
(($InputData_1_->Keyword == "обидно"))
 and
(($InputData_1_->Keyword == "обострение"))
 and
(($InputData_1_->Keyword == "первые"))
 and
(($InputData_1_->Keyword == "признаки"))
 and
(($InputData_1_->Keyword == "ревности"))
 and
(($InputData_1_->Keyword == "смотри"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-145";
}
//rule_1-234
if (
(($InputData_1_->Keyword == "если"))
 and
(($InputData_1_->Keyword == "забрали"))
 and
(($InputData_1_->Keyword == "посмотрят"))
 and
(($InputData_1_->Keyword == "счас"))
 and
(($InputData_1_->Keyword == "твои"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-234";
}
//rule_1-235
if (
(($InputData_1_->Keyword == "балланс"))
 and
(($InputData_1_->Keyword == "должен"))
 and
(($InputData_1_->Keyword == "кладов"))
 and
(($InputData_1_->Keyword == "работой"))
 and
(($InputData_1_->Keyword == "считай"))
 and
(($InputData_1_->Keyword == "телефон"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-235";
}
//rule_3-81
if (
(($InputData_1_->Keyword == "банк"))
 and
(($InputData_1_->Keyword == "почта"))
 and
(($InputData_1_->Keyword == "свяжитесь"))
 and
(($InputData_1_->Keyword == "срочно"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-81";
}
//rule_1-236
if (
(($InputData_1_->Keyword == "киви"))
 and
(($InputData_1_->Keyword == "комент"))
 and
(($InputData_1_->Keyword == "мегафон"))
 and
(($InputData_1_->Keyword == "придумай"))
 and
(($InputData_1_->Keyword == "доступно"))
 and
(($InputData_1_->Keyword == "терминал"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-236";
}
//rule_1-237
if (
(($InputData_1_->Keyword == "есть"))
 and
(($InputData_1_->Keyword == "мягкий"))
 and
(($InputData_1_->Keyword == "работаю"))
 and
(($InputData_1_->Keyword == "россыпь"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-237";
}
//rule_1-238
if (
(($InputData_1_->Keyword == "будет"))
 and
(($InputData_1_->Keyword == "докидывай"))
 and
(($InputData_1_->Keyword == "отдам"))
 and
(($InputData_1_->Keyword == "пробы"))
 and
(($InputData_1_->Keyword == "разобрали"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-238";
}
//rule_1-239
if (
(($InputData_1_->Keyword == "белым"))
 and
(($InputData_1_->Keyword == "брусочком"))
 and
(($InputData_1_->Keyword == "вверху"))
 and
(($InputData_1_->Keyword == "падик"))
 and
(($InputData_1_->Keyword == "слева"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-239";
}
//rule_1-240
if (
(($InputData_1_->Keyword == "забереш"))
 and
(($InputData_1_->Keyword == "отпишеш"))
 and
(($InputData_1_->Keyword == "падик"))
 and
(($InputData_1_->Keyword == "ящиком"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-240";
}
//rule_1-241
if (
(($InputData_1_->Keyword == "дальняя"))
 and
(($InputData_1_->Keyword == "камнем"))
 and
(($InputData_1_->Keyword == "ниша"))
 and
(($InputData_1_->Keyword == "падик"))
 and
(($InputData_1_->Keyword == "подвал"))
 and
(($InputData_1_->Keyword == "слево"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-241";
}
//rule_1-242
if (
(($InputData_1_->Keyword == "зеленым"))
 and
(($InputData_1_->Keyword == "отливом"))
 and
(($InputData_1_->Keyword == "слево"))
 and
(($InputData_1_->Keyword == "торца"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-242";
}
//rule_1-243
if (
(($InputData_1_->Keyword == "есть"))
 and
(($InputData_1_->Keyword == "легальный"))
 and
(($InputData_1_->Keyword == "микс"))
 and
(($InputData_1_->Keyword == "слабенький"))
 and
(($InputData_1_->Keyword == "такой"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-243";
}
//rule_1-244
if (
(($InputData_1_->Keyword == "даймонд"))
 and
(($InputData_1_->Keyword == "есть"))
 and
(($InputData_1_->Keyword == "легального"))
 and
(($InputData_1_->Keyword == "микса"))
 and
(($InputData_1_->Keyword == "нелегал"))
 and
(($InputData_1_->Keyword == "пробник"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-244";
}
//rule_1-245
if (
(($InputData_1_->Keyword == "занимаюсь"))
 and
(($InputData_1_->Keyword == "этим"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-245";
}
//rule_1-246
if (
(($InputData_1_->Keyword == "пробу"))
 and
(($InputData_1_->Keyword == "тебе"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-246";
}
//rule_1-247
if (
(($InputData_1_->Keyword == "бесплатные"))
 and
(($InputData_1_->Keyword == "кидаю"))
 and
(($InputData_1_->Keyword == "кончались"))
 and
(($InputData_1_->Keyword == "ложи"))
 and
(($InputData_1_->Keyword == "обьясняю"))
 and
(($InputData_1_->Keyword == "пробы"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-247";
}
//rule_1-248
if (
(($InputData_1_->Keyword == "адреса"))
 and
(($InputData_1_->Keyword == "второго"))
 and
(($InputData_1_->Keyword == "клад"))
 and
(($InputData_1_->Keyword == "неработаю"))
 and
(($InputData_1_->Keyword == "нетуодного"))
 and
(($InputData_1_->Keyword == "6реально"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-248";
}
//rule_1-249
if (
(($InputData_1_->Keyword == "долгий"))
 and
(($InputData_1_->Keyword == "качество"))
 and
(($InputData_1_->Keyword == "мягкий"))
 and
(($InputData_1_->Keyword == "передохли"))
 and
(($InputData_1_->Keyword == "улучшать"))
 and
(($InputData_1_->Keyword == "чтоб"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-249";
}
//rule_1-250
if (
(($InputData_1_->Keyword == "магаз"))
 and
(($InputData_1_->Keyword == "полчаса"))
 and
(($InputData_1_->Keyword == "порой"))
 and
(($InputData_1_->Keyword == "теряйте"))
 and
(($InputData_1_->Keyword == "теряюсь"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-250";
}
//rule_1-251
if (
(($InputData_1_->Keyword == "взял"))
 and
(($InputData_1_->Keyword == "вопрос"))
 and
(($InputData_1_->Keyword == "нету"))
 and
(($InputData_1_->Keyword == "ними"))
 and
(($InputData_1_->Keyword == "проверил"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-251";
}
//rule_4-146
if (
(($InputData_1_->Keyword == "изнасилую"))
 and
(($InputData_1_->Keyword == "тебя"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-146";
}
//rule_1-252
if (
(($InputData_1_->Keyword == "завтра"))
 and
(($InputData_1_->Keyword == "нибудь"))
 and
(($InputData_1_->Keyword == "отключаюсь"))
 and
(($InputData_1_->Keyword == "помню"))
 and
(($InputData_1_->Keyword == "решим"))
 and
(($InputData_1_->Keyword == "счас"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-252";
}
//rule_1-253
if (
(($InputData_1_->Keyword == "завтра"))
 and
(($InputData_1_->Keyword == "надо"))
 and
(($InputData_1_->Keyword == "спать"))
 and
(($InputData_1_->Keyword == "счас"))
 and
(($InputData_1_->Keyword == "тока"))
 and
(($InputData_1_->Keyword == "шуми"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-253";
}
//rule_1-254
if (
(($InputData_1_->Keyword == "адрес"))
 and
(($InputData_1_->Keyword == "вторые"))
 and
(($InputData_1_->Keyword == "реально"))
 and
(($InputData_1_->Keyword == "клад"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-254";
}
//rule_1-255
if (
(($InputData_1_->Keyword == "соли"))
 and
(($InputData_1_->Keyword == "нет"))
 and
(($InputData_1_->Keyword == "ест"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-255";
}
//rule_1-256
if (
(($InputData_1_->Keyword == "мягкий"))
 and
(($InputData_1_->Keyword == "долгий"))
 and
(($InputData_1_->Keyword == "количество"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-256";
}
//rule_3-82
if (
(($InputData_1_->Keyword == "сумм"))
 and
(($InputData_1_->Keyword == "успешно"))
 and
(($InputData_1_->Keyword == "logo.ru"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-82";
}
//rule_3-83
if (
(($InputData_1_->Keyword == "покупка"))
 and
(($InputData_1_->Keyword == "сумм"))
 and
(($InputData_1_->Keyword == "выполнен"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-83";
}
//rule_3-84
if (
(($InputData_1_->Keyword == "клиент"))
 and
(($InputData_1_->Keyword == "сбербанк"))
 and
(($InputData_1_->Keyword == "справки"))
 and
(($InputData_1_->Keyword == "срочно"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-84";
}
//rule_3-85
if (
(($InputData_1_->Keyword == "platej"))
 and
(($InputData_1_->Keyword == "prinyat"))
 and
(($InputData_1_->Keyword == "obrabotku"))
 and
(($InputData_1_->Keyword == "ojidaite"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-85";
}
//rule_3-86
if (
(($InputData_1_->Keyword == "personal"))
 and
(($InputData_1_->Keyword == "popolneniya"))
 and
(($InputData_1_->Keyword == "login"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-86";
}
//rule_3-87
if (
(($InputData_1_->Keyword == "уведомление"))
 and
(($InputData_1_->Keyword == "iphone"))
 and
(($InputData_1_->Keyword == "location"))
 and
(($InputData_1_->Keyword == "обнаружен"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-87";
}
//rule_3-88
if (
(($InputData_1_->Keyword == "уведомление"))
 and
(($InputData_1_->Keyword == "iphone"))
 and
(($InputData_1_->Keyword == "найти"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-88";
}
//rule_3-89
if (
(($InputData_1_->Keyword == "platej"))
 and
(($InputData_1_->Keyword == "prinyat"))
 and
(($InputData_1_->Keyword == "obrabotku"))
 and
(($InputData_1_->Keyword == "bank"))
){
 $OutPut_1_ = new OutPut_1;
 $OutPut_1_->Init();
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-89";
}
?>
