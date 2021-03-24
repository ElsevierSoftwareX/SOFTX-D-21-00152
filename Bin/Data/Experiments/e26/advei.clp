;**************************************************************
; Наименование базы знаний: Knowledge base 28250899929
;**************************************************************
; Описание: 
;**************************************************************
;********************* Templates ******************************
(deftemplate structural-element ;F1 137-17.csv::structural element
(slot Name) ;F1 137-17.csv::pipe 159х4,5-180 for the output of the rest of the product;pipe 273х8-200 for the output of the vapour product;pipe 159х4,5-190 for the input of the coolant;pipe 57х4-110 for the drainage;люк-лаз патрубок 480х10-200;бобышка регулятора уровня;для магнометра;люк монтажный патрубок 219х6-258;к указателю уровня;штуцер ввода трубн.пучка патрубок (1,2,3)700х36-335;
(slot amount-pcs) ;F1 137-17.csv::amount
(slot pressure-mpa) ;F1 137-17.csv::pressure, mpa
)
(deftemplate material ;F1 137-17.csv::material
(slot marka) ;F1 137-17.csv::marka
(slot standard) ;F1 137-17.csv::standard
)
;************************* Rules ******************************
(defrule has_a_G001-R001 "has a G001-R001"
(structural-element ;structural element
(Name "PIPE 159Х4,5-180 FOR THE OUTPUT OF THE REST OF THE PRODUCT")
(pressure-mpa "25")
)
=>
(assert 
(material ;material
(marka "STEEL 20")
(standard "1050-88")
))
)
(defrule has a G001-R002 "has a G001-R002"
(structural-element ;structural element
(Name "PIPE 273Х8-200 FOR THE OUTPUT OF THE VAPOUR PRODUCT")
(pressure,-mpa "25")
)
=>
(assert 
(material ;material
(marka "STEEL 20")
(standard "1050-88")
))
)
(defrule has a G001-R003 "has a G001-R003"
(structural-element ;structural element
(Name "PIPE 159Х4,5-190 FOR THE INPUT OF THE COOLANT")
(pressure,-mpa "25")
)
=>
(assert 
(material ;material
(marka "STEEL 20")
(standard "1050-88")
))
)
(defrule has a G001-R004 "has a G001-R004"
(structural-element ;structural element
(Name "PIPE 57Х4-110 FOR THE DRAINAGE")
(pressure,-mpa "25")
)
=>
(assert 
(material ;material
(marka "STEEL 20")
(standard "1050-88")
))
)
(defrule has a G001-R005 "has a G001-R005"
(structural-element ;structural element
(Name "ЛЮК-ЛАЗ ПАТРУБОК 480Х10-200")
(pressure,-mpa "25")
)
=>
(assert 
(material ;material
(marka "09G2С")
(standard "5520-79")
))
)
(defrule has a G001-R006 "has a G001-R006"
(structural-element ;structural element
(Name "БОБЫШКА РЕГУЛЯТОРА УРОВНЯ")
(pressure,-mpa "-")
)
=>
(assert 
(material ;material
(marka "STEEL 20")
(standard "1050-88")
))
)
(defrule has a G001-R007 "has a G001-R007"
(structural-element ;structural element
(Name "ДЛЯ МАГНОМЕТРА")
(pressure,-mpa "-")
)
=>
(assert 
(material ;material
(marka "STEEL 20")
(standard "1050-88")
))
)
(defrule has a G001-R008 "has a G001-R008"
(structural-element ;structural element
(Name "ЛЮК МОНТАЖНЫЙ ПАТРУБОК 219Х6-258")
(pressure,-mpa "25")
)
=>
(assert 
(material ;material
(marka "STEEL 20")
(standard "1050-88")
))
)
(defrule has a G001-R009 "has a G001-R009"
(structural-element ;structural element
(Name "К УКАЗАТЕЛЮ УРОВНЯ")
(pressure,-mpa "-")
)
=>
(assert 
(material ;material
(marka "STEEL 20")
(standard "1050-88")
))
)
(defrule has a G001-R010 "has a G001-R010"
(structural-element ;structural element
(Name "ШТУЦЕР ВВОДА ТРУБН.ПУЧКА ПАТРУБОК (1,2,3)700Х36-335")
(pressure,-mpa "25")
)
=>
(assert 
(material ;material
(marka "09G2С")
(standard "5520-79")
))
)
