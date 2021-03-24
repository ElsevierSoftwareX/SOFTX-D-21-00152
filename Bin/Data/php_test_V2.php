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
((strpos($InputData_1_->Keyword, "гулящая") !== false))
 and
((strpos($InputData_1_->Keyword, "упала") !== false))
 and
((strpos($InputData_1_->Keyword, "шалава") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-1";
}
//rule_3-2
if (
((strpos($InputData_1_->Keyword, "8800-500-01-01") !== false))
 and
((strpos($InputData_1_->Keyword, "справка") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-2";
}
//rule_1-1
if (
((strpos($InputData_1_->Keyword, "токо") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-1";
}
//rule_4-2
if (
((strpos($InputData_1_->Keyword, "маменькин") !== false))
 and
((strpos($InputData_1_->Keyword, "молодой") !== false))
 and
((strpos($InputData_1_->Keyword, "ноющий") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-2";
}
//rule_4-3
if (
((strpos($InputData_1_->Keyword, "блудная") !== false))
 and
((strpos($InputData_1_->Keyword, "нагулялась") !== false))
 and
((strpos($InputData_1_->Keyword, "овца") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-3";
}
//rule_4-4
if (
((strpos($InputData_1_->Keyword, "баба-мужик") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-4";
}
//rule_1-2
if (
((strpos($InputData_1_->Keyword, "1п+1п=2п") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-2";
}
//rule_1-3
if (
((strpos($InputData_1_->Keyword, "1п-500") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-3";
}
//rule_1-4
if (
((strpos($InputData_1_->Keyword, "89320112866") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-4";
}
//rule_1-5
if (
((strpos($InputData_1_->Keyword, "ложи") !== false))
 and
((strpos($InputData_1_->Keyword, "сюда") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-5";
}
//rule_1-6
if (
((strpos($InputData_1_->Keyword, "9320112866") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-6";
}
//rule_4-5
if (
((strpos($InputData_1_->Keyword, "стремотой") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-5";
}
//rule_4-6
if (
((strpos($InputData_1_->Keyword, "развод") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-6";
}
//rule_4-7
if (
((strpos($InputData_1_->Keyword, "сменить") !== false))
 and
((strpos($InputData_1_->Keyword, "теперь") !== false))
 and
((strpos($InputData_1_->Keyword, "фамилию") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-7";
}
//rule_4-8
if (
((strpos($InputData_1_->Keyword, "трэш") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-8";
}
//rule_4-9
if (
((strpos($InputData_1_->Keyword, "отстойный") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-9";
}
//rule_4-10
if (
((strpos($InputData_1_->Keyword, "скинется") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-10";
}
//rule_4-11
if (
((strpos($InputData_1_->Keyword, "мозгов") !== false))
 and
((strpos($InputData_1_->Keyword, "навозных") !== false))
 and
((strpos($InputData_1_->Keyword, "шалавистой") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-11";
}
//rule_4-12
if (
((strpos($InputData_1_->Keyword, "актёришка") !== false))
 and
((strpos($InputData_1_->Keyword, "аплодисментами") !== false))
 and
((strpos($InputData_1_->Keyword, "долбанный") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-12";
}
//rule_4-13
if (
((strpos($InputData_1_->Keyword, "злючая") !== false))
 and
((strpos($InputData_1_->Keyword, "курить") !== false))
 and
((strpos($InputData_1_->Keyword, "мамашка") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-13";
}
//rule_4-14
if (
((strpos($InputData_1_->Keyword, "висят") !== false))
 and
((strpos($InputData_1_->Keyword, "груди") !== false))
 and
((strpos($InputData_1_->Keyword, "когда") !== false))
 and
((strpos($InputData_1_->Keyword, "нравится") !== false))
 and
((strpos($InputData_1_->Keyword, "спаниеля") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-14";
}
//rule_4-15
if (
((strpos($InputData_1_->Keyword, "шалава") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-15";
}
//rule_4-16
if (
((strpos($InputData_1_->Keyword, "агрессией") !== false))
 and
((strpos($InputData_1_->Keyword, "любовницы") !== false))
 and
((strpos($InputData_1_->Keyword, "позорной") !== false))
 and
((strpos($InputData_1_->Keyword, "шизофренической") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-16";
}
//rule_4-17
if (
((strpos($InputData_1_->Keyword, "душат") !== false))
 and
((strpos($InputData_1_->Keyword, "послал") !== false))
 and
((strpos($InputData_1_->Keyword, "посылают") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-17";
}
//rule_4-18
if (
((strpos($InputData_1_->Keyword, "брошенка") !== false))
 and
((strpos($InputData_1_->Keyword, "гулящяя") !== false))
 and
((strpos($InputData_1_->Keyword, "разведёнка") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-18";
}
//rule_4-19
if (
((strpos($InputData_1_->Keyword, "жесть") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-19";
}
//rule_4-20
if (
((strpos($InputData_1_->Keyword, "лысой") !== false))
 and
((strpos($InputData_1_->Keyword, "пиздёнкой") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-20";
}
//rule_4-21
if (
((strpos($InputData_1_->Keyword, "мамочке-шалавочке") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-21";
}
//rule_4-22
if (
((strpos($InputData_1_->Keyword, "тварь") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-22";
}
//rule_4-23
if (
((strpos($InputData_1_->Keyword, "мамочка-ш") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-23";
}
//rule_4-24
if (
((strpos($InputData_1_->Keyword, "жопе") !== false))
 and
((strpos($InputData_1_->Keyword, "пиздёнку") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-24";
}
//rule_4-25
if (
((strpos($InputData_1_->Keyword, "бессовестная") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-25";
}
//rule_4-26
if (
((strpos($InputData_1_->Keyword, "секс") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-26";
}
//rule_4-27
if (
((strpos($InputData_1_->Keyword, "мразь") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-27";
}
//rule_4-28
if (
((strpos($InputData_1_->Keyword, "блочишь") !== false))
 and
((strpos($InputData_1_->Keyword, "женихов") !== false))
 and
((strpos($InputData_1_->Keyword, "подыскиваем") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-28";
}
//rule_4-29
if (
((strpos($InputData_1_->Keyword, "дать") !== false))
 and
((strpos($InputData_1_->Keyword, "женщине") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-29";
}
//rule_4-30
if (
((strpos($InputData_1_->Keyword, "гонется") !== false))
 and
((strpos($InputData_1_->Keyword, "деньгами") !== false))
 and
((strpos($InputData_1_->Keyword, "потаскуха") !== false))
 and
((strpos($InputData_1_->Keyword, "старикашке") !== false))
 and
((strpos($InputData_1_->Keyword, "чужими") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-30";
}
//rule_4-31
if (
((strpos($InputData_1_->Keyword, "обострение") !== false))
 and
((strpos($InputData_1_->Keyword, "толстозадая") !== false))
 and
((strpos($InputData_1_->Keyword, "шизофреников") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-31";
}
//rule_4-32
if (
((strpos($InputData_1_->Keyword, "мужик") !== false))
 and
((strpos($InputData_1_->Keyword, "непорядочной") !== false))
 and
((strpos($InputData_1_->Keyword, "развестись") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-32";
}
//rule_4-33
if (
((strpos($InputData_1_->Keyword, "обострение") !== false))
 and
((strpos($InputData_1_->Keyword, "признаки") !== false))
 and
((strpos($InputData_1_->Keyword, "ревности") !== false))
 and
((strpos($InputData_1_->Keyword, "шалавой") !== false))
 and
((strpos($InputData_1_->Keyword, "шизофрении") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-33";
}
//rule_4-34
if (
((strpos($InputData_1_->Keyword, "камера") !== false))
 and
((strpos($InputData_1_->Keyword, "лысая") !== false))
 and
((strpos($InputData_1_->Keyword, "пиздёнка") !== false))
 and
((strpos($InputData_1_->Keyword, "скрытая") !== false))
 and
((strpos($InputData_1_->Keyword, "снимала") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-34";
}
//rule_4-35
if (
((strpos($InputData_1_->Keyword, "мамочке-шалавочке") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-35";
}
//rule_4-36
if (
((strpos($InputData_1_->Keyword, "брошенка") !== false))
 and
((strpos($InputData_1_->Keyword, "разведёнкой") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-36";
}
//rule_4-37
if (
((strpos($InputData_1_->Keyword, "брошенки") !== false))
 and
((strpos($InputData_1_->Keyword, "любовница") !== false))
 and
((strpos($InputData_1_->Keyword, "позорище") !== false))
 and
((strpos($InputData_1_->Keyword, "тёлка") !== false))
 and
((strpos($InputData_1_->Keyword, "шалава") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-37";
}
//rule_4-38
if (
((strpos($InputData_1_->Keyword, "бывший") !== false))
 and
((strpos($InputData_1_->Keyword, "забудь") !== false))
 and
((strpos($InputData_1_->Keyword, "опрокинул") !== false))
 and
((strpos($InputData_1_->Keyword, "потаскушечье") !== false))
 and
((strpos($InputData_1_->Keyword, "разводе") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-38";
}
//rule_4-39
if (
((strpos($InputData_1_->Keyword, "брошенка") !== false))
 and
((strpos($InputData_1_->Keyword, "никчёмности") !== false))
 and
((strpos($InputData_1_->Keyword, "отвращения") !== false))
 and
((strpos($InputData_1_->Keyword, "разведёнка") !== false))
 and
((strpos($InputData_1_->Keyword, "сдохла") !== false))
 and
((strpos($InputData_1_->Keyword, "шалавистая") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-39";
}
//rule_4-40
if (
((strpos($InputData_1_->Keyword, "заслужила") !== false))
 and
((strpos($InputData_1_->Keyword, "захлебнулась") !== false))
 and
((strpos($InputData_1_->Keyword, "злости") !== false))
 and
((strpos($InputData_1_->Keyword, "изменить") !== false))
 and
((strpos($InputData_1_->Keyword, "никчёмное") !== false))
 and
((strpos($InputData_1_->Keyword, "ревности") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-40";
}
//rule_4-41
if (
((strpos($InputData_1_->Keyword, "безудержный") !== false))
 and
((strpos($InputData_1_->Keyword, "месть") !== false))
 and
((strpos($InputData_1_->Keyword, "кайфово") !== false))
 and
((strpos($InputData_1_->Keyword, "потаскушка") !== false))
 and
((strpos($InputData_1_->Keyword, "приятненько") !== false))
 and
((strpos($InputData_1_->Keyword, "секс") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-41";
}
//rule_4-42
if (
((strpos($InputData_1_->Keyword, "выносишь") !== false))
 and
((strpos($InputData_1_->Keyword, "отвыкни") !== false))
 and
((strpos($InputData_1_->Keyword, "звонишь") !== false))
 and
((strpos($InputData_1_->Keyword, "мозги") !== false))
 and
((strpos($InputData_1_->Keyword, "обманывают") !== false))
 and
((strpos($InputData_1_->Keyword, "потаскушка") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-42";
}
//rule_4-43
if (
((strpos($InputData_1_->Keyword, "плевать") !== false))
 and
((strpos($InputData_1_->Keyword, "потаскушка") !== false))
 and
((strpos($InputData_1_->Keyword, "тупой") !== false))
 and
((strpos($InputData_1_->Keyword, "хватит") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-43";
}
//rule_4-44
if (
((strpos($InputData_1_->Keyword, "близости") !== false))
 and
((strpos($InputData_1_->Keyword, "бывший") !== false))
 and
((strpos($InputData_1_->Keyword, "интимной") !== false))
 and
((strpos($InputData_1_->Keyword, "шизофреничная") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-44";
}
//rule_4-45
if (
((strpos($InputData_1_->Keyword, "мамаша") !== false))
 and
((strpos($InputData_1_->Keyword, "отожгла") !== false))
 and
((strpos($InputData_1_->Keyword, "отчимом") !== false))
 and
((strpos($InputData_1_->Keyword, "старикашка") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
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
 $OutPut_1_->MesStatus == "ошибка";
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
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-4";
}
//rule_3-5
if (
((strpos($InputData_1_->Keyword, "icloud.com.lfind.me") !== false))
 and
((strpos($InputData_1_->Keyword, "местоположении") !== false))
 and
((strpos($InputData_1_->Keyword, "обнаружен") !== false))
 and
((strpos($InputData_1_->Keyword, "последнем") !== false))
 and
((strpos($InputData_1_->Keyword, "сегодня") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
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
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-6";
}
//rule_3-7
if (
((strpos($InputData_1_->Keyword, "icloud.com.ru-en.info") !== false))
 and
((strpos($InputData_1_->Keyword, "информация") !== false))
 and
((strpos($InputData_1_->Keyword, "местоположении") !== false))
 and
((strpos($InputData_1_->Keyword, "обнаружен") !== false))
 and
((strpos($InputData_1_->Keyword, "сегодня") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-7";
}
//rule_3-8
if (
((strpos($InputData_1_->Keyword, "3aблoкиpoвaha") !== false))
 and
((strpos($InputData_1_->Keyword, "бahkobckaя") !== false))
 and
((strpos($InputData_1_->Keyword, "кapta") !== false))
 and
((strpos($InputData_1_->Keyword, "8(800)3335554") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-8";
}
//rule_3-9
if (
((strpos($InputData_1_->Keyword, "3aблoкиpoвaha") !== false))
 and
((strpos($InputData_1_->Keyword, "бahkobckaя") !== false))
 and
((strpos($InputData_1_->Keyword, "кapta") !== false))
 and
((strpos($InputData_1_->Keyword, "8(800)333-86-19") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-9";
}
//rule_3-10
if (
((strpos($InputData_1_->Keyword, "88001003333") !== false))
 and
((strpos($InputData_1_->Keyword, "bimbank") !== false))
 and
((strpos($InputData_1_->Keyword, "списание") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-10";
}
//rule_3-11
if (
((strpos($InputData_1_->Keyword, "8(800)511-09-80") !== false))
 and
((strpos($InputData_1_->Keyword, "binb") !== false))
 and
((strpos($InputData_1_->Keyword, "cписание") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-11";
}
//rule_3-12
if (
((strpos($InputData_1_->Keyword, "8(800)333-85-78") !== false))
 and
((strpos($InputData_1_->Keyword, "binb") !== false))
 and
((strpos($InputData_1_->Keyword, "заказ") !== false))
 and
((strpos($InputData_1_->Keyword, "оплачен") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-12";
}
//rule_3-13
if (
((strpos($InputData_1_->Keyword, "8(800)333-85-78") !== false))
 and
((strpos($InputData_1_->Keyword, "binb") !== false))
 and
((strpos($InputData_1_->Keyword, "платеж") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-13";
}
//rule_3-14
if (
((strpos($InputData_1_->Keyword, "88005054928") !== false))
 and
((strpos($InputData_1_->Keyword, "binbank") !== false))
 and
((strpos($InputData_1_->Keyword, "заказ") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
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
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_2-1";
}
//rule_2-2
if (
((strpos($InputData_1_->Keyword, "cкачай") !== false))
 and
((strpos($InputData_1_->Keyword, "http://vk.cc") !== false))
 and
((strpos($InputData_1_->Keyword, "бонусов") !== false))
 and
((strpos($InputData_1_->Keyword, "получи") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_2-2";
}
//rule_2-3
if (
((strpos($InputData_1_->Keyword, "cкачай") !== false))
 and
((strpos($InputData_1_->Keyword, "http://www.goo.gl") !== false))
 and
((strpos($InputData_1_->Keyword, "бонусов") !== false))
 and
((strpos($InputData_1_->Keyword, "получи") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_2-3";
}
//rule_2-4
if (
((strpos($InputData_1_->Keyword, "cкачай") !== false))
 and
((strpos($InputData_1_->Keyword, "http://www.vk.cc") !== false))
 and
((strpos($InputData_1_->Keyword, "бонусов") !== false))
 and
((strpos($InputData_1_->Keyword, "получи") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
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
 $OutPut_1_->MesStatus == "ошибка";
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
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-16";
}
//rule_1-7
if (
((strpos($InputData_1_->Keyword, "rush") !== false))
 and
((strpos($InputData_1_->Keyword, "ultra") !== false))
 and
((strpos($InputData_1_->Keyword, "киви") !== false))
 and
((strpos($InputData_1_->Keyword, "легальный") !== false))
 and
((strpos($InputData_1_->Keyword, "микс") !== false))
 and
((strpos($InputData_1_->Keyword, "пробы") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-7";
}
//rule_1-8
if (
((strpos($InputData_1_->Keyword, "rush") !== false))
 and
((strpos($InputData_1_->Keyword, "ultra") !== false))
 and
((strpos($InputData_1_->Keyword, "легальный") !== false))
 and
((strpos($InputData_1_->Keyword, "микс") !== false))
 and
((strpos($InputData_1_->Keyword, "пробы") !== false))
 and
((strpos($InputData_1_->Keyword, "клады") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-8";
}
//rule_1-9
if (
((strpos($InputData_1_->Keyword, "plastyr") !== false))
 and
((strpos($InputData_1_->Keyword, "polozhi") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-9";
}
//rule_3-17
if (
((strpos($InputData_1_->Keyword, "cpoчнo") !== false))
 and
((strpos($InputData_1_->Keyword, "cвяжитecь") !== false))
 and
((strpos($InputData_1_->Keyword, "kapтe") !== false))
 and
((strpos($InputData_1_->Keyword, "oпepaции") !== false))
 and
((strpos($InputData_1_->Keyword, "пpиocтaнoвлeны") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-17";
}
//rule_1-10
if (
((strpos($InputData_1_->Keyword, "pharmbar.com") !== false))
 and
((strpos($InputData_1_->Keyword, "pharmbar.net") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
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
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-18";
}
//rule_3-19
if (
((strpos($InputData_1_->Keyword, "raiffayzen") !== false))
 and
((strpos($InputData_1_->Keyword, "списание") !== false))
 and
((strpos($InputData_1_->Keyword, "справки:") !== false))
 and
((strpos($InputData_1_->Keyword, "сумму") !== false))
 and
((strpos($InputData_1_->Keyword, "успешно") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-19";
}
//rule_3-20
if (
((strpos($InputData_1_->Keyword, "raiffeisen") !== false))
 and
((strpos($InputData_1_->Keyword, "списание") !== false))
 and
((strpos($InputData_1_->Keyword, "справки:") !== false))
 and
((strpos($InputData_1_->Keyword, "сумму") !== false))
 and
((strpos($InputData_1_->Keyword, "успешно") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-20";
}
//rule_2-5
if (
((strpos($InputData_1_->Keyword, "party") !== false))
 and
((strpos($InputData_1_->Keyword, "sexy") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
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
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-21";
}
//rule_3-22
if (
((strpos($InputData_1_->Keyword, "sovkom") !== false))
 and
((strpos($InputData_1_->Keyword, "списание") !== false))
 and
((strpos($InputData_1_->Keyword, "сумму") !== false))
 and
((strpos($InputData_1_->Keyword, "успешно") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
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
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-23";
}
//rule_3-24
if (
((strpos($InputData_1_->Keyword, "klient") !== false))
 and
((strpos($InputData_1_->Keyword, "sberbank") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
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
 $OutPut_1_->MesStatus == "ошибка";
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
 $OutPut_1_->MesStatus == "ошибка";
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
 $OutPut_1_->MesStatus == "ошибка";
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
 $OutPut_1_->MesStatus == "ошибка";
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
 $OutPut_1_->MesStatus == "ошибка";
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
 $OutPut_1_->MesStatus == "ошибка";
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
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-31";
}
//rule_3-32
if (
((strpos($InputData_1_->Keyword, "bankovskaya") !== false))
 and
((strpos($InputData_1_->Keyword, "spravki") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-32";
}
//rule_2-6
if (
((strpos($InputData_1_->Keyword, "http://bit.ly") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
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
 $OutPut_1_->MesStatus == "ошибка";
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
 $OutPut_1_->MesStatus == "ошибка";
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
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-35";
}
//rule_3-36
if (
((strpos($InputData_1_->Keyword, "заблокирована") !== false))
 and
((strpos($InputData_1_->Keyword, "справки") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
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
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-37";
}
//rule_4-46
if (
((strpos($InputData_1_->Keyword, "разведётся") !== false))
 and
((strpos($InputData_1_->Keyword, "счастливы") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-46";
}
//rule_4-47
if (
((strpos($InputData_1_->Keyword, "вибратор") !== false))
 and
((strpos($InputData_1_->Keyword, "женщина") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-47";
}
//rule_4-48
if (
((strpos($InputData_1_->Keyword, "горами") !== false))
 and
((strpos($InputData_1_->Keyword, "развод") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-48";
}
//rule_4-49
if (
((strpos($InputData_1_->Keyword, "рога") !== false))
 and
((strpos($InputData_1_->Keyword, "сами") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-49";
}
//rule_4-50
if (
((strpos($InputData_1_->Keyword, "гулящая") !== false))
 and
((strpos($InputData_1_->Keyword, "жена") !== false))
 and
((strpos($InputData_1_->Keyword, "корыстная") !== false))
 and
((strpos($InputData_1_->Keyword, "мужчины") !== false))
 and
((strpos($InputData_1_->Keyword, "неблагодарная") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-50";
}
//rule_4-51
if (
((strpos($InputData_1_->Keyword, "бывших") !== false))
 and
((strpos($InputData_1_->Keyword, "всегда") !== false))
 and
((strpos($InputData_1_->Keyword, "любовников") !== false))
 and
((strpos($InputData_1_->Keyword, "мужья") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-51";
}
//rule_4-52
if (
((strpos($InputData_1_->Keyword, "тачка") !== false))
 and
((strpos($InputData_1_->Keyword, "твоя") !== false))
 and
((strpos($InputData_1_->Keyword, "трэш") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-52";
}
//rule_4-53
if (
((strpos($InputData_1_->Keyword, "любовном") !== false))
 and
((strpos($InputData_1_->Keyword, "напополам") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-53";
}
//rule_3-38
if (
((strpos($InputData_1_->Keyword, "банковская") !== false))
 and
((strpos($InputData_1_->Keyword, "ваша") !== false))
 and
((strpos($InputData_1_->Keyword, "заблокирована") !== false))
 and
((strpos($InputData_1_->Keyword, "карта") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-38";
}
//rule_3-39
if (
((strpos($InputData_1_->Keyword, "заявка") !== false))
 and
((strpos($InputData_1_->Keyword, "отмены") !== false))
 and
((strpos($InputData_1_->Keyword, "платья") !== false))
 and
((strpos($InputData_1_->Keyword, "покупку") !== false))
 and
((strpos($InputData_1_->Keyword, "принята") !== false))
 and
((strpos($InputData_1_->Keyword, "стоимостью") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-39";
}
//rule_3-40
if (
((strpos($InputData_1_->Keyword, "верните") !== false))
 and
((strpos($InputData_1_->Keyword, "деньги") !== false))
 and
((strpos($InputData_1_->Keyword, "консультацию") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-40";
}
//rule_3-41
if (
((strpos($InputData_1_->Keyword, "банковская") !== false))
 and
((strpos($InputData_1_->Keyword, "ваша") !== false))
 and
((strpos($InputData_1_->Keyword, "заблокирована") !== false))
 and
((strpos($InputData_1_->Keyword, "карта") !== false))
 and
((strpos($InputData_1_->Keyword, "тел") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-41";
}
//rule_3-42
if (
((strpos($InputData_1_->Keyword, "ваша") !== false))
 and
((strpos($InputData_1_->Keyword, "заблокирована") !== false))
 and
((strpos($InputData_1_->Keyword, "справки") !== false))
 and
((strpos($InputData_1_->Keyword, "карта") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-42";
}
//rule_4-54
if (
((strpos($InputData_1_->Keyword, "гулящая") !== false))
 and
((strpos($InputData_1_->Keyword, "жаловаться") !== false))
 and
((strpos($InputData_1_->Keyword, "женщина") !== false))
 and
((strpos($InputData_1_->Keyword, "изменять") !== false))
 and
((strpos($InputData_1_->Keyword, "раздвигать") !== false))
 and
((strpos($InputData_1_->Keyword, "шалава") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-54";
}
//rule_4-55
if (
((strpos($InputData_1_->Keyword, "акстись") !== false))
 and
((strpos($InputData_1_->Keyword, "бывшего") !== false))
 and
((strpos($InputData_1_->Keyword, "дуууурааааа") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-55";
}
//rule_4-56
if (
((strpos($InputData_1_->Keyword, "бросили") !== false))
 and
((strpos($InputData_1_->Keyword, "суёшь") !== false))
 and
((strpos($InputData_1_->Keyword, "чужие") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-56";
}
//rule_3-43
if (
((strpos($InputData_1_->Keyword, "банковские") !== false))
 and
((strpos($InputData_1_->Keyword, "временно") !== false))
 and
((strpos($InputData_1_->Keyword, "операции") !== false))
 and
((strpos($InputData_1_->Keyword, "приостановленны") !== false))
 and
((strpos($InputData_1_->Keyword, "справки") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-43";
}
//rule_3-44
if (
((strpos($InputData_1_->Keyword, "www.bit.ly") !== false))
 and
((strpos($InputData_1_->Keyword, "получили") !== false))
 and
((strpos($InputData_1_->Keyword, "просмотреть") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-44";
}
//rule_3-45
if (
((strpos($InputData_1_->Keyword, "bit.ly") !== false))
 and
((strpos($InputData_1_->Keyword, "mms") !== false))
 and
((strpos($InputData_1_->Keyword, "получили") !== false))
 and
((strpos($InputData_1_->Keyword, "просмотреть") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-45";
}
//rule_3-46
if (
((strpos($InputData_1_->Keyword, "goo.gl") !== false))
 and
((strpos($InputData_1_->Keyword, "mms") !== false))
 and
((strpos($InputData_1_->Keyword, "получили") !== false))
 and
((strpos($InputData_1_->Keyword, "просмотреть") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-46";
}
//rule_3-47
if (
((strpos($InputData_1_->Keyword, "выполнен") !== false))
 and
((strpos($InputData_1_->Keyword, "звоните") !== false))
 and
((strpos($InputData_1_->Keyword, "перевод") !== false))
 and
((strpos($InputData_1_->Keyword, "производили") !== false))
 and
((strpos($InputData_1_->Keyword, "сумма") !== false))
 and
((strpos($InputData_1_->Keyword, "транзакцию") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-47";
}
//rule_4-57
if (
((strpos($InputData_1_->Keyword, "гулящая") !== false))
 and
((strpos($InputData_1_->Keyword, "женщина") !== false))
 and
((strpos($InputData_1_->Keyword, "нужная") !== false))
 and
((strpos($InputData_1_->Keyword, "падшая") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-57";
}
//rule_4-58
if (
((strpos($InputData_1_->Keyword, "быть") !== false))
 and
((strpos($InputData_1_->Keyword, "второсортной") !== false))
 and
((strpos($InputData_1_->Keyword, "любовницей") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-58";
}
//rule_4-59
if (
((strpos($InputData_1_->Keyword, "дурой") !== false))
 and
((strpos($InputData_1_->Keyword, "конченной") !== false))
 and
((strpos($InputData_1_->Keyword, "мразью") !== false))
 and
((strpos($InputData_1_->Keyword, "наконец") !== false))
 and
((strpos($InputData_1_->Keyword, "отталкиваешь") !== false))
 and
((strpos($InputData_1_->Keyword, "слепой") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-59";
}
//rule_1-11
if (
((strpos($InputData_1_->Keyword, "клады") !== false))
 and
((strpos($InputData_1_->Keyword, "курительные") !== false))
 and
((strpos($InputData_1_->Keyword, "легал") !== false))
 and
((strpos($InputData_1_->Keyword, "пробы") !== false))
 and
((strpos($InputData_1_->Keyword, "смеси-1п-500") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-11";
}
//rule_1-12
if (
((strpos($InputData_1_->Keyword, "1п-500") !== false))
 and
((strpos($InputData_1_->Keyword, "rash") !== false))
 and
((strpos($InputData_1_->Keyword, "клады") !== false))
 and
((strpos($InputData_1_->Keyword, "легал") !== false))
 and
((strpos($InputData_1_->Keyword, "микс") !== false))
 and
((strpos($InputData_1_->Keyword, "пробы") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-12";
}
//rule_1-13
if (
((strpos($InputData_1_->Keyword, "1п-500") !== false))
 and
((strpos($InputData_1_->Keyword, "курительный") !== false))
 and
((strpos($InputData_1_->Keyword, "легальный") !== false))
 and
((strpos($InputData_1_->Keyword, "микс") !== false))
 and
((strpos($InputData_1_->Keyword, "пробы") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-13";
}
//rule_1-14
if (
((strpos($InputData_1_->Keyword, "1пак-500") !== false))
 and
((strpos($InputData_1_->Keyword, "rash") !== false))
 and
((strpos($InputData_1_->Keyword, "клады") !== false))
 and
((strpos($InputData_1_->Keyword, "легальный") !== false))
 and
((strpos($InputData_1_->Keyword, "микс") !== false))
 and
((strpos($InputData_1_->Keyword, "пробники") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-14";
}
//rule_4-60
if (
((strpos($InputData_1_->Keyword, "алкогольного") !== false))
 and
((strpos($InputData_1_->Keyword, "воспитанием") !== false))
 and
((strpos($InputData_1_->Keyword, "занялась") !== false))
 and
((strpos($InputData_1_->Keyword, "опьянения") !== false))
 and
((strpos($InputData_1_->Keyword, "постоянно") !== false))
 and
((strpos($InputData_1_->Keyword, "состоянии") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-60";
}
//rule_4-61
if (
((strpos($InputData_1_->Keyword, "страшные") !== false))
 and
((strpos($InputData_1_->Keyword, "сучка") !== false))
 and
((strpos($InputData_1_->Keyword, "трепать") !== false))
 and
((strpos($InputData_1_->Keyword, "умрешь") !== false))
 and
((strpos($InputData_1_->Keyword, "язык") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-61";
}
//rule_4-62
if (
((strpos($InputData_1_->Keyword, "любовница") !== false))
 and
((strpos($InputData_1_->Keyword, "нужду") !== false))
 and
((strpos($InputData_1_->Keyword, "справлять") !== false))
 and
((strpos($InputData_1_->Keyword, "точности") !== false))
 and
((strpos($InputData_1_->Keyword, "туалет") !== false))
 and
((strpos($InputData_1_->Keyword, "чужой") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-62";
}
//rule_1-15
if (
((strpos($InputData_1_->Keyword, "ближайшее") !== false))
 and
((strpos($InputData_1_->Keyword, "еманжелинск") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-15";
}
//rule_1-16
if (
((strpos($InputData_1_->Keyword, "блин") !== false))
 and
((strpos($InputData_1_->Keyword, "забывай") !== false))
 and
((strpos($InputData_1_->Keyword, "понял") !== false))
 and
((strpos($InputData_1_->Keyword, "шуми") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-16";
}
//rule_1-17
if (
((strpos($InputData_1_->Keyword, "блин") !== false))
 and
((strpos($InputData_1_->Keyword, "было") !== false))
 and
((strpos($InputData_1_->Keyword, "вкрай") !== false))
 and
((strpos($InputData_1_->Keyword, "извини") !== false))
 and
((strpos($InputData_1_->Keyword, "магаз") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-17";
}
//rule_1-18
if (
((strpos($InputData_1_->Keyword, "блин") !== false))
 and
((strpos($InputData_1_->Keyword, "номер") !== false))
 and
((strpos($InputData_1_->Keyword, "пишу") !== false))
 and
((strpos($InputData_1_->Keyword, "спутал") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-18";
}
//rule_1-19
if (
((strpos($InputData_1_->Keyword, "блин") !== false))
 and
((strpos($InputData_1_->Keyword, "недождался") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-19";
}
//rule_1-20
if (
((strpos($InputData_1_->Keyword, "бажова") !== false))
 and
((strpos($InputData_1_->Keyword, "падик") !== false))
 and
((strpos($InputData_1_->Keyword, "ящиком") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-20";
}
//rule_1-21
if (
((strpos($InputData_1_->Keyword, "внизу") !== false))
 and
((strpos($InputData_1_->Keyword, "возле") !== false))
 and
((strpos($InputData_1_->Keyword, "крыльцо") !== false))
 and
((strpos($InputData_1_->Keyword, "магазин") !== false))
 and
((strpos($InputData_1_->Keyword, "ступени") !== false))
 and
((strpos($InputData_1_->Keyword, "уголком") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-21";
}
//rule_1-22
if (
((strpos($InputData_1_->Keyword, "слева") !== false))
 and
((strpos($InputData_1_->Keyword, "бажова") !== false))
 and
((strpos($InputData_1_->Keyword, "лампой") !== false))
 and
((strpos($InputData_1_->Keyword, "падик") !== false))
 and
((strpos($InputData_1_->Keyword, "проводами") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-22";
}
//rule_1-23
if (
((strpos($InputData_1_->Keyword, "барыг") !== false))
 and
((strpos($InputData_1_->Keyword, "дохуя") !== false))
 and
((strpos($InputData_1_->Keyword, "спортсмены") !== false))
 and
((strpos($InputData_1_->Keyword, "крепят") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-23";
}
//rule_1-24
if (
((strpos($InputData_1_->Keyword, "буландо") !== false))
 and
((strpos($InputData_1_->Keyword, "падик") !== false))
 and
((strpos($InputData_1_->Keyword, "слево") !== false))
 and
((strpos($InputData_1_->Keyword, "электокаробке") !== false))
 and
((strpos($InputData_1_->Keyword, "этаж") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-24";
}
//rule_1-25
if (
((strpos($InputData_1_->Keyword, "буландо") !== false))
 and
((strpos($InputData_1_->Keyword, "железная") !== false))
 and
((strpos($InputData_1_->Keyword, "левой") !== false))
 and
((strpos($InputData_1_->Keyword, "лестница") !== false))
 and
((strpos($InputData_1_->Keyword, "падик") !== false))
 and
((strpos($InputData_1_->Keyword, "рельсой") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-25";
}
//rule_1-26
if (
((strpos($InputData_1_->Keyword, "буландо") !== false))
 and
((strpos($InputData_1_->Keyword, "вторая") !== false))
 and
((strpos($InputData_1_->Keyword, "домофон") !== false))
 and
((strpos($InputData_1_->Keyword, "падике") !== false))
 and
((strpos($InputData_1_->Keyword, "труба") !== false))
 and
((strpos($InputData_1_->Keyword, "утеплителем") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-26";
}
//rule_1-27
if (
((strpos($InputData_1_->Keyword, "буландо") !== false))
 and
((strpos($InputData_1_->Keyword, "падик") !== false))
 and
((strpos($InputData_1_->Keyword, "этаж") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-27";
}
//rule_1-28
if (
((strpos($InputData_1_->Keyword, "буландо") !== false))
 and
((strpos($InputData_1_->Keyword, "квартира") !== false))
 and
((strpos($InputData_1_->Keyword, "подьезд") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-28";
}
//rule_1-29
if (
((strpos($InputData_1_->Keyword, "ебнулся") !== false))
 and
((strpos($InputData_1_->Keyword, "ладно") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-29";
}
//rule_1-30
if (
((strpos($InputData_1_->Keyword, "внизу") !== false))
 and
((strpos($InputData_1_->Keyword, "заходиш") !== false))
 and
((strpos($InputData_1_->Keyword, "падик") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-30";
}
//rule_1-31
if (
((strpos($InputData_1_->Keyword, "плакат") !== false))
 and
((strpos($InputData_1_->Keyword, "посуда") !== false))
 and
((strpos($InputData_1_->Keyword, "справого") !== false))
 and
((strpos($InputData_1_->Keyword, "торца") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-31";
}
//rule_1-32
if (
((strpos($InputData_1_->Keyword, "желтый") !== false))
 and
((strpos($InputData_1_->Keyword, "большая") !== false))
 and
((strpos($InputData_1_->Keyword, "вывеска") !== false))
 and
((strpos($InputData_1_->Keyword, "магазин") !== false))
 and
((strpos($InputData_1_->Keyword, "слон") !== false))
 and
((strpos($InputData_1_->Keyword, "справа") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-32";
}
//rule_1-33
if (
((strpos($InputData_1_->Keyword, "взади") !== false))
 and
((strpos($InputData_1_->Keyword, "падик") !== false))
 and
((strpos($InputData_1_->Keyword, "ящиком") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-33";
}
//rule_1-34
if (
((strpos($InputData_1_->Keyword, "другого") !== false))
 and
((strpos($InputData_1_->Keyword, "забереш") !== false))
 and
((strpos($InputData_1_->Keyword, "предложить") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-34";
}
//rule_1-35
if (
((strpos($InputData_1_->Keyword, "комент") !== false))
 and
((strpos($InputData_1_->Keyword, "ложи") !== false))
 and
((strpos($InputData_1_->Keyword, "придумай") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-35";
}
//rule_1-36
if (
((strpos($InputData_1_->Keyword, "будет") !== false))
 and
((strpos($InputData_1_->Keyword, "вассаби") !== false))
 and
((strpos($InputData_1_->Keyword, "ложи") !== false))
 and
((strpos($InputData_1_->Keyword, "молниеносно") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-36";
}
//rule_1-37
if (
((strpos($InputData_1_->Keyword, "киви") !== false))
 and
((strpos($InputData_1_->Keyword, "комент") !== false))
 and
((strpos($InputData_1_->Keyword, "ложи") !== false))
 and
((strpos($InputData_1_->Keyword, "мегафон") !== false))
 and
((strpos($InputData_1_->Keyword, "придумай") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-37";
}
//rule_1-38
if (
((strpos($InputData_1_->Keyword, "ложи") !== false))
 and
((strpos($InputData_1_->Keyword, "сюда") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-38";
}
//rule_1-39
if (
((strpos($InputData_1_->Keyword, "время") !== false))
 and
((strpos($InputData_1_->Keyword, "киви") !== false))
 and
((strpos($InputData_1_->Keyword, "комент") !== false))
 and
((strpos($InputData_1_->Keyword, "ложи") !== false))
 and
((strpos($InputData_1_->Keyword, "номер") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-39";
}
//rule_1-40
if (
((strpos($InputData_1_->Keyword, "pharmbar.org") !== false))
 and
((strpos($InputData_1_->Keyword, "фармыч") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-40";
}
//rule_4-63
if (
((strpos($InputData_1_->Keyword, "прилёт") !== false))
 and
((strpos($InputData_1_->Keyword, "развод") !== false))
 and
((strpos($InputData_1_->Keyword, "существовании") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-63";
}
//rule_4-64
if (
((strpos($InputData_1_->Keyword, "алкоголика") !== false))
 and
((strpos($InputData_1_->Keyword, "занялась") !== false))
 and
((strpos($InputData_1_->Keyword, "мужьям") !== false))
 and
((strpos($InputData_1_->Keyword, "постоянно") !== false))
 and
((strpos($InputData_1_->Keyword, "пьяном") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-64";
}
//rule_4-65
if (
((strpos($InputData_1_->Keyword, "бывший") !== false))
 and
((strpos($InputData_1_->Keyword, "горевал") !== false))
 and
((strpos($InputData_1_->Keyword, "гулять") !== false))
 and
((strpos($InputData_1_->Keyword, "долго") !== false))
 and
((strpos($InputData_1_->Keyword, "любовника") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-65";
}
//rule_1-41
if (
((strpos($InputData_1_->Keyword, "количество") !== false))
 and
((strpos($InputData_1_->Keyword, "увеличу") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-41";
}
//rule_1-42
if (
((strpos($InputData_1_->Keyword, "забрал") !== false))
 and
((strpos($InputData_1_->Keyword, "интерсвязи") !== false))
 and
((strpos($InputData_1_->Keyword, "сверху") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-42";
}
//rule_1-43
if (
((strpos($InputData_1_->Keyword, "весы") !== false))
 and
((strpos($InputData_1_->Keyword, "вешаеш") !== false))
 and
((strpos($InputData_1_->Keyword, "морковь") !== false))
 and
((strpos($InputData_1_->Keyword, "откуда") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-43";
}
//rule_1-44
if (
((strpos($InputData_1_->Keyword, "город") !== false))
 and
((strpos($InputData_1_->Keyword, "какой") !== false))
 and
((strpos($InputData_1_->Keyword, "хоть") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-44";
}
//rule_1-45
if (
((strpos($InputData_1_->Keyword, "было") !== false))
 and
((strpos($InputData_1_->Keyword, "какой") !== false))
 and
((strpos($InputData_1_->Keyword, "качество") !== false))
 and
((strpos($InputData_1_->Keyword, "почем") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-45";
}
//rule_1-46
if (
((strpos($InputData_1_->Keyword, "есть") !== false))
 and
((strpos($InputData_1_->Keyword, "куряк") !== false))
 and
((strpos($InputData_1_->Keyword, "много") !== false))
 and
((strpos($InputData_1_->Keyword, "распространяется") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-46";
}
//rule_1-47
if (
((strpos($InputData_1_->Keyword, "mn25f") !== false))
 and
((strpos($InputData_1_->Keyword, "долгий") !== false))
 and
((strpos($InputData_1_->Keyword, "легальный") !== false))
 and
((strpos($InputData_1_->Keyword, "махра") !== false))
 and
((strpos($InputData_1_->Keyword, "микс") !== false))
 and
((strpos($InputData_1_->Keyword, "мягкий") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-47";
}
//rule_1-48
if (
((strpos($InputData_1_->Keyword, "встал") !== false))
 and
((strpos($InputData_1_->Keyword, "отвечаю") !== false))
 and
((strpos($InputData_1_->Keyword, "пасибо") !== false))
 and
((strpos($InputData_1_->Keyword, "пропущенные") !== false))
 and
((strpos($InputData_1_->Keyword, "токо") !== false))
 and
((strpos($InputData_1_->Keyword, "шумят") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-48";
}
//rule_1-49
if (
((strpos($InputData_1_->Keyword, "аптекарьщик") !== false))
 and
((strpos($InputData_1_->Keyword, "аспирина") !== false))
 and
((strpos($InputData_1_->Keyword, "лишканул") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-49";
}
//rule_1-50
if (
((strpos($InputData_1_->Keyword, "аквамарин") !== false))
 and
((strpos($InputData_1_->Keyword, "есть") !== false))
 and
((strpos($InputData_1_->Keyword, "ложи") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-50";
}
//rule_1-51
if (
((strpos($InputData_1_->Keyword, "есть") !== false))
 and
((strpos($InputData_1_->Keyword, "курильная") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-51";
}
//rule_1-52
if (
((strpos($InputData_1_->Keyword, "адрес") !== false))
 and
((strpos($InputData_1_->Keyword, "быстро") !== false))
 and
((strpos($InputData_1_->Keyword, "есть") !== false))
 and
((strpos($InputData_1_->Keyword, "пребыстро") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-52";
}
//rule_1-53
if (
((strpos($InputData_1_->Keyword, "готовый") !== false))
 and
((strpos($InputData_1_->Keyword, "есть") !== false))
 and
((strpos($InputData_1_->Keyword, "клад") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-53";
}
//rule_4-66
if (
((strpos($InputData_1_->Keyword, "позор") !== false))
 and
((strpos($InputData_1_->Keyword, "женщина") !== false))
 and
((strpos($InputData_1_->Keyword, "жизнь") !== false))
 and
((strpos($InputData_1_->Keyword, "репутацией") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-66";
}
//rule_1-54
if (
((strpos($InputData_1_->Keyword, "адрес") !== false))
 and
((strpos($InputData_1_->Keyword, "бонусом") !== false))
 and
((strpos($InputData_1_->Keyword, "закладчик") !== false))
 and
((strpos($InputData_1_->Keyword, "отдам") !== false))
 and
((strpos($InputData_1_->Keyword, "положит") !== false))
 and
((strpos($InputData_1_->Keyword, "южнике") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-54";
}
//rule_1-55
if (
((strpos($InputData_1_->Keyword, "забереш") !== false))
 and
((strpos($InputData_1_->Keyword, "напиши") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-55";
}
//rule_1-56
if (
((strpos($InputData_1_->Keyword, "дальней") !== false))
 and
((strpos($InputData_1_->Keyword, "двери") !== false))
 and
((strpos($InputData_1_->Keyword, "зайди") !== false))
 and
((strpos($InputData_1_->Keyword, "напротив") !== false))
 and
((strpos($InputData_1_->Keyword, "ниша") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-56";
}
//rule_1-57
if (
((strpos($InputData_1_->Keyword, "верху") !== false))
 and
((strpos($InputData_1_->Keyword, "зайди") !== false))
 and
((strpos($InputData_1_->Keyword, "интерсвязи") !== false))
 and
((strpos($InputData_1_->Keyword, "посмотри") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-57";
}
//rule_1-58
if (
((strpos($InputData_1_->Keyword, "верху") !== false))
 and
((strpos($InputData_1_->Keyword, "есть") !== false))
 and
((strpos($InputData_1_->Keyword, "зайди") !== false))
 and
((strpos($InputData_1_->Keyword, "интерсвязи") !== false))
 and
((strpos($InputData_1_->Keyword, "ниче") !== false))
 and
((strpos($InputData_1_->Keyword, "посмотри") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-58";
}
//rule_4-67
if (
((strpos($InputData_1_->Keyword, "выносит") !== false))
 and
((strpos($InputData_1_->Keyword, "мозги") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-67";
}
//rule_1-59
if (
((strpos($InputData_1_->Keyword, "городом") !== false))
 and
((strpos($InputData_1_->Keyword, "готовые") !== false))
 and
((strpos($InputData_1_->Keyword, "клады") !== false))
 and
((strpos($InputData_1_->Keyword, "проб") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-59";
}
//rule_1-60
if (
((strpos($InputData_1_->Keyword, "записать") !== false))
 and
((strpos($InputData_1_->Keyword, "коменте") !== false))
 and
((strpos($InputData_1_->Keyword, "напиши") !== false))
 and
((strpos($InputData_1_->Keyword, "проблем") !== false))
 and
((strpos($InputData_1_->Keyword, "тебя") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-60";
}
//rule_1-61
if (
((strpos($InputData_1_->Keyword, "комент") !== false))
 and
((strpos($InputData_1_->Keyword, "придумай") !== false))
 and
((strpos($InputData_1_->Keyword, "свой") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-61";
}
//rule_1-62
if (
((strpos($InputData_1_->Keyword, "глупые") !== false))
 and
((strpos($InputData_1_->Keyword, "деятели") !== false))
 and
((strpos($InputData_1_->Keyword, "нужны") !== false))
 and
((strpos($InputData_1_->Keyword, "такие") !== false))
 and
((strpos($InputData_1_->Keyword, "чайки") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-62";
}
//rule_1-63
if (
((strpos($InputData_1_->Keyword, "были") !== false))
 and
((strpos($InputData_1_->Keyword, "переживай") !== false))
 and
((strpos($InputData_1_->Keyword, "тебе") !== false))
 and
((strpos($InputData_1_->Keyword, "успокойся") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-63";
}
//rule_1-64
if (
((strpos($InputData_1_->Keyword, "аквамарин") !== false))
 and
((strpos($InputData_1_->Keyword, "легальный") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-64";
}
//rule_1-65
if (
((strpos($InputData_1_->Keyword, "киви") !== false))
 and
((strpos($InputData_1_->Keyword, "ложи") !== false))
 and
((strpos($InputData_1_->Keyword, "могу") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-65";
}
//rule_1-66
if (
((strpos($InputData_1_->Keyword, "переживай") !== false))
 and
((strpos($InputData_1_->Keyword, "соориентирую") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-66";
}
//rule_1-67
if (
((strpos($InputData_1_->Keyword, "стелс") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-67";
}
//rule_1-68
if (
((strpos($InputData_1_->Keyword, "бесплатно") !== false))
 and
((strpos($InputData_1_->Keyword, "грамм") !== false))
 and
((strpos($InputData_1_->Keyword, "почти") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-68";
}
//rule_1-69
if (
((strpos($InputData_1_->Keyword, "прет") !== false))
 and
((strpos($InputData_1_->Keyword, "продукт") !== false))
 and
((strpos($InputData_1_->Keyword, "производных") !== false))
 and
((strpos($InputData_1_->Keyword, "прошлом") !== false))
 and
((strpos($InputData_1_->Keyword, "химия") !== false))
 and
((strpos($InputData_1_->Keyword, "натур") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-69";
}
//rule_1-70
if (
((strpos($InputData_1_->Keyword, "давай") !== false))
 and
((strpos($InputData_1_->Keyword, "комент") !== false))
 and
((strpos($InputData_1_->Keyword, "пиши") !== false))
 and
((strpos($InputData_1_->Keyword, "филя") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-70";
}
//rule_1-71
if (
((strpos($InputData_1_->Keyword, "докидыва") !== false))
 and
((strpos($InputData_1_->Keyword, "тута") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-71";
}
//rule_1-72
if (
((strpos($InputData_1_->Keyword, "докидывай") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-72";
}
//rule_1-73
if (
((strpos($InputData_1_->Keyword, "брызжет") !== false))
 and
((strpos($InputData_1_->Keyword, "другой") !== false))
 and
((strpos($InputData_1_->Keyword, "заслужила") !== false))
 and
((strpos($InputData_1_->Keyword, "злости") !== false))
 and
((strpos($InputData_1_->Keyword, "ревностным") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-73";
}
//rule_3-48
if (
((strpos($InputData_1_->Keyword, "super.televizor") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-48";
}
//rule_4-68
if (
((strpos($InputData_1_->Keyword, "бухать") !== false))
 and
((strpos($InputData_1_->Keyword, "завхоза") !== false))
 and
((strpos($InputData_1_->Keyword, "работы") !== false))
 and
((strpos($InputData_1_->Keyword, "уволят") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-68";
}
//rule_4-69
if (
((strpos($InputData_1_->Keyword, "жаловаться") !== false))
 and
((strpos($InputData_1_->Keyword, "хватит") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-69";
}
//rule_3-49
if (
((strpos($InputData_1_->Keyword, "алкоголика") !== false))
 and
((strpos($InputData_1_->Keyword, "воспитанием") !== false))
 and
((strpos($InputData_1_->Keyword, "жирной") !== false))
 and
((strpos($InputData_1_->Keyword, "задницей") !== false))
 and
((strpos($InputData_1_->Keyword, "крутить") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-49";
}
//rule_4-70
if (
((strpos($InputData_1_->Keyword, "замки") !== false))
 and
((strpos($InputData_1_->Keyword, "сменить") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-70";
}
//rule_4-71
if (
((strpos($InputData_1_->Keyword, "бросил") !== false))
 and
((strpos($InputData_1_->Keyword, "бывшего") !== false))
 and
((strpos($InputData_1_->Keyword, "разводе") !== false))
 and
((strpos($InputData_1_->Keyword, "рассказываешь") !== false))
 and
((strpos($InputData_1_->Keyword, "родственники") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-71";
}
//rule_4-72
if (
((strpos($InputData_1_->Keyword, "звонить") !== false))
 and
((strpos($InputData_1_->Keyword, "звонков") !== false))
 and
((strpos($InputData_1_->Keyword, "поздновато") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-72";
}
//rule_4-73
if (
((strpos($InputData_1_->Keyword, "бывшим") !== false))
 and
((strpos($InputData_1_->Keyword, "когда") !== false))
 and
((strpos($InputData_1_->Keyword, "мужем") !== false))
 and
((strpos($InputData_1_->Keyword, "наконец") !== false))
 and
((strpos($InputData_1_->Keyword, "следить") !== false))
 and
((strpos($InputData_1_->Keyword, "стыдно") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-73";
}
//rule_4-74
if (
((strpos($InputData_1_->Keyword, "бывший") !== false))
 and
((strpos($InputData_1_->Keyword, "мразота") !== false))
 and
((strpos($InputData_1_->Keyword, "овцой") !== false))
 and
((strpos($InputData_1_->Keyword, "опозориться") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-74";
}
//rule_4-75
if (
((strpos($InputData_1_->Keyword, "бывший") !== false))
 and
((strpos($InputData_1_->Keyword, "догадываешься") !== false))
 and
((strpos($InputData_1_->Keyword, "интересно") !== false))
 and
((strpos($InputData_1_->Keyword, "любимым") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-75";
}
//rule_4-76
if (
((strpos($InputData_1_->Keyword, "случайно") !== false))
 and
((strpos($InputData_1_->Keyword, "тебе") !== false))
 and
((strpos($InputData_1_->Keyword, "худеешь") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-76";
}
//rule_4-77
if (
((strpos($InputData_1_->Keyword, "любовник") !== false))
 and
((strpos($InputData_1_->Keyword, "мужчину") !== false))
 and
((strpos($InputData_1_->Keyword, "просторах") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-77";
}
//rule_4-78
if (
((strpos($InputData_1_->Keyword, "зарабатываешь") !== false))
 and
((strpos($InputData_1_->Keyword, "истощёного") !== false))
 and
((strpos($InputData_1_->Keyword, "лапши") !== false))
 and
((strpos($InputData_1_->Keyword, "наврное") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-78";
}
//rule_4-79
if (
((strpos($InputData_1_->Keyword, "бывшего") !== false))
 and
((strpos($InputData_1_->Keyword, "знать") !== false))
 and
((strpos($InputData_1_->Keyword, "любимая") !== false))
 and
((strpos($InputData_1_->Keyword, "мужа") !== false))
 and
((strpos($InputData_1_->Keyword, "хочешь") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-79";
}
//rule_3-50
if (
((strpos($InputData_1_->Keyword, "прoсмотреть") !== false))
 and
((strpos($InputData_1_->Keyword, "http://bit.ly") !== false))
 and
((strpos($InputData_1_->Keyword, "абoнент") !== false))
 and
((strpos($InputData_1_->Keyword, "билaйн") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-50";
}
//rule_3-51
if (
((strpos($InputData_1_->Keyword, "http://www.bit.ly") !== false))
 and
((strpos($InputData_1_->Keyword, "mms") !== false))
 and
((strpos($InputData_1_->Keyword, "прoсмотреть") !== false))
 and
((strpos($InputData_1_->Keyword, "абoнент") !== false))
 and
((strpos($InputData_1_->Keyword, "билaйн") !== false))
 and
((strpos($InputData_1_->Keyword, "отпрaвил") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-51";
}
//rule_4-80
if (
((strpos($InputData_1_->Keyword, "бывшему") !== false))
 and
((strpos($InputData_1_->Keyword, "давай") !== false))
 and
((strpos($InputData_1_->Keyword, "мужу") !== false))
 and
((strpos($InputData_1_->Keyword, "нажаловалась") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-80";
}
//rule_3-52
if (
((strpos($InputData_1_->Keyword, "авиабилет") !== false))
 and
((strpos($InputData_1_->Keyword, "москва") !== false))
 and
((strpos($InputData_1_->Keyword, "сочи") !== false))
 and
((strpos($InputData_1_->Keyword, "оплачен") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-52";
}
//rule_4-81
if (
((strpos($InputData_1_->Keyword, "забудь") !== false))
 and
((strpos($InputData_1_->Keyword, "мужу") !== false))
 and
((strpos($InputData_1_->Keyword, "пожаловаться") !== false))
 and
((strpos($InputData_1_->Keyword, "позвонить") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-81";
}
//rule_4-82
if (
((strpos($InputData_1_->Keyword, "забудь") !== false))
 and
((strpos($InputData_1_->Keyword, "сменить") !== false))
 and
((strpos($InputData_1_->Keyword, "фамилию") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-82";
}
//rule_4-83
if (
((strpos($InputData_1_->Keyword, "женщина") !== false))
 and
((strpos($InputData_1_->Keyword, "просто") !== false))
 and
((strpos($InputData_1_->Keyword, "шалава") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-83";
}
//rule_4-84
if (
((strpos($InputData_1_->Keyword, "женщина") !== false))
 and
((strpos($InputData_1_->Keyword, "шалава") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-84";
}
//rule_4-85
if (
((strpos($InputData_1_->Keyword, "брошенная") !== false))
 and
((strpos($InputData_1_->Keyword, "женщина") !== false))
 and
((strpos($InputData_1_->Keyword, "мужем") !== false))
 and
((strpos($InputData_1_->Keyword, "шалава") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-85";
}
//rule_4-86
if (
((strpos($InputData_1_->Keyword, "баба") !== false))
 and
((strpos($InputData_1_->Keyword, "гулящая") !== false))
 and
((strpos($InputData_1_->Keyword, "непорядочная") !== false))
 and
((strpos($InputData_1_->Keyword, "шалава") !== false))
 and
((strpos($InputData_1_->Keyword, "шалавистая") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-86";
}
//rule_1-74
if (
((strpos($InputData_1_->Keyword, "забрали") !== false))
 and
((strpos($InputData_1_->Keyword, "коробке") !== false))
 and
((strpos($InputData_1_->Keyword, "посмотрят") !== false))
 and
((strpos($InputData_1_->Keyword, "свое") !== false))
 and
((strpos($InputData_1_->Keyword, "счас") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-74";
}
//rule_1-75
if (
((strpos($InputData_1_->Keyword, "вооще") !== false))
 and
((strpos($InputData_1_->Keyword, "двигается") !== false))
 and
((strpos($InputData_1_->Keyword, "тема") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-75";
}
//rule_1-76
if (
((strpos($InputData_1_->Keyword, "берут") !== false))
 and
((strpos($InputData_1_->Keyword, "кладами") !== false))
 and
((strpos($InputData_1_->Keyword, "руки") !== false))
 and
((strpos($InputData_1_->Keyword, "спайс") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-76";
}
//rule_1-77
if (
((strpos($InputData_1_->Keyword, "какие") !== false))
 and
((strpos($InputData_1_->Keyword, "полки") !== false))
 and
((strpos($InputData_1_->Keyword, "понимаю") !== false))
 and
((strpos($InputData_1_->Keyword, "твоей") !== false))
 and
((strpos($InputData_1_->Keyword, "фени") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-77";
}
//rule_1-78
if (
((strpos($InputData_1_->Keyword, "качество") !== false))
 and
((strpos($InputData_1_->Keyword, "курил") !== false))
 and
((strpos($InputData_1_->Keyword, "самое") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-78";
}
//rule_1-79
if (
((strpos($InputData_1_->Keyword, "каслинская") !== false))
 and
((strpos($InputData_1_->Keyword, "отливом") !== false))
 and
((strpos($InputData_1_->Keyword, "падик") !== false))
 and
((strpos($InputData_1_->Keyword, "паследний") !== false))
 and
((strpos($InputData_1_->Keyword, "слева") !== false))
 and
((strpos($InputData_1_->Keyword, "справа") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-79";
}
//rule_1-80
if (
((strpos($InputData_1_->Keyword, "каслинская") !== false))
 and
((strpos($InputData_1_->Keyword, "отливомокна") !== false))
 and
((strpos($InputData_1_->Keyword, "падик") !== false))
 and
((strpos($InputData_1_->Keyword, "последний") !== false))
 and
((strpos($InputData_1_->Keyword, "слева") !== false))
 and
((strpos($InputData_1_->Keyword, "справа") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-80";
}
//rule_1-81
if (
((strpos($InputData_1_->Keyword, "номер") !== false))
 and
((strpos($InputData_1_->Keyword, "киви") !== false))
 and
((strpos($InputData_1_->Keyword, "клад") !== false))
 and
((strpos($InputData_1_->Keyword, "мегафона") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-81";
}
//rule_1-82
if (
((strpos($InputData_1_->Keyword, "вторые") !== false))
 and
((strpos($InputData_1_->Keyword, "дает") !== false))
 and
((strpos($InputData_1_->Keyword, "конечно") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-82";
}
//rule_2-7
if (
((strpos($InputData_1_->Keyword, "консультации") !== false))
 and
((strpos($InputData_1_->Keyword, "справки") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_2-7";
}
//rule_2-8
if (
((strpos($InputData_1_->Keyword, "консультации") !== false))
 and
((strpos($InputData_1_->Keyword, "кредитах") !== false))
 and
((strpos($InputData_1_->Keyword, "справки") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_2-8";
}
//rule_1-83
if (
((strpos($InputData_1_->Keyword, "интерсвязи") !== false))
 and
((strpos($InputData_1_->Keyword, "электрокаробке") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-83";
}
//rule_1-84
if (
((strpos($InputData_1_->Keyword, "взорвали") !== false))
 and
((strpos($InputData_1_->Keyword, "забрали") !== false))
 and
((strpos($InputData_1_->Keyword, "интерсвязи") !== false))
 and
((strpos($InputData_1_->Keyword, "кружили") !== false))
 and
((strpos($InputData_1_->Keyword, "чайки") !== false))
 and
((strpos($InputData_1_->Keyword, "элкоробке") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-84";
}
//rule_1-85
if (
((strpos($InputData_1_->Keyword, "найдеш") !== false))
 and
((strpos($InputData_1_->Keyword, "отпишишся") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-85";
}
//rule_1-86
if (
((strpos($InputData_1_->Keyword, "боюсь") !== false))
 and
((strpos($InputData_1_->Keyword, "курю") !== false))
 and
((strpos($InputData_1_->Keyword, "мудаки") !== false))
 and
((strpos($InputData_1_->Keyword, "передохнут") !== false))
 and
((strpos($InputData_1_->Keyword, "понимаю") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-86";
}
//rule_1-87
if (
((strpos($InputData_1_->Keyword, "надумаеш") !== false))
 and
((strpos($InputData_1_->Keyword, "шуми") !== false))
 and
((strpos($InputData_1_->Keyword, "шутник") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-87";
}
//rule_4-87
if (
((strpos($InputData_1_->Keyword, "бывший") !== false))
 and
((strpos($InputData_1_->Keyword, "душил") !== false))
 and
((strpos($InputData_1_->Keyword, "наверное") !== false))
 and
((strpos($InputData_1_->Keyword, "платья") !== false))
 and
((strpos($InputData_1_->Keyword, "рвал") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-87";
}
//rule_1-88
if (
((strpos($InputData_1_->Keyword, "надо") !== false))
 and
((strpos($InputData_1_->Keyword, "ниче") !== false))
 and
((strpos($InputData_1_->Keyword, "писать") !== false))
 and
((strpos($InputData_1_->Keyword, "потому") !== false))
 and
((strpos($InputData_1_->Keyword, "разлетится") !== false))
 and
((strpos($InputData_1_->Keyword, "ровно") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-88";
}
//rule_1-89
if (
((strpos($InputData_1_->Keyword, "доме") !== false))
 and
((strpos($InputData_1_->Keyword, "ментовке") !== false))
 and
((strpos($InputData_1_->Keyword, "отливом") !== false))
 and
((strpos($InputData_1_->Keyword, "падик") !== false))
 and
((strpos($InputData_1_->Keyword, "последний") !== false))
 and
((strpos($InputData_1_->Keyword, "справа") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-89";
}
//rule_1-90
if (
((strpos($InputData_1_->Keyword, "вдолг") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-90";
}
//rule_1-91
if (
((strpos($InputData_1_->Keyword, "вижу") !== false))
 and
((strpos($InputData_1_->Keyword, "деньги") !== false))
 and
((strpos($InputData_1_->Keyword, "паникуй") !== false))
 and
((strpos($InputData_1_->Keyword, "писать") !== false))
 and
((strpos($InputData_1_->Keyword, "просто") !== false))
 and
((strpos($InputData_1_->Keyword, "успеваю") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-91";
}
//rule_1-92
if (
((strpos($InputData_1_->Keyword, "гляну") !== false))
 and
((strpos($InputData_1_->Keyword, "паникуй") !== false))
 and
((strpos($InputData_1_->Keyword, "успеваю") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-92";
}
//rule_1-93
if (
((strpos($InputData_1_->Keyword, "адрес") !== false))
 and
((strpos($InputData_1_->Keyword, "первый") !== false))
 and
((strpos($InputData_1_->Keyword, "потому") !== false))
 and
((strpos($InputData_1_->Keyword, "седня") !== false))
 and
((strpos($InputData_1_->Keyword, "третий") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-93";
}
//rule_1-94
if (
((strpos($InputData_1_->Keyword, "ложить") !== false))
 and
((strpos($InputData_1_->Keyword, "наберу") !== false))
 and
((strpos($InputData_1_->Keyword, "спеши") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-94";
}
//rule_1-95
if (
((strpos($InputData_1_->Keyword, "бесплатно") !== false))
 and
((strpos($InputData_1_->Keyword, "давал") !== false))
 and
((strpos($InputData_1_->Keyword, "думаю") !== false))
 and
((strpos($InputData_1_->Keyword, "неделю") !== false))
 and
((strpos($InputData_1_->Keyword, "хватит") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-95";
}
//rule_1-96
if (
((strpos($InputData_1_->Keyword, "весь") !== false))
 and
((strpos($InputData_1_->Keyword, "давай") !== false))
 and
((strpos($InputData_1_->Keyword, "друг") !== false))
 and
((strpos($InputData_1_->Keyword, "завтра") !== false))
 and
((strpos($InputData_1_->Keyword, "знаеш") !== false))
 and
((strpos($InputData_1_->Keyword, "правилам") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-96";
}
//rule_1-97
if (
((strpos($InputData_1_->Keyword, "конечно") !== false))
 and
((strpos($InputData_1_->Keyword, "подумай") !== false))
 and
((strpos($InputData_1_->Keyword, "пойду") !== false))
 and
((strpos($InputData_1_->Keyword, "счас") !== false))
 and
((strpos($InputData_1_->Keyword, "часок") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-97";
}
//rule_1-98
if (
((strpos($InputData_1_->Keyword, "время") !== false))
 and
((strpos($InputData_1_->Keyword, "никакого") !== false))
 and
((strpos($InputData_1_->Keyword, "пополнения") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-98";
}
//rule_1-99
if (
((strpos($InputData_1_->Keyword, "ложи") !== false))
 and
((strpos($InputData_1_->Keyword, "пакет") !== false))
 and
((strpos($InputData_1_->Keyword, "положу") !== false))
 and
((strpos($InputData_1_->Keyword, "проб") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-99";
}
//rule_1-100
if (
((strpos($InputData_1_->Keyword, "левые") !== false))
 and
((strpos($InputData_1_->Keyword, "железного") !== false))
 and
((strpos($InputData_1_->Keyword, "зеленого") !== false))
 and
((strpos($InputData_1_->Keyword, "крыльца") !== false))
 and
((strpos($InputData_1_->Keyword, "ступеньки") !== false))
 and
((strpos($InputData_1_->Keyword, "уголка") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-100";
}
//rule_1-101
if (
((strpos($InputData_1_->Keyword, "видно") !== false))
 and
((strpos($InputData_1_->Keyword, "внизу") !== false))
 and
((strpos($InputData_1_->Keyword, "даже") !== false))
 and
((strpos($InputData_1_->Keyword, "салфетке") !== false))
 and
((strpos($InputData_1_->Keyword, "стороны") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-101";
}
//rule_1-102
if (
((strpos($InputData_1_->Keyword, "киви") !== false))
 and
((strpos($InputData_1_->Keyword, "лежит") !== false))
 and
((strpos($InputData_1_->Keyword, "мегафон") !== false))
 and
((strpos($InputData_1_->Keyword, "номер") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-102";
}
//rule_1-103
if (
((strpos($InputData_1_->Keyword, "валлет") !== false))
 and
((strpos($InputData_1_->Keyword, "сумма") !== false))
 and
((strpos($InputData_1_->Keyword, "виза") !== false))
 and
((strpos($InputData_1_->Keyword, "оплат") !== false))
 and
((strpos($InputData_1_->Keyword, "услуг") !== false))
 and
((strpos($InputData_1_->Keyword, "киви") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-103";
}
//rule_3-53
if (
((strpos($InputData_1_->Keyword, "инфо") !== false))
 and
((strpos($InputData_1_->Keyword, "карте") !== false))
 and
((strpos($InputData_1_->Keyword, "операции") !== false))
 and
((strpos($InputData_1_->Keyword, "приостановлены") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-53";
}
//rule_1-104
if (
((strpos($InputData_1_->Keyword, "давай") !== false))
 and
((strpos($InputData_1_->Keyword, "киви") !== false))
 and
((strpos($InputData_1_->Keyword, "мегафоновский") !== false))
 and
((strpos($InputData_1_->Keyword, "номер") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-104";
}
//rule_4-88
if (
((strpos($InputData_1_->Keyword, "гулящей") !== false))
 and
((strpos($InputData_1_->Keyword, "женщины") !== false))
 and
((strpos($InputData_1_->Keyword, "разведённой") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-88";
}
//rule_1-105
if (
((strpos($InputData_1_->Keyword, "готовый") !== false))
 and
((strpos($InputData_1_->Keyword, "киви") !== false))
 and
((strpos($InputData_1_->Keyword, "клад") !== false))
 and
((strpos($InputData_1_->Keyword, "конечно") !== false))
 and
((strpos($InputData_1_->Keyword, "мегафон") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-105";
}
//rule_1-106
if (
((strpos($InputData_1_->Keyword, "изза") !== false))
 and
((strpos($InputData_1_->Keyword, "меня") !== false))
 and
((strpos($InputData_1_->Keyword, "проблеммы") !== false))
 and
((strpos($InputData_1_->Keyword, "седня") !== false))
 and
((strpos($InputData_1_->Keyword, "тебя") !== false))
 and
((strpos($InputData_1_->Keyword, "филя") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-106";
}
//rule_1-107
if (
((strpos($InputData_1_->Keyword, "дублируются") !== false))
 and
((strpos($InputData_1_->Keyword, "сверить") !== false))
 and
((strpos($InputData_1_->Keyword, "клады") !== false))
 and
((strpos($InputData_1_->Keyword, "сохраняй") !== false))
 and
((strpos($InputData_1_->Keyword, "стопроцентные") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-107";
}
//rule_1-108
if (
((strpos($InputData_1_->Keyword, "городом") !== false))
 and
((strpos($InputData_1_->Keyword, "клады") !== false))
 and
((strpos($InputData_1_->Keyword, "остались") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-108";
}
//rule_1-109
if (
((strpos($InputData_1_->Keyword, "березой") !== false))
 and
((strpos($InputData_1_->Keyword, "кичигино") !== false))
 and
((strpos($InputData_1_->Keyword, "остановка") !== false))
 and
((strpos($InputData_1_->Keyword, "руль") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-109";
}
//rule_1-110
if (
((strpos($InputData_1_->Keyword, "легал") !== false))
 and
((strpos($InputData_1_->Keyword, "наличии") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-110";
}
//rule_1-111
if (
((strpos($InputData_1_->Keyword, "меня") !== false))
 and
((strpos($InputData_1_->Keyword, "пока") !== false))
 and
((strpos($InputData_1_->Keyword, "тихо") !== false))
 and
((strpos($InputData_1_->Keyword, "южнике") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-111";
}
//rule_1-112
if (
((strpos($InputData_1_->Keyword, "готовые") !== false))
 and
((strpos($InputData_1_->Keyword, "докидывай") !== false))
 and
((strpos($InputData_1_->Keyword, "остались") !== false))
 and
((strpos($InputData_1_->Keyword, "токо") !== false))
 and
((strpos($InputData_1_->Keyword, "южнике") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-112";
}
//rule_1-113
if (
((strpos($InputData_1_->Keyword, "качеству") !== false))
 and
((strpos($InputData_1_->Keyword, "надо") !== false))
 and
((strpos($InputData_1_->Keyword, "привыкли") !== false))
 and
((strpos($InputData_1_->Keyword, "чему") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-113";
}
//rule_3-54
if (
((strpos($InputData_1_->Keyword, "банковская") !== false))
 and
((strpos($InputData_1_->Keyword, "ваша") !== false))
 and
((strpos($InputData_1_->Keyword, "карта") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-54";
}
//rule_1-114
if (
((strpos($InputData_1_->Keyword, "вериш") !== false))
 and
((strpos($InputData_1_->Keyword, "занимаюсь") !== false))
 and
((strpos($InputData_1_->Keyword, "пишу") !== false))
 and
((strpos($InputData_1_->Keyword, "токо") !== false))
 and
((strpos($InputData_1_->Keyword, "этим") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-114";
}
//rule_1-115
if (
((strpos($InputData_1_->Keyword, "вижу") !== false))
 and
((strpos($InputData_1_->Keyword, "стелс") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-115";
}
//rule_1-116
if (
((strpos($InputData_1_->Keyword, "адрес") !== false))
 and
((strpos($InputData_1_->Keyword, "вижу") !== false))
 and
((strpos($InputData_1_->Keyword, "успел") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-116";
}
//rule_1-117
if (
((strpos($InputData_1_->Keyword, "адрес") !== false))
 and
((strpos($InputData_1_->Keyword, "возмеш") !== false))
 and
((strpos($InputData_1_->Keyword, "второй") !== false))
 and
((strpos($InputData_1_->Keyword, "отпиши") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-117";
}
//rule_1-118
if (
((strpos($InputData_1_->Keyword, "балкон") !== false))
 and
((strpos($InputData_1_->Keyword, "вчера") !== false))
 and
((strpos($InputData_1_->Keyword, "салфетке") !== false))
 and
((strpos($InputData_1_->Keyword, "торца") !== false))
 and
((strpos($InputData_1_->Keyword, "уголком") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-118";
}
//rule_1-119
if (
((strpos($InputData_1_->Keyword, "верху") !== false))
 and
((strpos($InputData_1_->Keyword, "интер") !== false))
 and
((strpos($InputData_1_->Keyword, "коробке") !== false))
 and
((strpos($InputData_1_->Keyword, "связи") !== false))
 and
((strpos($InputData_1_->Keyword, "смотри") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-119";
}
//rule_1-120
if (
((strpos($InputData_1_->Keyword, "взял") !== false))
 and
((strpos($InputData_1_->Keyword, "говорят") !== false))
 and
((strpos($InputData_1_->Keyword, "ниче") !== false))
 and
((strpos($InputData_1_->Keyword, "одни") !== false))
 and
((strpos($InputData_1_->Keyword, "смотрели") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-120";
}
//rule_1-121
if (
((strpos($InputData_1_->Keyword, "ебется") !== false))
 and
((strpos($InputData_1_->Keyword, "крадет") !== false))
 and
((strpos($InputData_1_->Keyword, "пиздит") !== false))
 and
((strpos($InputData_1_->Keyword, "пласт") !== false))
 and
((strpos($InputData_1_->Keyword, "проверенный") !== false))
 and
((strpos($InputData_1_->Keyword, "чужое") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-121";
}
//rule_1-122
if (
((strpos($InputData_1_->Keyword, "водоотлив") !== false))
 and
((strpos($InputData_1_->Keyword, "вызывай") !== false))
 and
((strpos($InputData_1_->Keyword, "долежит") !== false))
 and
((strpos($InputData_1_->Keyword, "зато") !== false))
 and
((strpos($InputData_1_->Keyword, "пудов") !== false))
 and
((strpos($InputData_1_->Keyword, "спада") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-122";
}
//rule_1-123
if (
((strpos($InputData_1_->Keyword, "выполнил") !== false))
 and
((strpos($InputData_1_->Keyword, "нахуй") !== false))
 and
((strpos($InputData_1_->Keyword, "пизду") !== false))
 and
((strpos($InputData_1_->Keyword, "план") !== false))
 and
((strpos($InputData_1_->Keyword, "посылай") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-123";
}
//rule_1-124
if (
((strpos($InputData_1_->Keyword, "быстро") !== false))
 and
((strpos($InputData_1_->Keyword, "пребыстро") !== false))
 and
((strpos($InputData_1_->Keyword, "всегда") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-124";
}
//rule_1-125
if (
((strpos($InputData_1_->Keyword, "многих") !== false))
 and
((strpos($InputData_1_->Keyword, "отличии") !== false))
 and
((strpos($InputData_1_->Keyword, "тебя") !== false))
 and
((strpos($InputData_1_->Keyword, "точно") !== false))
 and
((strpos($InputData_1_->Keyword, "тупиш") !== false))
 and
((strpos($InputData_1_->Keyword, "хоть") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-125";
}
//rule_1-126
if (
((strpos($InputData_1_->Keyword, "время") !== false))
 and
((strpos($InputData_1_->Keyword, "какое") !== false))
 and
((strpos($InputData_1_->Keyword, "чеку") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-126";
}
//rule_1-127
if (
((strpos($InputData_1_->Keyword, "вылезет") !== false))
 and
((strpos($InputData_1_->Keyword, "оплаты") !== false))
 and
((strpos($InputData_1_->Keyword, "терминала") !== false))
 and
((strpos($InputData_1_->Keyword, "указанное") !== false))
 and
((strpos($InputData_1_->Keyword, "услуги") !== false))
 and
((strpos($InputData_1_->Keyword, "чеке") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-127";
}
//rule_1-128
if (
((strpos($InputData_1_->Keyword, "вэтом") !== false))
 and
((strpos($InputData_1_->Keyword, "лесенкой") !== false))
 and
((strpos($InputData_1_->Keyword, "падике") !== false))
 and
((strpos($InputData_1_->Keyword, "первом") !== false))
 and
((strpos($InputData_1_->Keyword, "чипсах") !== false))
 and
((strpos($InputData_1_->Keyword, "этаже") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-128";
}
//rule_1-129
if (
((strpos($InputData_1_->Keyword, "бывшему") !== false))
 and
((strpos($InputData_1_->Keyword, "всеобщее") !== false))
 and
((strpos($InputData_1_->Keyword, "гулящей") !== false))
 and
((strpos($InputData_1_->Keyword, "делала") !== false))
 and
((strpos($InputData_1_->Keyword, "женщиной") !== false))
 and
((strpos($InputData_1_->Keyword, "стыдно") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-129";
}
//rule_1-130
if (
((strpos($InputData_1_->Keyword, "кошелек") !== false))
 and
((strpos($InputData_1_->Keyword, "пиши") !== false))
 and
((strpos($InputData_1_->Keyword, "томер") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-130";
}
//rule_1-131
if (
((strpos($InputData_1_->Keyword, "киви") !== false))
 and
((strpos($InputData_1_->Keyword, "номер") !== false))
 and
((strpos($InputData_1_->Keyword, "пиши") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-131";
}
//rule_1-132
if (
((strpos($InputData_1_->Keyword, "надо") !== false))
 and
((strpos($InputData_1_->Keyword, "отлучиться") !== false))
 and
((strpos($InputData_1_->Keyword, "пиши") !== false))
 and
((strpos($InputData_1_->Keyword, "скорее") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-132";
}
//rule_1-133
if (
((strpos($InputData_1_->Keyword, "аптеке") !== false))
 and
((strpos($InputData_1_->Keyword, "всегда") !== false))
 and
((strpos($InputData_1_->Keyword, "пиши") !== false))
 and
((strpos($InputData_1_->Keyword, "рекомендуй") !== false))
 and
((strpos($InputData_1_->Keyword, "четко") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-133";
}
//rule_1-134
if (
((strpos($InputData_1_->Keyword, "докинеш") !== false))
 and
((strpos($InputData_1_->Keyword, "писят") !== false))
 and
((strpos($InputData_1_->Keyword, "потом") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-134";
}
//rule_1-135
if (
((strpos($InputData_1_->Keyword, "емане") !== false))
 and
((strpos($InputData_1_->Keyword, "качества") !== false))
 and
((strpos($InputData_1_->Keyword, "поводу") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-135";
}
//rule_1-136
if (
((strpos($InputData_1_->Keyword, "колян") !== false))
 and
((strpos($InputData_1_->Keyword, "гасись") !== false))
 and
((strpos($InputData_1_->Keyword, "ведешь") !== false))
 and
((strpos($InputData_1_->Keyword, "даже") !== false))
 and
((strpos($InputData_1_->Keyword, "звонить") !== false))
 and
((strpos($InputData_1_->Keyword, "малолетка") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-136";
}
//rule_1-137
if (
((strpos($InputData_1_->Keyword, "город") !== false))
 and
((strpos($InputData_1_->Keyword, "какой") !== false))
 and
((strpos($InputData_1_->Keyword, "подожди") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-137";
}
//rule_1-138
if (
((strpos($InputData_1_->Keyword, "отпишиш") !== false))
 and
((strpos($InputData_1_->Keyword, "попробуеш") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-138";
}
//rule_1-139
if (
((strpos($InputData_1_->Keyword, "долгу") !== false))
 and
((strpos($InputData_1_->Keyword, "известен") !== false))
 and
((strpos($InputData_1_->Keyword, "останусь") !== false))
 and
((strpos($InputData_1_->Keyword, "помоги") !== false))
 and
((strpos($InputData_1_->Keyword, "рынок") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-139";
}
//rule_1-140
if (
((strpos($InputData_1_->Keyword, "ночи") !== false))
 and
((strpos($InputData_1_->Keyword, "полчаса") !== false))
 and
((strpos($InputData_1_->Keyword, "понимаеш") !== false))
 and
((strpos($InputData_1_->Keyword, "порой") !== false))
 and
((strpos($InputData_1_->Keyword, "пропадаю") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-140";
}
//rule_1-141
if (
((strpos($InputData_1_->Keyword, "есть") !== false))
 and
((strpos($InputData_1_->Keyword, "ложи") !== false))
 and
((strpos($InputData_1_->Keyword, "привет") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-141";
}
//rule_1-142
if (
((strpos($InputData_1_->Keyword, "ложи") !== false))
 and
((strpos($InputData_1_->Keyword, "привет") !== false))
 and
((strpos($InputData_1_->Keyword, "сделаю") !== false))
 and
((strpos($InputData_1_->Keyword, "хороший") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-142";
}
//rule_1-143
if (
((strpos($InputData_1_->Keyword, "привет") !== false))
 and
((strpos($InputData_1_->Keyword, "проснулся") !== false))
 and
((strpos($InputData_1_->Keyword, "тружусь") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-143";
}
//rule_1-144
if (
((strpos($InputData_1_->Keyword, "привет") !== false))
 and
((strpos($InputData_1_->Keyword, "проснулся") !== false))
 and
((strpos($InputData_1_->Keyword, "работаю") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-144";
}
//rule_1-145
if (
((strpos($InputData_1_->Keyword, "грустиш") !== false))
 and
((strpos($InputData_1_->Keyword, "мешок") !== false))
 and
((strpos($InputData_1_->Keyword, "привет") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-145";
}
//rule_1-146
if (
((strpos($InputData_1_->Keyword, "докидывай") !== false))
 and
((strpos($InputData_1_->Keyword, "привет") !== false))
 and
((strpos($InputData_1_->Keyword, "спал") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-146";
}
//rule_4-89
if (
((strpos($InputData_1_->Keyword, "брачных") !== false))
 and
((strpos($InputData_1_->Keyword, "наши") !== false))
 and
((strpos($InputData_1_->Keyword, "освобождением") !== false))
 and
((strpos($InputData_1_->Keyword, "поздравления") !== false))
 and
((strpos($InputData_1_->Keyword, "примите") !== false))
 and
((strpos($InputData_1_->Keyword, "связи") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-89";
}
//rule_1-147
if (
((strpos($InputData_1_->Keyword, "заебался") !== false))
 and
((strpos($InputData_1_->Keyword, "кидать") !== false))
 and
((strpos($InputData_1_->Keyword, "пришли") !== false))
 and
((strpos($InputData_1_->Keyword, "проб") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-147";
}
//rule_1-148
if (
((strpos($InputData_1_->Keyword, "есть") !== false))
 and
((strpos($InputData_1_->Keyword, "клады") !== false))
 and
((strpos($InputData_1_->Keyword, "положить") !== false))
 and
((strpos($InputData_1_->Keyword, "проб") !== false))
 and
((strpos($InputData_1_->Keyword, "седня") !== false))
 and
((strpos($InputData_1_->Keyword, "смогу") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-148";
}
//rule_1-149
if (
((strpos($InputData_1_->Keyword, "проба") !== false))
 and
((strpos($InputData_1_->Keyword, "стоит") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-149";
}
//rule_1-150
if (
((strpos($InputData_1_->Keyword, "легал") !== false))
 and
((strpos($InputData_1_->Keyword, "нелегал") !== false))
 and
((strpos($InputData_1_->Keyword, "проба") !== false))
 and
((strpos($InputData_1_->Keyword, "стоит") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-150";
}
//rule_1-151
if (
((strpos($InputData_1_->Keyword, "европаке") !== false))
 and
((strpos($InputData_1_->Keyword, "падик") !== false))
 and
((strpos($InputData_1_->Keyword, "пробник") !== false))
 and
((strpos($InputData_1_->Keyword, "толью") !== false))
 and
((strpos($InputData_1_->Keyword, "трубапод") !== false))
 and
((strpos($InputData_1_->Keyword, "черная") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-151";
}
//rule_1-152
if (
((strpos($InputData_1_->Keyword, "даймонд") !== false))
 and
((strpos($InputData_1_->Keyword, "есть") !== false))
 and
((strpos($InputData_1_->Keyword, "легал") !== false))
 and
((strpos($InputData_1_->Keyword, "пробы") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-152";
}
//rule_1-153
if (
((strpos($InputData_1_->Keyword, "клады") !== false))
 and
((strpos($InputData_1_->Keyword, "остались") !== false))
 and
((strpos($InputData_1_->Keyword, "пробы") !== false))
 and
((strpos($InputData_1_->Keyword, "роздал") !== false))
 and
((strpos($InputData_1_->Keyword, "седня") !== false))
 and
((strpos($InputData_1_->Keyword, "токо") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-153";
}
//rule_1-154
if (
((strpos($InputData_1_->Keyword, "бабос") !== false))
 and
((strpos($InputData_1_->Keyword, "бери") !== false))
 and
((strpos($InputData_1_->Keyword, "кончились") !== false))
 and
((strpos($InputData_1_->Keyword, "пробы") !== false))
 and
((strpos($InputData_1_->Keyword, "сегодня") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-154";
}
//rule_1-155
if (
((strpos($InputData_1_->Keyword, "есть") !== false))
 and
((strpos($InputData_1_->Keyword, "клады") !== false))
 and
((strpos($InputData_1_->Keyword, "пробы") !== false))
 and
((strpos($InputData_1_->Keyword, "розданы") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-155";
}
//rule_1-156
if (
((strpos($InputData_1_->Keyword, "есть") !== false))
 and
((strpos($InputData_1_->Keyword, "пробы") !== false))
 and
((strpos($InputData_1_->Keyword, "розданы") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-156";
}
//rule_1-157
if (
((strpos($InputData_1_->Keyword, "есть") !== false))
 and
((strpos($InputData_1_->Keyword, "пробы") !== false))
 and
((strpos($InputData_1_->Keyword, "розданы") !== false))
 and
((strpos($InputData_1_->Keyword, "соли") !== false))
 and
((strpos($InputData_1_->Keyword, "токо") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-157";
}
//rule_1-158
if (
((strpos($InputData_1_->Keyword, "пробу") !== false))
 and
((strpos($InputData_1_->Keyword, "сделал") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-158";
}
//rule_1-159
if (
((strpos($InputData_1_->Keyword, "забрать") !== false))
 and
((strpos($InputData_1_->Keyword, "нужно") !== false))
 and
((strpos($InputData_1_->Keyword, "саил") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-159";
}
//rule_4-90
if (
((strpos($InputData_1_->Keyword, "деньги") !== false))
 and
((strpos($InputData_1_->Keyword, "меркантильная") !== false))
 and
((strpos($InputData_1_->Keyword, "стерва") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-90";
}
//rule_4-91
if (
((strpos($InputData_1_->Keyword, "брака") !== false))
 and
((strpos($InputData_1_->Keyword, "началом") !== false))
 and
((strpos($InputData_1_->Keyword, "поздравлю") !== false))
 and
((strpos($InputData_1_->Keyword, "разводу") !== false))
 and
((strpos($InputData_1_->Keyword, "расторжением") !== false))
 and
((strpos($InputData_1_->Keyword, "свободной") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-91";
}
//rule_4-92
if (
((strpos($InputData_1_->Keyword, "лицом") !== false))
 and
((strpos($InputData_1_->Keyword, "мужчин") !== false))
 and
((strpos($InputData_1_->Keyword, "раздвигаешь") !== false))
 and
((strpos($InputData_1_->Keyword, "цепляться") !== false))
 and
((strpos($InputData_1_->Keyword, "чужих") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-92";
}
//rule_1-160
if (
((strpos($InputData_1_->Keyword, "даааавно") !== false))
 and
((strpos($InputData_1_->Keyword, "нужна") !== false))
 and
((strpos($InputData_1_->Keyword, "реклама") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-160";
}
//rule_1-161
if (
((strpos($InputData_1_->Keyword, "бонусом") !== false))
 and
((strpos($InputData_1_->Keyword, "доедеш") !== false))
 and
((strpos($InputData_1_->Keyword, "отдадут") !== false))
 and
((strpos($InputData_1_->Keyword, "сказать") !== false))
 and
((strpos($InputData_1_->Keyword, "тоже") !== false))
 and
((strpos($InputData_1_->Keyword, "челиковским") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-161";
}
//rule_1-162
if (
((strpos($InputData_1_->Keyword, "вечером") !== false))
 and
((strpos($InputData_1_->Keyword, "могу") !== false))
 and
((strpos($InputData_1_->Keyword, "пробу") !== false))
 and
((strpos($InputData_1_->Keyword, "сделать") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-162";
}
//rule_1-163
if (
((strpos($InputData_1_->Keyword, "адрес") !== false))
 and
((strpos($InputData_1_->Keyword, "дать") !== false))
 and
((strpos($InputData_1_->Keyword, "могу") !== false))
 and
((strpos($InputData_1_->Keyword, "счас") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-163";
}
//rule_1-164
if (
((strpos($InputData_1_->Keyword, "могу") !== false))
 and
((strpos($InputData_1_->Keyword, "ложи") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-164";
}
//rule_3-55
if (
((strpos($InputData_1_->Keyword, "клиент") !== false))
 and
((strpos($InputData_1_->Keyword, "обратитетесь") !== false))
 and
((strpos($InputData_1_->Keyword, "сбербанк") !== false))
 and
((strpos($InputData_1_->Keyword, "справки") !== false))
 and
((strpos($InputData_1_->Keyword, "срочно") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-55";
}
//rule_3-56
if (
((strpos($InputData_1_->Keyword, "клиент") !== false))
 and
((strpos($InputData_1_->Keyword, "обратитесь") !== false))
 and
((strpos($InputData_1_->Keyword, "сбербанк") !== false))
 and
((strpos($InputData_1_->Keyword, "справки") !== false))
 and
((strpos($InputData_1_->Keyword, "срочно") !== false))
 and
((strpos($InputData_1_->Keyword, "уважаемый") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-56";
}
//rule_3-57
if (
((strpos($InputData_1_->Keyword, "выплата") !== false))
 and
((strpos($InputData_1_->Keyword, "доставленные") !== false))
 and
((strpos($InputData_1_->Keyword, "задержкой") !== false))
 and
((strpos($InputData_1_->Keyword, "извинения") !== false))
 and
((strpos($InputData_1_->Keyword, "неудобства") !== false))
 and
((strpos($InputData_1_->Keyword, "пенсии") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-57";
}
//rule_3-58
if (
((strpos($InputData_1_->Keyword, "банковским") !== false))
 and
((strpos($InputData_1_->Keyword, "ограничения") !== false))
 and
((strpos($InputData_1_->Keyword, "операциям") !== false))
 and
((strpos($InputData_1_->Keyword, "справки") !== false))
 and
((strpos($InputData_1_->Keyword, "установлены") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-58";
}
//rule_3-59
if (
((strpos($InputData_1_->Keyword, "банковскую") !== false))
 and
((strpos($InputData_1_->Keyword, "блокировка") !== false))
 and
((strpos($InputData_1_->Keyword, "вашу") !== false))
 and
((strpos($InputData_1_->Keyword, "инфо") !== false))
 and
((strpos($InputData_1_->Keyword, "карту") !== false))
 and
((strpos($InputData_1_->Keyword, "установлена") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-59";
}
//rule_3-60
if (
((strpos($InputData_1_->Keyword, "банковскую") !== false))
 and
((strpos($InputData_1_->Keyword, "блокировка") !== false))
 and
((strpos($InputData_1_->Keyword, "вашу") !== false))
 and
((strpos($InputData_1_->Keyword, "инфо") !== false))
 and
((strpos($InputData_1_->Keyword, "карту") !== false))
 and
((strpos($InputData_1_->Keyword, "установлена") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-60";
}
//rule_3-61
if (
((strpos($InputData_1_->Keyword, "avitos.ml") !== false))
 and
((strpos($InputData_1_->Keyword, "бонусов") !== false))
 and
((strpos($InputData_1_->Keyword, "получи") !== false))
 and
((strpos($InputData_1_->Keyword, "приложение") !== false))
 and
((strpos($InputData_1_->Keyword, "рублей") !== false))
 and
((strpos($InputData_1_->Keyword, "установи") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-61";
}
//rule_3-62
if (
((strpos($InputData_1_->Keyword, "avitoo.tk") !== false))
 and
((strpos($InputData_1_->Keyword, "бонусов") !== false))
 and
((strpos($InputData_1_->Keyword, "получи") !== false))
 and
((strpos($InputData_1_->Keyword, "приложение") !== false))
 and
((strpos($InputData_1_->Keyword, "рублей") !== false))
 and
((strpos($InputData_1_->Keyword, "установи") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-62";
}
//rule_3-63
if (
((strpos($InputData_1_->Keyword, "goo.gl") !== false))
 and
((strpos($InputData_1_->Keyword, "бонусов") !== false))
 and
((strpos($InputData_1_->Keyword, "получи") !== false))
 and
((strpos($InputData_1_->Keyword, "приложение") !== false))
 and
((strpos($InputData_1_->Keyword, "рублей") !== false))
 and
((strpos($InputData_1_->Keyword, "установи") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-63";
}
//rule_3-64
if (
((strpos($InputData_1_->Keyword, "avitoo.tk") !== false))
 and
((strpos($InputData_1_->Keyword, "бонусов") !== false))
 and
((strpos($InputData_1_->Keyword, "получи") !== false))
 and
((strpos($InputData_1_->Keyword, "приложение") !== false))
 and
((strpos($InputData_1_->Keyword, "рублей") !== false))
 and
((strpos($InputData_1_->Keyword, "установи") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-64";
}
//rule_3-65
if (
((strpos($InputData_1_->Keyword, "vk.cc") !== false))
 and
((strpos($InputData_1_->Keyword, "бонусов") !== false))
 and
((strpos($InputData_1_->Keyword, "получи") !== false))
 and
((strpos($InputData_1_->Keyword, "приложение") !== false))
 and
((strpos($InputData_1_->Keyword, "рублей") !== false))
 and
((strpos($InputData_1_->Keyword, "установи") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-65";
}
//rule_4-93
if (
((strpos($InputData_1_->Keyword, "влезать") !== false))
 and
((strpos($InputData_1_->Keyword, "мужа") !== false))
 and
((strpos($InputData_1_->Keyword, "семьи") !== false))
 and
((strpos($InputData_1_->Keyword, "уводить") !== false))
 and
((strpos($InputData_1_->Keyword, "хорошо") !== false))
 and
((strpos($InputData_1_->Keyword, "чужие") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-93";
}
//rule_4-94
if (
((strpos($InputData_1_->Keyword, "влезать") !== false))
 and
((strpos($InputData_1_->Keyword, "женщины") !== false))
 and
((strpos($InputData_1_->Keyword, "падшие") !== false))
 and
((strpos($InputData_1_->Keyword, "семьи") !== false))
 and
((strpos($InputData_1_->Keyword, "уводить") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-94";
}
//rule_4-95
if (
((strpos($InputData_1_->Keyword, "наконец-то") !== false))
 and
((strpos($InputData_1_->Keyword, "сдохла") !== false))
 and
((strpos($InputData_1_->Keyword, "сдохни") !== false))
 and
((strpos($InputData_1_->Keyword, "скорее") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-95";
}
//rule_4-96
if (
((strpos($InputData_1_->Keyword, "давай") !== false))
 and
((strpos($InputData_1_->Keyword, "подыхай") !== false))
 and
((strpos($InputData_1_->Keyword, "сдохла") !== false))
 and
((strpos($InputData_1_->Keyword, "скорей") !== false))
 and
((strpos($InputData_1_->Keyword, "чювырла") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-96";
}
//rule_4-97
if (
((strpos($InputData_1_->Keyword, "нелегко") !== false))
 and
((strpos($InputData_1_->Keyword, "позором") !== false))
 and
((strpos($InputData_1_->Keyword, "семьи") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-97";
}
//rule_4-98
if (
((strpos($InputData_1_->Keyword, "бывший") !== false))
 and
((strpos($InputData_1_->Keyword, "клиентка") !== false))
 and
((strpos($InputData_1_->Keyword, "маникюр") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-98";
}
//rule_4-99
if (
((strpos($InputData_1_->Keyword, "господь") !== false))
 and
((strpos($InputData_1_->Keyword, "достоинством") !== false))
 and
((strpos($InputData_1_->Keyword, "женским") !== false))
 and
((strpos($InputData_1_->Keyword, "обделил") !== false))
 and
((strpos($InputData_1_->Keyword, "стрёмная") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-99";
}
//rule_4-100
if (
((strpos($InputData_1_->Keyword, "греет") !== false))
 and
((strpos($InputData_1_->Keyword, "лачужке") !== false))
 and
((strpos($InputData_1_->Keyword, "постел") !== false))
 and
((strpos($InputData_1_->Keyword, "съёмной") !== false))
 and
((strpos($InputData_1_->Keyword, "чужим") !== false))
 and
((strpos($InputData_1_->Keyword, "шастая") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-100";
}
//rule_4-101
if (
((strpos($InputData_1_->Keyword, "дождусь") !== false))
 and
((strpos($InputData_1_->Keyword, "момента") !== false))
 and
((strpos($InputData_1_->Keyword, "назвать") !== false))
 and
((strpos($InputData_1_->Keyword, "наконец") !== false))
 and
((strpos($InputData_1_->Keyword, "разведёнкой") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-101";
}
//rule_4-102
if (
((strpos($InputData_1_->Keyword, "интересуемся") !== false))
 and
((strpos($InputData_1_->Keyword, "лезешь") !== false))
 and
((strpos($InputData_1_->Keyword, "развод") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-102";
}
//rule_4-103
if (
((strpos($InputData_1_->Keyword, "бестактная") !== false))
 and
((strpos($InputData_1_->Keyword, "воспитал") !== false))
 and
((strpos($InputData_1_->Keyword, "воспитания") !== false))
 and
((strpos($InputData_1_->Keyword, "дефектами") !== false))
 and
((strpos($InputData_1_->Keyword, "скотина") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-103";
}
//rule_4-104
if (
((strpos($InputData_1_->Keyword, "быть") !== false))
 and
((strpos($InputData_1_->Keyword, "захлёбываешься") !== false))
 and
((strpos($InputData_1_->Keyword, "злости") !== false))
 and
((strpos($InputData_1_->Keyword, "ревности") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-104";
}
//rule_4-105
if (
((strpos($InputData_1_->Keyword, "задеваешь") !== false))
 and
((strpos($InputData_1_->Keyword, "представляешь") !== false))
 and
((strpos($InputData_1_->Keyword, "рога") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-105";
}
//rule_4-106
if (
((strpos($InputData_1_->Keyword, "выглядишь") !== false))
 and
((strpos($InputData_1_->Keyword, "глупо") !== false))
 and
((strpos($InputData_1_->Keyword, "гулящая") !== false))
 and
((strpos($InputData_1_->Keyword, "деньги") !== false))
 and
((strpos($InputData_1_->Keyword, "наивная") !== false))
 and
((strpos($InputData_1_->Keyword, "дурочка") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-106";
}
//rule_4-107
if (
((strpos($InputData_1_->Keyword, "бессовестная") !== false))
 and
((strpos($InputData_1_->Keyword, "гуляешь") !== false))
 and
((strpos($InputData_1_->Keyword, "изменяешь") !== false))
 and
((strpos($InputData_1_->Keyword, "конченная") !== false))
 and
((strpos($InputData_1_->Keyword, "мразь") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-107";
}
//rule_4-108
if (
((strpos($InputData_1_->Keyword, "гулящую") !== false))
 and
((strpos($InputData_1_->Keyword, "падшую") !== false))
 and
((strpos($InputData_1_->Keyword, "скинулся") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-108";
}
//rule_4-109
if (
((strpos($InputData_1_->Keyword, "терпеть") !== false))
 and
((strpos($InputData_1_->Keyword, "глупых") !== false))
 and
((strpos($InputData_1_->Keyword, "женщин") !== false))
 and
((strpos($InputData_1_->Keyword, "хочется") !== false))
 and
((strpos($InputData_1_->Keyword, "чужие") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-109";
}
//rule_4-110
if (
((strpos($InputData_1_->Keyword, "ласки") !== false))
 and
((strpos($InputData_1_->Keyword, "переживаешь") !== false))
 and
((strpos($InputData_1_->Keyword, "получает") !== false))
 and
((strpos($InputData_1_->Keyword, "порцию") !== false))
 and
((strpos($InputData_1_->Keyword, "секса") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-110";
}
//rule_1-165
if (
((strpos($InputData_1_->Keyword, "бесплат") !== false))
 and
((strpos($InputData_1_->Keyword, "курительная") !== false))
 and
((strpos($InputData_1_->Keyword, "оплата") !== false))
 and
((strpos($InputData_1_->Keyword, "пробы") !== false))
 and
((strpos($InputData_1_->Keyword, "смесь") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-165";
}
//rule_4-111
if (
((strpos($InputData_1_->Keyword, "врагом") !== false))
 and
((strpos($InputData_1_->Keyword, "другом") !== false))
 and
((strpos($InputData_1_->Keyword, "друзьями") !== false))
 and
((strpos($InputData_1_->Keyword, "женой") !== false))
 and
((strpos($InputData_1_->Keyword, "любовниками") !== false))
 and
((strpos($InputData_1_->Keyword, "любовницей") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-111";
}
//rule_1-166
if (
((strpos($InputData_1_->Keyword, "пластырь") !== false))
 and
((strpos($InputData_1_->Keyword, "пожалуйста") !== false))
 and
((strpos($InputData_1_->Keyword, "положи") !== false))
 and
((strpos($InputData_1_->Keyword, "прочее") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-166";
}
//rule_4-112
if (
((strpos($InputData_1_->Keyword, "меркантильная") !== false))
 and
((strpos($InputData_1_->Keyword, "никому") !== false))
 and
((strpos($InputData_1_->Keyword, "нужна") !== false))
 and
((strpos($InputData_1_->Keyword, "нужны") !== false))
 and
((strpos($InputData_1_->Keyword, "осталась") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-112";
}
//rule_4-113
if (
((strpos($InputData_1_->Keyword, "пьёт") !== false))
 and
((strpos($InputData_1_->Keyword, "развлечения") !== false))
 and
((strpos($InputData_1_->Keyword, "стыдно") !== false))
 and
((strpos($InputData_1_->Keyword, "сына") !== false))
 and
((strpos($InputData_1_->Keyword, "алкоголика") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-113";
}
//rule_3-66
if (
((strpos($InputData_1_->Keyword, "заявка") !== false))
 and
((strpos($InputData_1_->Keyword, "звоните") !== false))
 and
((strpos($InputData_1_->Keyword, "оплату") !== false))
 and
((strpos($InputData_1_->Keyword, "отмены") !== false))
 and
((strpos($InputData_1_->Keyword, "принята") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-66";
}
//rule_4-114
if (
((strpos($InputData_1_->Keyword, "ветвистые") !== false))
 and
((strpos($InputData_1_->Keyword, "головы") !== false))
 and
((strpos($InputData_1_->Keyword, "мешают") !== false))
 and
((strpos($InputData_1_->Keyword, "рога") !== false))
 and
((strpos($InputData_1_->Keyword, "роскошные") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-114";
}
//rule_4-115
if (
((strpos($InputData_1_->Keyword, "брошенкой") !== false))
 and
((strpos($InputData_1_->Keyword, "женщина") !== false))
 and
((strpos($InputData_1_->Keyword, "тёлка") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-115";
}
//rule_4-116
if (
((strpos($InputData_1_->Keyword, "брошенка") !== false))
 and
((strpos($InputData_1_->Keyword, "женщины") !== false))
 and
((strpos($InputData_1_->Keyword, "любовница") !== false))
 and
((strpos($InputData_1_->Keyword, "унизительный") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-116";
}
//rule_4-117
if (
((strpos($InputData_1_->Keyword, "жёны") !== false))
 and
((strpos($InputData_1_->Keyword, "шалавы") !== false))
 and
((strpos($InputData_1_->Keyword, "избавляться") !== false))
 and
((strpos($InputData_1_->Keyword, "позор") !== false))
 and
((strpos($InputData_1_->Keyword, "пришлось") !== false))
 and
((strpos($InputData_1_->Keyword, "развод") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-117";
}
//rule_4-118
if (
((strpos($InputData_1_->Keyword, "ветвистые") !== false))
 and
((strpos($InputData_1_->Keyword, "влюбленного") !== false))
 and
((strpos($InputData_1_->Keyword, "женатого") !== false))
 and
((strpos($InputData_1_->Keyword, "крылья") !== false))
 and
((strpos($InputData_1_->Keyword, "рога") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-118";
}
//rule_4-119
if (
((strpos($InputData_1_->Keyword, "барана") !== false))
 and
((strpos($InputData_1_->Keyword, "возомнившая") !== false))
 and
((strpos($InputData_1_->Keyword, "который") !== false))
 and
((strpos($InputData_1_->Keyword, "может") !== false))
 and
((strpos($InputData_1_->Keyword, "мужчину") !== false))
 and
((strpos($InputData_1_->Keyword, "овца") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-119";
}
//rule_3-67
if (
((strpos($InputData_1_->Keyword, "карте") !== false))
 and
((strpos($InputData_1_->Keyword, "операции") !== false))
 and
((strpos($InputData_1_->Keyword, "приостановлены") !== false))
 and
((strpos($InputData_1_->Keyword, "срочно") !== false))
 and
((strpos($InputData_1_->Keyword, "свяжитесь") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-67";
}
//rule_4-120
if (
((strpos($InputData_1_->Keyword, "борщом") !== false))
 and
((strpos($InputData_1_->Keyword, "бывшего") !== false))
 and
((strpos($InputData_1_->Keyword, "вкусным") !== false))
 and
((strpos($InputData_1_->Keyword, "любовницу") !== false))
 and
((strpos($InputData_1_->Keyword, "местоположение") !== false))
 and
((strpos($InputData_1_->Keyword, "секс") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-120";
}
//rule_4-121
if (
((strpos($InputData_1_->Keyword, "признак") !== false))
 and
((strpos($InputData_1_->Keyword, "стыда") !== false))
 and
((strpos($InputData_1_->Keyword, "тебе") !== false))
 and
((strpos($InputData_1_->Keyword, "шизофрении") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-121";
}
//rule_4-122
if (
((strpos($InputData_1_->Keyword, "здохни") !== false))
 and
((strpos($InputData_1_->Keyword, "сдохни") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-122";
}
//rule_4-123
if (
((strpos($InputData_1_->Keyword, "передок") !== false))
 and
((strpos($InputData_1_->Keyword, "слаба") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-123";
}
//rule_4-124
if (
((strpos($InputData_1_->Keyword, "бестолковыми") !== false))
 and
((strpos($InputData_1_->Keyword, "бывшему") !== false))
 and
((strpos($InputData_1_->Keyword, "мужу") !== false))
 and
((strpos($InputData_1_->Keyword, "напрягать") !== false))
 and
((strpos($InputData_1_->Keyword, "шалава") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-124";
}
//rule_4-125
if (
((strpos($InputData_1_->Keyword, "ласки") !== false))
 and
((strpos($InputData_1_->Keyword, "любви") !== false))
 and
((strpos($InputData_1_->Keyword, "позорница") !== false))
 and
((strpos($InputData_1_->Keyword, "получает") !== false))
 and
((strpos($InputData_1_->Keyword, "порцию") !== false))
 and
((strpos($InputData_1_->Keyword, "сейчас") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-125";
}
//rule_4-126
if (
((strpos($InputData_1_->Keyword, "любовник") !== false))
 and
((strpos($InputData_1_->Keyword, "мартышка") !== false))
 and
((strpos($InputData_1_->Keyword, "потеряла") !== false))
 and
((strpos($InputData_1_->Keyword, "просто") !== false))
 and
((strpos($InputData_1_->Keyword, "тупая") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-126";
}
//rule_4-127
if (
((strpos($InputData_1_->Keyword, "влезла") !== false))
 and
((strpos($InputData_1_->Keyword, "гуляешь") !== false))
 and
((strpos($InputData_1_->Keyword, "изменяешь") !== false))
 and
((strpos($InputData_1_->Keyword, "семью") !== false))
 and
((strpos($InputData_1_->Keyword, "совести") !== false))
 and
((strpos($InputData_1_->Keyword, "чужую") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-127";
}
//rule_4-128
if (
((strpos($InputData_1_->Keyword, "висят") !== false))
 and
((strpos($InputData_1_->Keyword, "говорит") !== false))
 and
((strpos($InputData_1_->Keyword, "груди") !== false))
 and
((strpos($InputData_1_->Keyword, "подкачать") !== false))
 and
((strpos($InputData_1_->Keyword, "сиськи") !== false))
 and
((strpos($InputData_1_->Keyword, "спаниеля") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-128";
}
//rule_1-167
if (
((strpos($InputData_1_->Keyword, "железка") !== false))
 and
((strpos($InputData_1_->Keyword, "зайдите") !== false))
 and
((strpos($InputData_1_->Keyword, "край") !== false))
 and
((strpos($InputData_1_->Keyword, "лифтом") !== false))
 and
((strpos($InputData_1_->Keyword, "отогните") !== false))
 and
((strpos($InputData_1_->Keyword, "падик") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-167";
}
//rule_4-129
if (
((strpos($InputData_1_->Keyword, "девушку") !== false))
 and
((strpos($InputData_1_->Keyword, "злобная") !== false))
 and
((strpos($InputData_1_->Keyword, "мамашка") !== false))
 and
((strpos($InputData_1_->Keyword, "разводится") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-129";
}
//rule_3-68
if (
((strpos($InputData_1_->Keyword, "звоните") !== false))
 and
((strpos($InputData_1_->Keyword, "совершали") !== false))
 and
((strpos($InputData_1_->Keyword, "списание") !== false))
 and
((strpos($InputData_1_->Keyword, "успешно") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-68";
}
//rule_3-69
if (
((strpos($InputData_1_->Keyword, "visa") !== false))
 and
((strpos($InputData_1_->Keyword, "вашей") !== false))
 and
((strpos($InputData_1_->Keyword, "списание") !== false))
 and
((strpos($InputData_1_->Keyword, "справки") !== false))
 and
((strpos($InputData_1_->Keyword, "успешно") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-69";
}
//rule_3-70
if (
((strpos($InputData_1_->Keyword, "инфо") !== false))
 and
((strpos($InputData_1_->Keyword, "списание") !== false))
 and
((strpos($InputData_1_->Keyword, "успешно") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-70";
}
//rule_3-71
if (
((strpos($InputData_1_->Keyword, "выполнено") !== false))
 and
((strpos($InputData_1_->Keyword, "списание") !== false))
 and
((strpos($InputData_1_->Keyword, "справка") !== false))
 and
((strpos($InputData_1_->Keyword, "успешно") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-71";
}
//rule_3-72
if (
((strpos($InputData_1_->Keyword, "visa/mc") !== false))
 and
((strpos($InputData_1_->Keyword, "вашей") !== false))
 and
((strpos($InputData_1_->Keyword, "списание") !== false))
 and
((strpos($InputData_1_->Keyword, "справки") !== false))
 and
((strpos($InputData_1_->Keyword, "успешно") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-72";
}
//rule_3-73
if (
((strpos($InputData_1_->Keyword, "списание") !== false))
 and
((strpos($InputData_1_->Keyword, "сумму") !== false))
 and
((strpos($InputData_1_->Keyword, "успешно") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-73";
}
//rule_4-130
if (
((strpos($InputData_1_->Keyword, "брошенкой") !== false))
 and
((strpos($InputData_1_->Keyword, "осталась") !== false))
 and
((strpos($InputData_1_->Keyword, "просто") !== false))
 and
((strpos($InputData_1_->Keyword, "смирись") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-130";
}
//rule_4-131
if (
((strpos($InputData_1_->Keyword, "вертихвостка") !== false))
 and
((strpos($InputData_1_->Keyword, "давящая") !== false))
 and
((strpos($InputData_1_->Keyword, "жалость") !== false))
 and
((strpos($InputData_1_->Keyword, "ноги") !== false))
 and
((strpos($InputData_1_->Keyword, "раздвигающая") !== false))
 and
((strpos($InputData_1_->Keyword, "чужими") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-131";
}
//rule_4-132
if (
((strpos($InputData_1_->Keyword, "возрасте") !== false))
 and
((strpos($InputData_1_->Keyword, "женщиной") !== false))
 and
((strpos($InputData_1_->Keyword, "задницей") !== false))
 and
((strpos($InputData_1_->Keyword, "крутишь") !== false))
 and
((strpos($InputData_1_->Keyword, "мужьями") !== false))
 and
((strpos($InputData_1_->Keyword, "позорно") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-132";
}
//rule_3-74
if (
((strpos($InputData_1_->Keyword, "приянята") !== false))
 and
((strpos($InputData_1_->Keyword, "сумма") !== false))
 and
((strpos($InputData_1_->Keyword, "успешна") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-74";
}
//rule_3-75
if (
((strpos($InputData_1_->Keyword, "logo.ru") !== false))
 and
((strpos($InputData_1_->Keyword, "пользования") !== false))
 and
((strpos($InputData_1_->Keyword, "принята") !== false))
 and
((strpos($InputData_1_->Keyword, "саитом") !== false))
 and
((strpos($InputData_1_->Keyword, "сумма") !== false))
 and
((strpos($InputData_1_->Keyword, "успешна") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-75";
}
//rule_3-76
if (
((strpos($InputData_1_->Keyword, "банк") !== false))
 and
((strpos($InputData_1_->Keyword, "вашей") !== false))
 and
((strpos($InputData_1_->Keyword, "карте") !== false))
 and
((strpos($InputData_1_->Keyword, "платежи") !== false))
 and
((strpos($InputData_1_->Keyword, "приостановлены") !== false))
 and
((strpos($InputData_1_->Keyword, "справки") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-76";
}
//rule_4-133
if (
((strpos($InputData_1_->Keyword, "камера") !== false))
 and
((strpos($InputData_1_->Keyword, "лысая") !== false))
 and
((strpos($InputData_1_->Keyword, "пиздёнка") !== false))
 and
((strpos($InputData_1_->Keyword, "пиздец") !== false))
 and
((strpos($InputData_1_->Keyword, "скрытая") !== false))
 and
((strpos($InputData_1_->Keyword, "снимает") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-133";
}
//rule_3-77
if (
((strpos($InputData_1_->Keyword, "выполнена") !== false))
 and
((strpos($InputData_1_->Keyword, "покупка") !== false))
 and
((strpos($InputData_1_->Keyword, "logo.com") !== false))
 and
((strpos($InputData_1_->Keyword, "сумму") !== false))
 and
((strpos($InputData_1_->Keyword, "успешна") !== false))
 and
((strpos($InputData_1_->Keyword, "info") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-77";
}
//rule_4-134
if (
((strpos($InputData_1_->Keyword, "мамочке") !== false))
 and
((strpos($InputData_1_->Keyword, "привет") !== false))
 and
((strpos($InputData_1_->Keyword, "шалавочке") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-134";
}
//rule_4-135
if (
((strpos($InputData_1_->Keyword, "бывшей") !== false))
 and
((strpos($InputData_1_->Keyword, "вашей") !== false))
 and
((strpos($InputData_1_->Keyword, "вообще") !== false))
 and
((strpos($InputData_1_->Keyword, "жены") !== false))
 and
((strpos($InputData_1_->Keyword, "ухажёр") !== false))
 and
((strpos($InputData_1_->Keyword, "любовник") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-135";
}
//rule_4-136
if (
((strpos($InputData_1_->Keyword, "привет") !== false))
 and
((strpos($InputData_1_->Keyword, "шизофреничка") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-136";
}
//rule_4-137
if (
((strpos($InputData_1_->Keyword, "брошенка") !== false))
 and
((strpos($InputData_1_->Keyword, "трогать") !== false))
 and
((strpos($InputData_1_->Keyword, "хватит") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-137";
}
//rule_4-138
if (
((strpos($InputData_1_->Keyword, "лезешь") !== false))
 and
((strpos($InputData_1_->Keyword, "потасканная") !== false))
 and
((strpos($InputData_1_->Keyword, "привет") !== false))
 and
((strpos($InputData_1_->Keyword, "развод") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-138";
}
//rule_4-139
if (
((strpos($InputData_1_->Keyword, "рошенной") !== false))
 and
((strpos($InputData_1_->Keyword, "всеми") !== false))
 and
((strpos($InputData_1_->Keyword, "мужем") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-139";
}
//rule_4-140
if (
((strpos($InputData_1_->Keyword, "обострение") !== false))
 and
((strpos($InputData_1_->Keyword, "потаскуха") !== false))
 and
((strpos($InputData_1_->Keyword, "стрёмная") !== false))
 and
((strpos($InputData_1_->Keyword, "тварина") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-140";
}
//rule_4-141
if (
((strpos($InputData_1_->Keyword, "давалка") !== false))
 and
((strpos($InputData_1_->Keyword, "любовник") !== false))
 and
((strpos($InputData_1_->Keyword, "разводится") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-141";
}
//rule_1-168
if (
((strpos($InputData_1_->Keyword, "аптека") !== false))
 and
((strpos($InputData_1_->Keyword, "запишу") !== false))
 and
((strpos($InputData_1_->Keyword, "тебя") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-168";
}
//rule_1-169
if (
((strpos($InputData_1_->Keyword, "ложи") !== false))
 and
((strpos($InputData_1_->Keyword, "запишу") !== false))
 and
((strpos($InputData_1_->Keyword, "мешок") !== false))
 and
((strpos($InputData_1_->Keyword, "тебя") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-169";
}
//rule_1-170
if (
((strpos($InputData_1_->Keyword, "гребут") !== false))
 and
((strpos($InputData_1_->Keyword, "обясни") !== false))
 and
((strpos($InputData_1_->Keyword, "петухи") !== false))
 and
((strpos($InputData_1_->Keyword, "себя") !== false))
 and
((strpos($InputData_1_->Keyword, "экскаваторы") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-170";
}
//rule_1-171
if (
((strpos($InputData_1_->Keyword, "второй") !== false))
 and
((strpos($InputData_1_->Keyword, "двойные") !== false))
 and
((strpos($InputData_1_->Keyword, "разобрали") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-171";
}
//rule_1-172
if (
((strpos($InputData_1_->Keyword, "затолкан") !== false))
 and
((strpos($InputData_1_->Keyword, "проц") !== false))
 and
((strpos($InputData_1_->Keyword, "сильно") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-172";
}
//rule_1-173
if (
((strpos($InputData_1_->Keyword, "берут") !== false))
 and
((strpos($InputData_1_->Keyword, "другие") !== false))
 and
((strpos($InputData_1_->Keyword, "есть") !== false))
 and
((strpos($InputData_1_->Keyword, "пацаны") !== false))
 and
((strpos($InputData_1_->Keyword, "посмотрят") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-173";
}
//rule_1-174
if (
((strpos($InputData_1_->Keyword, "посмотри") !== false))
 and
((strpos($InputData_1_->Keyword, "руль") !== false))
 and
((strpos($InputData_1_->Keyword, "старый") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-174";
}
//rule_1-175
if (
((strpos($InputData_1_->Keyword, "внизу") !== false))
 and
((strpos($InputData_1_->Keyword, "железная") !== false))
 and
((strpos($InputData_1_->Keyword, "лесница") !== false))
 and
((strpos($InputData_1_->Keyword, "лесницей") !== false))
 and
((strpos($InputData_1_->Keyword, "мусор") !== false))
 and
((strpos($InputData_1_->Keyword, "чердак") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-175";
}
//rule_1-176
if (
((strpos($InputData_1_->Keyword, "вроде") !== false))
 and
((strpos($InputData_1_->Keyword, "ментовка") !== false))
 and
((strpos($InputData_1_->Keyword, "отливом") !== false))
 and
((strpos($InputData_1_->Keyword, "первого") !== false))
 and
((strpos($InputData_1_->Keyword, "подвале") !== false))
 and
((strpos($InputData_1_->Keyword, "этажа") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-176";
}
//rule_1-177
if (
((strpos($InputData_1_->Keyword, "дали") !== false))
 and
((strpos($InputData_1_->Keyword, "логично") !== false))
 and
((strpos($InputData_1_->Keyword, "номер") !== false))
 and
((strpos($InputData_1_->Keyword, "случайно") !== false))
 and
((strpos($InputData_1_->Keyword, "тебе") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-177";
}
//rule_1-178
if (
((strpos($InputData_1_->Keyword, "дать") !== false))
 and
((strpos($InputData_1_->Keyword, "пробу") !== false))
 and
((strpos($InputData_1_->Keyword, "тебе") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-178";
}
//rule_1-179
if (
((strpos($InputData_1_->Keyword, "большой") !== false))
 and
((strpos($InputData_1_->Keyword, "бумажке") !== false))
 and
((strpos($InputData_1_->Keyword, "падик") !== false))
 and
((strpos($InputData_1_->Keyword, "слево") !== false))
 and
((strpos($InputData_1_->Keyword, "титова") !== false))
 and
((strpos($InputData_1_->Keyword, "ящик") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-179";
}
//rule_1-180
if (
((strpos($InputData_1_->Keyword, "делал") !== false))
 and
((strpos($InputData_1_->Keyword, "забрали") !== false))
 and
((strpos($InputData_1_->Keyword, "интерсвязи") !== false))
 and
((strpos($InputData_1_->Keyword, "клада") !== false))
 and
((strpos($InputData_1_->Keyword, "коробке") !== false))
 and
((strpos($InputData_1_->Keyword, "пластовские") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-180";
}
//rule_1-181
if (
((strpos($InputData_1_->Keyword, "готовые") !== false))
 and
((strpos($InputData_1_->Keyword, "тока") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-181";
}
//rule_1-182
if (
((strpos($InputData_1_->Keyword, "клады") !== false))
 and
((strpos($InputData_1_->Keyword, "токо") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-182";
}
//rule_1-183
if (
((strpos($InputData_1_->Keyword, "днях") !== false))
 and
((strpos($InputData_1_->Keyword, "кстати") !== false))
 and
((strpos($InputData_1_->Keyword, "такой") !== false))
 and
((strpos($InputData_1_->Keyword, "токо") !== false))
 and
((strpos($InputData_1_->Keyword, "увеличу") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-183";
}
//rule_1-184
if (
((strpos($InputData_1_->Keyword, "клад") !== false))
 and
((strpos($InputData_1_->Keyword, "рублевый") !== false))
 and
((strpos($InputData_1_->Keyword, "токо") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-184";
}
//rule_1-185
if (
((strpos($InputData_1_->Keyword, "левую") !== false))
 and
((strpos($InputData_1_->Keyword, "оптика") !== false))
 and
((strpos($InputData_1_->Keyword, "правую") !== false))
 and
((strpos($InputData_1_->Keyword, "руку") !== false))
 and
((strpos($InputData_1_->Keyword, "травой") !== false))
 and
((strpos($InputData_1_->Keyword, "тротуару") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-185";
}
//rule_1-186
if (
((strpos($InputData_1_->Keyword, "взяли") !== false))
 and
((strpos($InputData_1_->Keyword, "впридачу") !== false))
 and
((strpos($InputData_1_->Keyword, "пацаны") !== false))
 and
((strpos($InputData_1_->Keyword, "похоже") !== false))
 and
((strpos($InputData_1_->Keyword, "свое") !== false))
 and
((strpos($InputData_1_->Keyword, "твои") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-186";
}
//rule_1-187
if (
((strpos($InputData_1_->Keyword, "гдето") !== false))
 and
((strpos($InputData_1_->Keyword, "подьезда") !== false))
 and
((strpos($InputData_1_->Keyword, "понимаю") !== false))
 and
((strpos($InputData_1_->Keyword, "рядом") !== false))
 and
((strpos($InputData_1_->Keyword, "твои") !== false))
 and
((strpos($InputData_1_->Keyword, "этого") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-187";
}
//rule_1-188
if (
((strpos($InputData_1_->Keyword, "буду") !== false))
 and
((strpos($InputData_1_->Keyword, "замарачиваться") !== false))
 and
((strpos($InputData_1_->Keyword, "пакет") !== false))
 and
((strpos($InputData_1_->Keyword, "положи") !== false))
 and
((strpos($InputData_1_->Keyword, "рублей") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-188";
}
//rule_1-189
if (
((strpos($InputData_1_->Keyword, "будеш") !== false))
 and
((strpos($InputData_1_->Keyword, "если") !== false))
 and
((strpos($InputData_1_->Keyword, "спросиш") !== false))
 and
((strpos($InputData_1_->Keyword, "поймеш") !== false))
 and
((strpos($InputData_1_->Keyword, "терминала") !== false))
 and
((strpos($InputData_1_->Keyword, "чтото") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-189";
}
//rule_1-190
if (
((strpos($InputData_1_->Keyword, "брал") !== false))
 and
((strpos($InputData_1_->Keyword, "вчера") !== false))
 and
((strpos($InputData_1_->Keyword, "зверобой") !== false))
 and
((strpos($InputData_1_->Keyword, "любой") !== false))
 and
((strpos($InputData_1_->Keyword, "наполнитель") !== false))
 and
((strpos($InputData_1_->Keyword, "ромашка") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-190";
}
//rule_1-191
if (
((strpos($InputData_1_->Keyword, "докидывай") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-191";
}
//rule_1-192
if (
((strpos($InputData_1_->Keyword, "закинеш") !== false))
 and
((strpos($InputData_1_->Keyword, "когда") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-192";
}
//rule_1-193
if (
((strpos($InputData_1_->Keyword, "внимательно") !== false))
 and
((strpos($InputData_1_->Keyword, "всегда") !== false))
 and
((strpos($InputData_1_->Keyword, "паникуй") !== false))
 and
((strpos($InputData_1_->Keyword, "смотри") !== false))
 and
((strpos($InputData_1_->Keyword, "читай") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-193";
}
//rule_1-194
if (
((strpos($InputData_1_->Keyword, "клады") !== false))
 and
((strpos($InputData_1_->Keyword, "адрес") !== false))
 and
((strpos($InputData_1_->Keyword, "кину") !== false))
 and
((strpos($InputData_1_->Keyword, "молниеносно") !== false))
 and
((strpos($InputData_1_->Keyword, "отблагодари") !== false))
 and
((strpos($InputData_1_->Keyword, "сначала") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-194";
}
//rule_1-195
if (
((strpos($InputData_1_->Keyword, "ложиш") !== false))
 and
((strpos($InputData_1_->Keyword, "нажать") !== false))
 and
((strpos($InputData_1_->Keyword, "неправильно") !== false))
 and
((strpos($InputData_1_->Keyword, "оплату") !== false))
 and
((strpos($InputData_1_->Keyword, "пришло") !== false))
 and
((strpos($InputData_1_->Keyword, "услуг") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-195";
}
//rule_1-196
if (
((strpos($InputData_1_->Keyword, "кончинуй") !== false))
 and
((strpos($InputData_1_->Keyword, "пидор") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-196";
}
//rule_1-197
if (
((strpos($InputData_1_->Keyword, "больше") !== false))
 and
((strpos($InputData_1_->Keyword, "брал") !== false))
 and
((strpos($InputData_1_->Keyword, "качество") !== false))
 and
((strpos($InputData_1_->Keyword, "количество") !== false))
 and
((strpos($InputData_1_->Keyword, "пробу") !== false))
 and
((strpos($InputData_1_->Keyword, "самое") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-197";
}
//rule_1-198
if (
((strpos($InputData_1_->Keyword, "пробу") !== false))
 and
((strpos($InputData_1_->Keyword, "просил") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-198";
}
//rule_1-199
if (
((strpos($InputData_1_->Keyword, "если") !== false))
 and
((strpos($InputData_1_->Keyword, "знать") !== false))
 and
((strpos($InputData_1_->Keyword, "надо") !== false))
 and
((strpos($InputData_1_->Keyword, "положил") !== false))
 and
((strpos($InputData_1_->Keyword, "пробу") !== false))
 and
((strpos($InputData_1_->Keyword, "просил") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-199";
}
//rule_1-200
if (
((strpos($InputData_1_->Keyword, "есть") !== false))
 and
((strpos($InputData_1_->Keyword, "кроме") !== false))
 and
((strpos($InputData_1_->Keyword, "люди") !== false))
 and
((strpos($InputData_1_->Keyword, "тебя") !== false))
 and
((strpos($InputData_1_->Keyword, "устраиваеш") !== false))
 and
((strpos($InputData_1_->Keyword, "чекхарду") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-200";
}
//rule_1-201
if (
((strpos($InputData_1_->Keyword, "дубу") !== false))
 and
((strpos($InputData_1_->Keyword, "какой") !== false))
 and
((strpos($InputData_1_->Keyword, "магазин") !== false))
 and
((strpos($InputData_1_->Keyword, "рухнул") !== false))
 and
((strpos($InputData_1_->Keyword, "совсем") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-201";
}
//rule_1-202
if (
((strpos($InputData_1_->Keyword, "вижу") !== false))
 and
((strpos($InputData_1_->Keyword, "всегда") !== false))
 and
((strpos($InputData_1_->Keyword, "мешаеш") !== false))
 and
((strpos($InputData_1_->Keyword, "писать") !== false))
 and
((strpos($InputData_1_->Keyword, "понимаю") !== false))
 and
((strpos($InputData_1_->Keyword, "спешиш") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-202";
}
//rule_1-203
if (
((strpos($InputData_1_->Keyword, "будеш") !== false))
 and
((strpos($InputData_1_->Keyword, "времени") !== false))
 and
((strpos($InputData_1_->Keyword, "скоко") !== false))
 and
((strpos($InputData_1_->Keyword, "собрался") !== false))
 and
((strpos($InputData_1_->Keyword, "танцы") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-203";
}
//rule_1-204
if (
((strpos($InputData_1_->Keyword, "молчиш") !== false))
 and
((strpos($InputData_1_->Keyword, "филя") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-204";
}
//rule_1-205
if (
((strpos($InputData_1_->Keyword, "есть") !== false))
 and
((strpos($InputData_1_->Keyword, "ищет") !== false))
 and
((strpos($InputData_1_->Keyword, "филя") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-205";
}
//rule_1-206
if (
((strpos($InputData_1_->Keyword, "нужны") !== false))
 and
((strpos($InputData_1_->Keyword, "работаю") !== false))
 and
((strpos($InputData_1_->Keyword, "такие") !== false))
 and
((strpos($InputData_1_->Keyword, "третий") !== false))
 and
((strpos($InputData_1_->Keyword, "филя") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-206";
}
//rule_1-207
if (
((strpos($InputData_1_->Keyword, "гляну") !== false))
 and
((strpos($InputData_1_->Keyword, "куда") !== false))
 and
((strpos($InputData_1_->Keyword, "ложил") !== false))
 and
((strpos($InputData_1_->Keyword, "переживай") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-207";
}
//rule_1-208
if (
((strpos($InputData_1_->Keyword, "надо") !== false))
 and
((strpos($InputData_1_->Keyword, "штоли") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-208";
}
//rule_1-209
if (
((strpos($InputData_1_->Keyword, "вообще") !== false))
 and
((strpos($InputData_1_->Keyword, "прет") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-209";
}
//rule_1-210
if (
((strpos($InputData_1_->Keyword, "органика") !== false))
 and
((strpos($InputData_1_->Keyword, "бошки") !== false))
 and
((strpos($InputData_1_->Keyword, "такое") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-210";
}
//rule_1-211
if (
((strpos($InputData_1_->Keyword, "махра") !== false))
 and
((strpos($InputData_1_->Keyword, "органика") !== false))
 and
((strpos($InputData_1_->Keyword, "бошки") !== false))
 and
((strpos($InputData_1_->Keyword, "такое") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-211";
}
//rule_1-212
if (
((strpos($InputData_1_->Keyword, "друг") !== false))
 and
((strpos($InputData_1_->Keyword, "какая") !== false))
 and
((strpos($InputData_1_->Keyword, "мутная") !== false))
 and
((strpos($InputData_1_->Keyword, "тебя") !== false))
 and
((strpos($InputData_1_->Keyword, "феня") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-212";
}
//rule_1-213
if (
((strpos($InputData_1_->Keyword, "филя") !== false))
 and
((strpos($InputData_1_->Keyword, "хотел") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-213";
}
//rule_1-214
if (
((strpos($InputData_1_->Keyword, "городе") !== false))
 and
((strpos($InputData_1_->Keyword, "зашуганные") !== false))
 and
((strpos($InputData_1_->Keyword, "настороженные") !== false))
 and
((strpos($InputData_1_->Keyword, "пробу") !== false))
 and
((strpos($InputData_1_->Keyword, "просил") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-214";
}
//rule_1-215
if (
((strpos($InputData_1_->Keyword, "движ") !== false))
 and
((strpos($InputData_1_->Keyword, "сюда") !== false))
 and
((strpos($InputData_1_->Keyword, "туда") !== false))
 and
((strpos($InputData_1_->Keyword, "хоть") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-215";
}
//rule_4-142
if (
((strpos($InputData_1_->Keyword, "уймись") !== false))
 and
((strpos($InputData_1_->Keyword, "хватит") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-142";
}
//rule_4-143
if (
((strpos($InputData_1_->Keyword, "ровно") !== false))
 and
((strpos($InputData_1_->Keyword, "тебе") !== false))
 and
((strpos($InputData_1_->Keyword, "хули") !== false))
 and
((strpos($InputData_1_->Keyword, "экономически") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-143";
}
//rule_1-216
if (
((strpos($InputData_1_->Keyword, "забрали") !== false))
 and
((strpos($InputData_1_->Keyword, "пласта") !== false))
 and
((strpos($InputData_1_->Keyword, "хуеплеты") !== false))
 and
((strpos($InputData_1_->Keyword, "чужое") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-216";
}
//rule_1-217
if (
((strpos($InputData_1_->Keyword, "двигался") !== false))
 and
((strpos($InputData_1_->Keyword, "емана") !== false))
 and
((strpos($InputData_1_->Keyword, "никто") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-217";
}
//rule_1-218
if (
((strpos($InputData_1_->Keyword, "зеленым") !== false))
 and
((strpos($InputData_1_->Keyword, "туалетом") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-218";
}
//rule_1-219
if (
((strpos($InputData_1_->Keyword, "калитки") !== false))
 and
((strpos($InputData_1_->Keyword, "права") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-219";
}
//rule_1-220
if (
((strpos($InputData_1_->Keyword, "качество") !== false))
 and
((strpos($InputData_1_->Keyword, "толкает") !== false))
 and
((strpos($InputData_1_->Keyword, "швыра") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-220";
}
//rule_1-221
if (
((strpos($InputData_1_->Keyword, "делать") !== false))
 and
((strpos($InputData_1_->Keyword, "кладов") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-221";
}
//rule_4-144
if (
((strpos($InputData_1_->Keyword, "сдохни") !== false))
 and
((strpos($InputData_1_->Keyword, "скорее") !== false))
 and
((strpos($InputData_1_->Keyword, "тошная") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-144";
}
//rule_1-222
if (
((strpos($InputData_1_->Keyword, "времени") !== false))
 and
((strpos($InputData_1_->Keyword, "надо") !== false))
 and
((strpos($InputData_1_->Keyword, "скоко") !== false))
 and
((strpos($InputData_1_->Keyword, "спешу") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-222";
}
//rule_1-223
if (
((strpos($InputData_1_->Keyword, "времени") !== false))
 and
((strpos($InputData_1_->Keyword, "скоко") !== false))
 and
((strpos($InputData_1_->Keyword, "точно") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-223";
}
//rule_1-224
if (
((strpos($InputData_1_->Keyword, "возникла") !== false))
 and
((strpos($InputData_1_->Keyword, "ждать") !== false))
 and
((strpos($InputData_1_->Keyword, "необходимость") !== false))
 and
((strpos($InputData_1_->Keyword, "отлучиться") !== false))
 and
((strpos($InputData_1_->Keyword, "скоко") !== false))
 and
((strpos($InputData_1_->Keyword, "тебя") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-224";
}
//rule_1-225
if (
((strpos($InputData_1_->Keyword, "плакатом") !== false))
 and
((strpos($InputData_1_->Keyword, "вывеской") !== false))
 and
((strpos($InputData_1_->Keyword, "рекламой") !== false))
 and
((strpos($InputData_1_->Keyword, "слева") !== false))
 and
((strpos($InputData_1_->Keyword, "снизу") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-225";
}
//rule_1-226
if (
((strpos($InputData_1_->Keyword, "вверху") !== false))
 and
((strpos($InputData_1_->Keyword, "стене") !== false))
 and
((strpos($InputData_1_->Keyword, "углубление") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-226";
}
//rule_1-227
if (
((strpos($InputData_1_->Keyword, "количество") !== false))
 and
((strpos($InputData_1_->Keyword, "сегодня") !== false))
 and
((strpos($InputData_1_->Keyword, "увеличил") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-227";
}
//rule_1-228
if (
((strpos($InputData_1_->Keyword, "емане") !== false))
 and
((strpos($InputData_1_->Keyword, "закладчиком") !== false))
 and
((strpos($InputData_1_->Keyword, "свяэался") !== false))
 and
((strpos($InputData_1_->Keyword, "токо") !== false))
 and
((strpos($InputData_1_->Keyword, "троицке") !== false))
 and
((strpos($InputData_1_->Keyword, "челике") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-228";
}
//rule_1-229
if (
((strpos($InputData_1_->Keyword, "сп-500") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-229";
}
//rule_1-230
if (
((strpos($InputData_1_->Keyword, "1п-500") !== false))
 and
((strpos($InputData_1_->Keyword, "есть") !== false))
 and
((strpos($InputData_1_->Keyword, "киви") !== false))
 and
((strpos($InputData_1_->Keyword, "клады") !== false))
 and
((strpos($InputData_1_->Keyword, "пробы") !== false))
 and
((strpos($InputData_1_->Keyword, "спайс") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-230";
}
//rule_3-78
if (
((strpos($InputData_1_->Keyword, "карты") !== false))
 and
((strpos($InputData_1_->Keyword, "списание") !== false))
 and
((strpos($InputData_1_->Keyword, "справка") !== false))
 and
((strpos($InputData_1_->Keyword, "успешно") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-78";
}
//rule_3-79
if (
((strpos($InputData_1_->Keyword, "вашей") !== false))
 and
((strpos($InputData_1_->Keyword, "карты") !== false))
 and
((strpos($InputData_1_->Keyword, "списание") !== false))
 and
((strpos($InputData_1_->Keyword, "справка") !== false))
 and
((strpos($InputData_1_->Keyword, "успешно") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-79";
}
//rule_3-80
if (
((strpos($InputData_1_->Keyword, "вашей") !== false))
 and
((strpos($InputData_1_->Keyword, "карты") !== false))
 and
((strpos($InputData_1_->Keyword, "списание") !== false))
 and
((strpos($InputData_1_->Keyword, "успешно") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-80";
}
//rule_1-231
if (
((strpos($InputData_1_->Keyword, "интерсвязи") !== false))
 and
((strpos($InputData_1_->Keyword, "межде") !== false))
 and
((strpos($InputData_1_->Keyword, "падик") !== false))
 and
((strpos($InputData_1_->Keyword, "спортивная") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-231";
}
//rule_1-232
if (
((strpos($InputData_1_->Keyword, "лестницей") !== false))
 and
((strpos($InputData_1_->Keyword, "падик") !== false))
 and
((strpos($InputData_1_->Keyword, "слево") !== false))
 and
((strpos($InputData_1_->Keyword, "спортивная") !== false))
 and
((strpos($InputData_1_->Keyword, "углу") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-232";
}
//rule_1-233
if (
((strpos($InputData_1_->Keyword, "интерсвязи") !== false))
 and
((strpos($InputData_1_->Keyword, "падик") !== false))
 and
((strpos($InputData_1_->Keyword, "спортивная") !== false))
 and
((strpos($InputData_1_->Keyword, "этаж") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-233";
}
//rule_4-145
if (
((strpos($InputData_1_->Keyword, "обидно") !== false))
 and
((strpos($InputData_1_->Keyword, "обострение") !== false))
 and
((strpos($InputData_1_->Keyword, "первые") !== false))
 and
((strpos($InputData_1_->Keyword, "признаки") !== false))
 and
((strpos($InputData_1_->Keyword, "ревности") !== false))
 and
((strpos($InputData_1_->Keyword, "смотри") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-145";
}
//rule_1-234
if (
((strpos($InputData_1_->Keyword, "если") !== false))
 and
((strpos($InputData_1_->Keyword, "забрали") !== false))
 and
((strpos($InputData_1_->Keyword, "посмотрят") !== false))
 and
((strpos($InputData_1_->Keyword, "счас") !== false))
 and
((strpos($InputData_1_->Keyword, "твои") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-234";
}
//rule_1-235
if (
((strpos($InputData_1_->Keyword, "балланс") !== false))
 and
((strpos($InputData_1_->Keyword, "должен") !== false))
 and
((strpos($InputData_1_->Keyword, "кладов") !== false))
 and
((strpos($InputData_1_->Keyword, "работой") !== false))
 and
((strpos($InputData_1_->Keyword, "считай") !== false))
 and
((strpos($InputData_1_->Keyword, "телефон") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-235";
}
//rule_3-81
if (
((strpos($InputData_1_->Keyword, "банк") !== false))
 and
((strpos($InputData_1_->Keyword, "почта") !== false))
 and
((strpos($InputData_1_->Keyword, "свяжитесь") !== false))
 and
((strpos($InputData_1_->Keyword, "срочно") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_3-81";
}
//rule_1-236
if (
((strpos($InputData_1_->Keyword, "киви") !== false))
 and
((strpos($InputData_1_->Keyword, "комент") !== false))
 and
((strpos($InputData_1_->Keyword, "мегафон") !== false))
 and
((strpos($InputData_1_->Keyword, "придумай") !== false))
 and
((strpos($InputData_1_->Keyword, "доступно") !== false))
 and
((strpos($InputData_1_->Keyword, "терминал") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-236";
}
//rule_1-237
if (
((strpos($InputData_1_->Keyword, "есть") !== false))
 and
((strpos($InputData_1_->Keyword, "мягкий") !== false))
 and
((strpos($InputData_1_->Keyword, "работаю") !== false))
 and
((strpos($InputData_1_->Keyword, "россыпь") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-237";
}
//rule_1-238
if (
((strpos($InputData_1_->Keyword, "будет") !== false))
 and
((strpos($InputData_1_->Keyword, "докидывай") !== false))
 and
((strpos($InputData_1_->Keyword, "отдам") !== false))
 and
((strpos($InputData_1_->Keyword, "пробы") !== false))
 and
((strpos($InputData_1_->Keyword, "разобрали") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-238";
}
//rule_1-239
if (
((strpos($InputData_1_->Keyword, "белым") !== false))
 and
((strpos($InputData_1_->Keyword, "брусочком") !== false))
 and
((strpos($InputData_1_->Keyword, "вверху") !== false))
 and
((strpos($InputData_1_->Keyword, "падик") !== false))
 and
((strpos($InputData_1_->Keyword, "слева") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-239";
}
//rule_1-240
if (
((strpos($InputData_1_->Keyword, "забереш") !== false))
 and
((strpos($InputData_1_->Keyword, "отпишеш") !== false))
 and
((strpos($InputData_1_->Keyword, "падик") !== false))
 and
((strpos($InputData_1_->Keyword, "ящиком") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-240";
}
//rule_1-241
if (
((strpos($InputData_1_->Keyword, "дальняя") !== false))
 and
((strpos($InputData_1_->Keyword, "камнем") !== false))
 and
((strpos($InputData_1_->Keyword, "ниша") !== false))
 and
((strpos($InputData_1_->Keyword, "падик") !== false))
 and
((strpos($InputData_1_->Keyword, "подвал") !== false))
 and
((strpos($InputData_1_->Keyword, "слево") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-241";
}
//rule_1-242
if (
((strpos($InputData_1_->Keyword, "зеленым") !== false))
 and
((strpos($InputData_1_->Keyword, "отливом") !== false))
 and
((strpos($InputData_1_->Keyword, "слево") !== false))
 and
((strpos($InputData_1_->Keyword, "торца") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-242";
}
//rule_1-243
if (
((strpos($InputData_1_->Keyword, "есть") !== false))
 and
((strpos($InputData_1_->Keyword, "легальный") !== false))
 and
((strpos($InputData_1_->Keyword, "микс") !== false))
 and
((strpos($InputData_1_->Keyword, "слабенький") !== false))
 and
((strpos($InputData_1_->Keyword, "такой") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-243";
}
//rule_1-244
if (
((strpos($InputData_1_->Keyword, "даймонд") !== false))
 and
((strpos($InputData_1_->Keyword, "есть") !== false))
 and
((strpos($InputData_1_->Keyword, "легального") !== false))
 and
((strpos($InputData_1_->Keyword, "микса") !== false))
 and
((strpos($InputData_1_->Keyword, "нелегал") !== false))
 and
((strpos($InputData_1_->Keyword, "пробник") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-244";
}
//rule_1-245
if (
((strpos($InputData_1_->Keyword, "занимаюсь") !== false))
 and
((strpos($InputData_1_->Keyword, "этим") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-245";
}
//rule_1-246
if (
((strpos($InputData_1_->Keyword, "пробу") !== false))
 and
((strpos($InputData_1_->Keyword, "тебе") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-246";
}
//rule_1-247
if (
((strpos($InputData_1_->Keyword, "бесплатные") !== false))
 and
((strpos($InputData_1_->Keyword, "кидаю") !== false))
 and
((strpos($InputData_1_->Keyword, "кончались") !== false))
 and
((strpos($InputData_1_->Keyword, "ложи") !== false))
 and
((strpos($InputData_1_->Keyword, "обьясняю") !== false))
 and
((strpos($InputData_1_->Keyword, "пробы") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-247";
}
//rule_1-248
if (
((strpos($InputData_1_->Keyword, "адреса") !== false))
 and
((strpos($InputData_1_->Keyword, "второго") !== false))
 and
((strpos($InputData_1_->Keyword, "клад") !== false))
 and
((strpos($InputData_1_->Keyword, "неработаю") !== false))
 and
((strpos($InputData_1_->Keyword, "нетуодного") !== false))
 and
((strpos($InputData_1_->Keyword, "6реально") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-248";
}
//rule_1-249
if (
((strpos($InputData_1_->Keyword, "долгий") !== false))
 and
((strpos($InputData_1_->Keyword, "качество") !== false))
 and
((strpos($InputData_1_->Keyword, "мягкий") !== false))
 and
((strpos($InputData_1_->Keyword, "передохли") !== false))
 and
((strpos($InputData_1_->Keyword, "улучшать") !== false))
 and
((strpos($InputData_1_->Keyword, "чтоб") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-249";
}
//rule_1-250
if (
((strpos($InputData_1_->Keyword, "магаз") !== false))
 and
((strpos($InputData_1_->Keyword, "полчаса") !== false))
 and
((strpos($InputData_1_->Keyword, "порой") !== false))
 and
((strpos($InputData_1_->Keyword, "теряйте") !== false))
 and
((strpos($InputData_1_->Keyword, "теряюсь") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-250";
}
//rule_1-251
if (
((strpos($InputData_1_->Keyword, "взял") !== false))
 and
((strpos($InputData_1_->Keyword, "вопрос") !== false))
 and
((strpos($InputData_1_->Keyword, "нету") !== false))
 and
((strpos($InputData_1_->Keyword, "ними") !== false))
 and
((strpos($InputData_1_->Keyword, "проверил") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-251";
}
//rule_4-146
if (
((strpos($InputData_1_->Keyword, "изнасилую") !== false))
 and
((strpos($InputData_1_->Keyword, "тебя") !== false))
){
 $OutPut_1_->MesStatus == "на_модерации";
 $OutPut_1_->ClientStatus == "0";
 $OutPut_1_->FiredRule == "rule_4-146";
}
//rule_1-252
if (
((strpos($InputData_1_->Keyword, "завтра") !== false))
 and
((strpos($InputData_1_->Keyword, "нибудь") !== false))
 and
((strpos($InputData_1_->Keyword, "отключаюсь") !== false))
 and
((strpos($InputData_1_->Keyword, "помню") !== false))
 and
((strpos($InputData_1_->Keyword, "решим") !== false))
 and
((strpos($InputData_1_->Keyword, "счас") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-252";
}
//rule_1-253
if (
((strpos($InputData_1_->Keyword, "завтра") !== false))
 and
((strpos($InputData_1_->Keyword, "надо") !== false))
 and
((strpos($InputData_1_->Keyword, "спать") !== false))
 and
((strpos($InputData_1_->Keyword, "счас") !== false))
 and
((strpos($InputData_1_->Keyword, "тока") !== false))
 and
((strpos($InputData_1_->Keyword, "шуми") !== false))
){
 $OutPut_1_->MesStatus == "ошибка";
 $OutPut_1_->ClientStatus == "1";
 $OutPut_1_->FiredRule == "rule_1-253";
}
?>
