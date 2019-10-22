;----------- Глоб.переменные -----------
(defglobal 
  ?*i* = 0
)

;-------------- Шаблоны ----------------

(deftemplate exist-dam			;наблюдаемые повреждения
   (slot name (default ""))		;наименование повреждения
   (slot type (default ""))		;тип (в частном случает тип трещинообразования)
   (slot stress-type (default ""))	;тип напряжения
   (slot mesto-zarozdenia (default ""))	;место зарождения (например, трещины)	
   (slot istochnik (default ""))	;источник
   (slot mestopolozenie (default ""))	;местоположение
   (slot orientacia (default "")) 	;ориентировка (например, трещины)
   (slot glubina (default "")) 		;глубина
   (slot dlina (default "")) 		;длина
   (slot diametr (default "")) 		;диаметр
   (slot forma-v-izlome (default ""))	;форма в изломе
   (slot kolichestvo (default "")) 	;количество повреждений близких по размеру
   (slot velichina-raskritia (default ""))		;велична раскрытия
   (slot tech-pered-razrusheniem (default "")) ;критерий течь перед разрушением
   (slot ex-dp (default "")) 		;наблюдаемый деградационный процесс
   (slot cf (default "0")) 		;коэффициент уверенности
)	

(deftemplate incident-object     	;объект инцидента
   (slot name (default "НЕТ ДАННЫХ"))	;наименование объекта	
)

(deftemplate incident-object-stress	;нагрузка на объект инцидента
   (slot name (default "НЕТ ДАННЫХ"))	;наименование нагрузки
   (slot value )                        ;значение нагружений	
)

(deftemplate rec-act			;рекомендуемые мероприятия
   (slot name (default ""))		;наименование
   (slot ex-dp (default "")) 		;наблюдаемый деградационный процесс
   (slot ex-dam (default "")) 		;наблюдаемое повреждение
   (slot ex-des (default "")) 		;наблюдаемое разрушение
   (slot ex-fai (default "")) 		;наблюдаемый отказ
   (slot cf (default "1")) 		;коэффициент уверенности   
)


(deftemplate exist-meh-fai	        ;наблюдаемая механизм отказа
   (slot name (default ""))		;наименование
   (slot id (type INTEGER))		;код механизма			
   (slot tag-ev (type INTEGER))		;ссылка на инициирующее событие
   (slot cf (default "1")) 		;коэффициент уверенности   
)

(deftemplate exist-meh-acc	        ;наблюдаемая механизм авайрийной ситуации
   (slot name (default ""))		;наименование
   (slot id (type INTEGER))		;код механизма
   (slot tag-ev (type INTEGER))		;ссылка на инициирующее событие
   (slot cf (default "1")) 		;коэффициент уверенности   
)

(deftemplate exist-meh-emj	        ;наблюдаемая механизм аварии
   (slot name (default ""))		;наименование
   (slot id (type INTEGER))		;код механизма
   (slot tag-ev (type INTEGER))		;ссылка на инициирующее событие
   (slot cf (default "1")) 		;коэффициент уверенности   
)

(deftemplate exist-meh-ems	        ;наблюдаемая механизм черезвычайной ситуации
   (slot name (default ""))		;наименование
   (slot id (type INTEGER))		;код механизма
   (slot tag-ev (type INTEGER))		;ссылка на инициирующее событие
   (slot cf (default "1")) 		;коэффициент уверенности   
)

(deftemplate exist-kin-fai	        ;наблюдаемая кинетика отказа
   (slot name (default ""))		;наименование
   (slot id (type INTEGER))		;код кинетики
   (slot tag-meh (type INTEGER))	;ссылка на механизм
   (slot tag-ev (type INTEGER))		;ссылка на инициирующее событие
   (slot cf (default "1")) 		;коэффициент уверенности   
)

(deftemplate exist-kin-acc	        ;наблюдаемая кинетика аварийной ситуации
   (slot name (default ""))		;наименование
   (slot id (type INTEGER))		;код кинетики
   (slot tag-meh (type INTEGER))	;ссылка на механизм
   (slot tag-ev (type INTEGER))		;ссылка на инициирующее событие
   (slot cf (default "1")) 		;коэффициент уверенности   
)

(deftemplate exist-kin-amj	        ;наблюдаемая кинетика аварии
   (slot name (default ""))		;наименование
   (slot id (type INTEGER))		;код кинетики
   (slot tag-meh (type INTEGER))	;ссылка на механизм
   (slot tag-ev (type INTEGER))		;ссылка на инициирующее событие
   (slot cf (default "1")) 		;коэффициент уверенности   
)

(deftemplate exist-kin-ems	        ;наблюдаемая кинетика черезвычайной ситуации
   (slot name (default ""))		;наименование
   (slot id (type INTEGER))		;код кинетики
   (slot tag-meh (type INTEGER))	;ссылка на механизм
   (slot tag-ev (type INTEGER))		;ссылка на инициирующее событие
   (slot cf (default "1")) 		;коэффициент уверенности   
)

(deftemplate exist-event		;наблюдаемое событие кинетики
   (slot id (type INTEGER))		;код события
   (slot name)				;наименование события
   (slot tag-ev (type INTEGER))		;ссылка на инициирующее событие
   (slot probability (default "1.0"))	;вероятность возникновения
   (slot course)			;причина возникновения
   (slot cf (default "1")) 		;коэффициент уверенности 
)

;-------------- Функции ----------------

(deffunction set-id()
  (bind ?*i* (+ 1 ?*i*))  
  ?*i*
)

;-------------- Правила ОТКАЗ----------------
(defrule fai-mechanism-1001 ""			;правило выявления (механизма)
   (incident-object				;объект инцидента     	
      (name "ДЕГИДРАТОР")
   )
   (incident-object-stress			;нагрузка на объект инцидента
      (name "ДАВЛЕНИЕ")				;наименование нагрузки
      (value "ИЗБЫТОЧНОЕ")			;значение нагружений	
   )
   (exist-dam					;наблюдаемые повреждения
      (name "ТРЕЩИНА (ТРЕЩИНЫ)")		;наименование повреждения
   )
=>						
   (assert 
      (exist-meh-fai
         (id (set-id))
         (name "РАЗГЕРМИТИЗАЦИЯ ДЕГИДРАТОРА")	;может возникнуть (механизм)
         (cf "0,9")				;с КУ=0.9
    )
   ) 
)


(defrule fai-kinatics-1001 ""			;правило выявления (кинетики) 
   (exist-meh-fai
      (name "РАЗГЕРМИТИЗАЦИЯ ДЕГИДРАТОРА")	;наблюдается (механизм) 
      (id ?id-meh)
      (tag-ev ?id-ev)
      (cf ?x)								
   ) 
=>	
   (assert 
      (exist-kin-fai
         (id (set-id))
         (name "РАЗГЕРМИТИЗАЦИЯ ДЕГИДРАТОРА")	;может возникнуть (кинетика)
         (tag-ev ?id-ev)
         (tag-meh ?id-meh)         
         (cf ?x )         	   
      )
   ) 
)


(defrule fai-kinatic-events-1001 ""		;правило выявления 1го события кинетики	 			
   (exist-kin-fai
      (name "РАЗГЕРМИТИЗАЦИЯ ДЕГИДРАТОРА")	;наблюдается (кинетика) "РАЗГЕРМИТИЗАЦИЯ ДЕГИДРАТОРА"
      (tag-ev ?id-ev)
      (cf ?x)								
   ) 
   =>
   (bind ?id ?*i*)	
   (assert 
      (exist-event
         (id (set-id))
         (name "РАЗГЕРМИТИЗАЦИЯ ДЕГИДРАТОРА")	;может возникнуть (событие)
         (probability "1")
         (tag-ev ?id-ev)
         (course "ВОЗНИКЛА ТАКАЯ СИТУАЦИЯ")	
         (cf ?x)				
      )
   ) 
)

(defrule fai-kinatic-events-1002 ""		;правило выявления последующего событий кинетики			
   (exist-kin-fai
      (name "РАЗГЕРМИТИЗАЦИЯ ДЕГИДРАТОРА")	;наблюдается (кинетика) 
      (cf ?x)								
   ) 
   (exist-event
      (id ?id-ev) 
      (name "РАЗГЕРМИТИЗАЦИЯ ДЕГИДРАТОРА")	;наблюдается (событие) 
   )
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "ИСТЕЧЕНИЕ НЕФТИ")		;может возникнуть (событие)
         (probability "1")
         (tag-ev ?id-ev)
         (course "ВОЗНИКЛА РАЗГЕРМИТИЗАЦИЯ ДЕГИДРАТОРА")	
         (cf ?x)				
    )
   ) 
)

;-------------- Правила АВАРИЙНАЯ СИТУАЦИЯ----------------

;***** Механизмы *****

(defrule acc-mechanism-2001 ""			;правило выявления (механизма)
   (exist-event 
      (name "ИСТЕЧЕНИЕ НЕФТИ")			;наблюдается (событие) 
      (id ?id-ev)
   )
=>						
   (assert 
      (exist-meh-acc
         (id (set-id))
         (name "ИСТЕЧЕНИЕ НЕФТИ")		;может возникнуть (механизм)
         (tag-ev ?id-ev) 
         (cf "0,9")				;с КУ=0.9
    )
   ) 
)

;***** Кинетика *****

(defrule acc-kinatics-2001 ""			;правило выявления (кинетики) (1)
   (exist-meh-acc 
      (name "ИСТЕЧЕНИЕ НЕФТИ")	;наблюдается (механизм) 
      (id ?id-meh)
      (tag-ev ?id-ev)
      (cf ?x)								
   ) 
=>	
   (assert 
      (exist-kin-acc
         (id (set-id))
         (name "ИСТЕЧЕНИЕ НЕФТИ БЕЗ МГНОВЕННОГО ВОСПЛАМЕНЕНИЯ")	;может возникнуть (кинетика) 
         (tag-ev ?id-ev)
         (tag-meh ?id-meh) 
         (cf ?x )	   
      )
   ) 
)

(defrule acc-kinatics-2002 ""			;правило выявления (кинетики)
   (exist-meh-acc 
      (name "ИСТЕЧЕНИЕ НЕФТИ")	;наблюдается (механизм) 
      (id ?id-meh)
      (tag-ev ?id-ev)
      (cf ?x)								
   ) 
=>	
   (assert 
      (exist-kin-acc
         (id (set-id))
         (name "ИСТЕЧЕНИЕ НЕФТИ С МГНОВЕННЫМ ВОСПЛАМЕНЕНИЕМ")	;может возникнуть (кинетика) 
         (tag-ev ?id-ev)
         (tag-meh ?id-meh) 
         (cf ?x )	   
      )
   ) 
)

;***** События *****

(defrule acc-kinatic-events-2001 ""		;правило выявления 1го события кинетики (1)			
   (exist-kin-acc
      (name "ИСТЕЧЕНИЕ НЕФТИ БЕЗ МГНОВЕННОГО ВОСПЛАМЕНЕНИЯ")	;наблюдается (кинетика) 
      (tag-ev ?id-ev)
      (cf ?x)								
   ) 
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "ИСТЕЧЕНИЕ НЕФТИ БЕЗ МГНОВЕННОГО ВОСПЛАМЕНЕНИЯ")	;может возникнуть (событие)
         (probability "0,95")
         (tag-ev ?id-ev)
         (course "ВОЗНИКЛА ТАКАЯ СИТУАЦИЯ")	
         (cf ?x)				
      )
   ) 
)

(defrule acc-kinatic-events-2002 ""		;правило выявления последующего событий кинетики (1)			
   (exist-kin-acc
      (name "ИСТЕЧЕНИЕ НЕФТИ БЕЗ МГНОВЕННОГО ВОСПЛАМЕНЕНИЯ")	;наблюдается (кинетика) 
      (cf ?x)								
   ) 
   (exist-event
      (id ?id-ev) 
      (name "ИСТЕЧЕНИЕ НЕФТИ БЕЗ МГНОВЕННОГО ВОСПЛАМЕНЕНИЯ")	;наблюдается (событие) 
   )
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "ОБРАЗОВАНИЕ ПРОЛИВА НЕФТИ")		;может возникнуть (событие)
         (probability "0,45")
         (tag-ev ?id-ev)
         (course "РЕЗУЛЬТАТ ИСТЕЧЕНИЯ НЕФТИ")	
         (cf ?x)				
    )
   ) 
)

(defrule acc-kinatic-events-2003 ""		;правило выявления последующего событий кинетики  (1)			
   (exist-kin-acc
      (name "ИСТЕЧЕНИЕ НЕФТИ БЕЗ МГНОВЕННОГО ВОСПЛАМЕНЕНИЯ")	;наблюдается (кинетика) 
      (cf ?x)								
   ) 
   (exist-event
      (id ?id-ev) 
      (name "ОБРАЗОВАНИЕ ПРОЛИВА НЕФТИ")	;наблюдается (событие) 
   )
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "ИСПАРЕНИЕ И ОБРАЗОВАНИЕ ВТОРИЧНОГО ПАРОГАЗОВОГО ОБЛАКА")		;может возникнуть (событие)
         (probability "0,25")
         (tag-ev ?id-ev)
         (course "РЕЗУЛЬТАТ ОБРАЗОВАНИЯ ПРОЛИВА НЕФТИ")	
         (cf ?x)				
    )
   ) 
)

(defrule acc-kinatic-events-2004 ""		;правило выявления последующего событий кинетики (1)			
   (exist-kin-acc
      (name "ИСТЕЧЕНИЕ НЕФТИ БЕЗ МГНОВЕННОГО ВОСПЛАМЕНЕНИЯ")	;наблюдается (кинетика) 
      (cf ?x)								
   ) 
   (exist-event
      (id ?id-ev) 
      (name "ИСПАРЕНИЕ И ОБРАЗОВАНИЕ ВТОРИЧНОГО ПАРОГАЗОВОГО ОБЛАКА")	;наблюдается (событие) 
   )
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "РАССЕИВАНИЕ ВТОРИЧНОГО ПАРОГАЗОВОГО ОБЛАКА")		;может возникнуть (событие)
         (probability "0,15")
         (tag-ev ?id-ev)
         (course "ИСХОД ОБРАЗОВАНИЯ ПАРОГАЗОВОГО ОБЛАКА")	
         (cf ?x)				
    )
   ) 
)

(defrule acc-kinatic-events-2005 ""		;правило выявления последующего событий кинетики (1)			
   (exist-kin-acc
      (name "ИСТЕЧЕНИЕ НЕФТИ БЕЗ МГНОВЕННОГО ВОСПЛАМЕНЕНИЯ")	;наблюдается (кинетика) 
      (cf ?x)								
   ) 
   (exist-event
      (id ?id-ev) 
      (name "ИСТЕЧЕНИЕ НЕФТИ БЕЗ МГНОВЕННОГО ВОСПЛАМЕНЕНИЯ")	;наблюдается (событие) 
   )
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "ОБРАЗОВАНИЕ ПЕРВИЧНОГО ПАРОГАЗОВОГО ОБЛАКА")		;может возникнуть (событие)
         (probability "0,5")
         (tag-ev ?id-ev)
         (course "ИСХОД ИСТЕЧЕНИЯ НЕФТИ")	
         (cf ?x)				
    )
   ) 
)

(defrule acc-kinatic-events-2006 ""		;правило выявления последующего событий кинетики (1)			
   (exist-kin-acc
      (name "ИСТЕЧЕНИЕ НЕФТИ БЕЗ МГНОВЕННОГО ВОСПЛАМЕНЕНИЯ")	;наблюдается (кинетика) 
      (cf ?x)								
   ) 
   (exist-event
      (id ?id-ev) 
      (name "ОБРАЗОВАНИЕ ПЕРВИЧНОГО ПАРОГАЗОВОГО ОБЛАКА")	;наблюдается (событие) 
   )
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "РАССЕИВАНИЕ ПЕРВИЧНОГО ПАРОГАЗОВОГО ОБЛАКА")		;может возникнуть (событие)
         (probability "0,4")
         (tag-ev ?id-ev)
         (course "ИСХОД ИСТЕЧЕНИЯ НЕФТИ")	
         (cf ?x)				
    )
   ) 
)

(defrule acc-kinatic-events-2007 ""		;правило выявления 1го события кинетики (2)			
   (exist-kin-acc
      (name "ИСТЕЧЕНИЕ НЕФТИ С МГНОВЕННЫМ ВОСПЛАМЕНЕНИЕМ")	;наблюдается (кинетика) 
      (tag-ev ?id-ev)
      (cf ?x)								
   ) 
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "ИСТЕЧЕНИЕ НЕФТИ С МГНОВЕННЫМ ВОСПЛАМЕНЕНИЕМ")	;может возникнуть (событие)
         (probability "0,95")
         (tag-ev ?id-ev)
         (course "ВОЗНИКЛА ТАКАЯ СИТУАЦИЯ")	
         (cf ?x)				
      )
   ) 
)

;-------------- Правила Аварии ---------------

;***** Механизмы *****


(defrule acc-mechanism-3001 ""			;правило выявления (механизма) 
   (exist-event 
      (name "ОБРАЗОВАНИЕ ПРОЛИВА НЕФТИ")	;наблюдается (событие) 
      (id ?id-ev)
   )
=>						
   (assert 
      (exist-meh-acc
         (id (set-id))
         (name "ПОЖАР ПРОЛИВА")	;может возникнуть (механизм)
         (tag-ev ?id-ev) 
         (cf "0,9")				;с КУ=0.9
    )
   ) 
)

(defrule acc-mechanism-3002 ""			;правило выявления (механизма) 
   (exist-event 
      (name "ИСПАРЕНИЕ И ОБРАЗОВАНИЕ ВТОРИЧНОГО ПАРОГАЗОВОГО ОБЛАКА")	;наблюдается (событие) 
      (id ?id-ev)
   )
=>						
   (assert 
      (exist-meh-acc
         (id (set-id))
         (name "ВОСПЛАМЕНЕНИЕ ВТОРИЧНОГО ПАРОГАЗОВОГО ОБЛАКА")	;может возникнуть (механизм)
         (tag-ev ?id-ev) 
         (cf "0,9")				;с КУ=0.9
    )
   ) 
)


(defrule acc-mechanism-3003 ""			;правило выявления (механизма) 
   (exist-event 
      (name "ОБРАЗОВАНИЕ ПЕРВИЧНОГО ПАРОГАЗОВОГО ОБЛАКА")	;наблюдается (событие) 
      (id ?id-ev)
   )
=>						
   (assert 
      (exist-meh-acc
         (id (set-id))
         (name "ВОСПЛАМЕНЕНИЕ ПЕРВИЧНОГО ПАРОГАЗОВОГО ОБЛАКА")	;может возникнуть (механизм)
         (tag-ev ?id-ev) 
         (cf "0,9")				;с КУ=0.9
    )
   ) 
)

;***** Кинетика *****


(defrule acc-kinatics-3001 ""			;правило выявления (кинетики) (1)
   (exist-meh-acc 
      (name "ПОЖАР ПРОЛИВА")			;наблюдается (механизм) 
      (id ?id-meh)
      (tag-ev ?id-ev)
      (cf ?x)								
   ) 
=>	
   (assert 
      (exist-kin-acc
         (id (set-id))
         (name "ПОЖАР ПРОЛИВА")			;может возникнуть (кинетика) 
         (tag-ev ?id-ev)
         (tag-meh ?id-meh) 
         (cf ?x )	   
      )
   ) 
)

(defrule acc-kinatics-3002 ""			;правило выявления (кинетики) (2)
   (exist-meh-acc 
      (name "ВОСПЛАМЕНЕНИЕ ВТОРИЧНОГО ПАРОГАЗОВОГО ОБЛАКА")		;наблюдается (механизм) 
      (id ?id-meh)
      (tag-ev ?id-ev)
      (cf ?x)								
   ) 
=>	
   (assert 
      (exist-kin-acc
         (id (set-id))
         (name "ВОСПЛАМЕНЕНИЕ ВТОРИЧНОГО ПАРОГАЗОВОГО ОБЛАКА")		;может возникнуть (кинетика) 
         (tag-ev ?id-ev)
         (tag-meh ?id-meh) 
         (cf ?x )	   
      )
   ) 
)

(defrule acc-kinatics-3003 ""			;правило выявления (кинетики) (3)
   (exist-meh-acc 
      (name "ВОСПЛАМЕНЕНИЕ ПЕРВИЧНОГО ПАРОГАЗОВОГО ОБЛАКА")		;наблюдается (механизм) 
      (id ?id-meh)
      (tag-ev ?id-ev)
      (cf ?x)								
   ) 
=>	
   (assert 
      (exist-kin-acc
         (id (set-id))
         (name "ВОСПЛАМЕНЕНИЕ ПЕРВИЧНОГО ПАРОГАЗОВОГО ОБЛАКА")		;может возникнуть (кинетика) 
         (tag-ev ?id-ev)
         (tag-meh ?id-meh) 
         (cf ?x )	   
      )
   ) 
)

;***** События *****


(defrule acc-kinatic-events-3001 ""		;правило выявления 1го события кинетики	(2)		
   (exist-kin-acc
      (name "ПОЖАР ПРОЛИВА")			;наблюдается (кинетика) 
      (tag-ev ?id-ev)
      (cf ?x)								
   ) 
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "ПОЖАР ПРОЛИВА")			;может возникнуть (событие)
         (probability "0,20")
         (tag-ev ?id-ev)
         (course "ВОЗНИКЛА ТАКАЯ СИТУАЦИЯ")	
         (cf ?x)				
      )
   ) 
)


(defrule acc-kinatic-events-3002 ""		;правило выявления последующего событий кинетики (2)			
   (exist-kin-acc
      (name "ПОЖАР ПРОЛИВА")			;наблюдается (кинетика) 
      (cf ?x)								
   ) 
   (exist-event
      (id ?id-ev) 
      (name "ПОЖАР ПРОЛИВА")			;наблюдается (событие) 
   )
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "ПРЕКРАЩЕНИЕ ГОРЕНИЯ")		;может возникнуть (событие)
         (probability "0,10")
         (tag-ev ?id-ev)
         (course "ИСХОД ОБРАЗОВАНИЯ ПОЖАРА ПРОЛИВА")	
         (cf ?x)				
    )
   ) 
)

(defrule acc-kinatic-events-3003 ""		;правило выявления последующего событий кинетики (2)			
   (exist-kin-acc
      (name "ПОЖАР ПРОЛИВА")			;наблюдается (кинетика) 
      (cf ?x)								
   ) 
   (exist-event
      (id ?id-ev) 
      (name "ПОЖАР ПРОЛИВА")			;наблюдается (событие) 
   )
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "ТЕПЛОВОЕ ВОЗДЕЙСТВИЕ НА СОСЕДНИЙ ДЕГИДРАТОР")		;может возникнуть (событие)
         (probability "0,10")
         (tag-ev ?id-ev)
         (course "ИСХОД ОБРАЗОВАНИЯ ПОЖАРА ПРОЛИВА")	
         (cf ?x)				
    )
   ) 
)

(defrule acc-kinatic-events-3004 ""		;правило выявления 1го события кинетики	(3)		
   (exist-kin-acc
      (name "ВОСПЛАМЕНЕНИЕ ВТОРИЧНОГО ПАРОГАЗОВОГО ОБЛАКА")	;наблюдается (кинетика) 
      (tag-ev ?id-ev)
      (cf ?x)								
   ) 
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "ВОСПЛАМЕНЕНИЕ ВТОРИЧНОГО ПАРОГАЗОВОГО ОБЛАКА")	;может возникнуть (событие)
         (probability "0,10")
         (tag-ev ?id-ev)
         (course "ВОЗНИКЛА ТАКАЯ СИТУАЦИЯ")	
         (cf ?x)				
      )
   ) 
)


(defrule acc-kinatic-events-3005 ""		;правило выявления последующего событий кинетики (3)			
   (exist-kin-acc
      (name "ВОСПЛАМЕНЕНИЕ ВТОРИЧНОГО ПАРОГАЗОВОГО ОБЛАКА")		;наблюдается (кинетика) 
      (cf ?x)								
   ) 
   (exist-event
      (id ?id-ev) 
      (name "ВОСПЛАМЕНЕНИЕ ВТОРИЧНОГО ПАРОГАЗОВОГО ОБЛАКА")		;наблюдается (событие) 
   )
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "ГОРЕНИЕ ВТОРИЧНОГО ПАРОГАЗОВОГО ОБЛАКА")		;может возникнуть (событие)
         (probability "0,05")
         (tag-ev ?id-ev)
         (course "ИСХОД ОБРАЗОВАНИЯ ВТОРИЧНОГО ПАРОГАЗОВОГО ОБЛАКА")	
         (cf ?x)				
    )
   ) 
)

(defrule acc-kinatic-events-3006 ""		;правило выявления последующего событий кинетики (3)			
   (exist-kin-acc
      (name "ВОСПЛАМЕНЕНИЕ ВТОРИЧНОГО ПАРОГАЗОВОГО ОБЛАКА")		;наблюдается (кинетика) 
      (cf ?x)								
   ) 
   (exist-event
      (id ?id-ev) 
      (name "ВОСПЛАМЕНЕНИЕ ВТОРИЧНОГО ПАРОГАЗОВОГО ОБЛАКА")		;наблюдается (событие) 
   )
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "ВЗРЫВ ВТОРИЧНОГО ПАРОГАЗОВОГО ОБЛАКА")		;может возникнуть (событие)
         (probability "0,05")
         (tag-ev ?id-ev)
         (course "ИСХОД ОБРАЗОВАНИЯ ВТОРИЧНОГО ПАРОГАЗОВОГО ОБЛАКА")	
         (cf ?x)				
    )
   ) 
)

(defrule acc-kinatic-events-3007 ""		;правило выявления 1го события кинетики	(4)		
   (exist-kin-acc
      (name "ВОСПЛАМЕНЕНИЕ ПЕРВИЧНОГО ПАРОГАЗОВОГО ОБЛАКА")	;наблюдается (кинетика) 
      (tag-ev ?id-ev)
      (cf ?x)								
   ) 
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "ВОСПЛАМЕНЕНИЕ ПЕРВИЧНОГО ПАРОГАЗОВОГО ОБЛАКА")	;может возникнуть (событие)
         (probability "0,10")
         (tag-ev ?id-ev)
         (course "ВОЗНИКЛА ТАКАЯ СИТУАЦИЯ")	
         (cf ?x)				
      )
   ) 
)


(defrule acc-kinatic-events-3008 ""		;правило выявления последующего событий кинетики (4)			
   (exist-kin-acc
      (name "ВОСПЛАМЕНЕНИЕ ПЕРВИЧНОГО ПАРОГАЗОВОГО ОБЛАКА")		;наблюдается (кинетика) 
      (cf ?x)								
   ) 
   (exist-event
      (id ?id-ev) 
      (name "ВОСПЛАМЕНЕНИЕ ПЕРВИЧНОГО ПАРОГАЗОВОГО ОБЛАКА")		;наблюдается (событие) 
   )
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "ГОРЕНИЕ ПЕРВИЧНОГО ПАРОГАЗОВОГО ОБЛАКА")		;может возникнуть (событие)
         (probability "0,05")
         (tag-ev ?id-ev)
         (course "ИСХОД ОБРАЗОВАНИЯ ПЕРВИЧНОГО ПАРОГАЗОВОГО ОБЛАКА")	
         (cf ?x)				
    )
   ) 
)

(defrule acc-kinatic-events-3009 ""		;правило выявления последующего событий кинетики (4)			
   (exist-kin-acc
      (name "ВОСПЛАМЕНЕНИЕ ПЕРВИЧНОГО ПАРОГАЗОВОГО ОБЛАКА")		;наблюдается (кинетика) 
      (cf ?x)								
   ) 
   (exist-event
      (id ?id-ev) 
      (name "ВОСПЛАМЕНЕНИЕ ПЕРВИЧНОГО ПАРОГАЗОВОГО ОБЛАКА")		;наблюдается (событие) 
   )
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "ВЗРЫВ ПЕРВИЧНОГО ПАРОГАЗОВОГО ОБЛАКА")		;может возникнуть (событие)
         (probability "0,02")
         (tag-ev ?id-ev)
         (course "ИСХОД ОБРАЗОВАНИЯ ПЕРВИЧНОГО ПАРОГАЗОВОГО ОБЛАКА")	
         (cf ?x)				
    )
   ) 
)


;-------------- Правила Чрезвычайной ситуации ---------------

;***** Механизмы *****

(defrule acc-mechanism-4001 ""			;правило выявления (механизма) 
   (exist-event 
      (name "ИСТЕЧЕНИЕ НЕФТИ С МГНОВЕННЫМ ВОСПЛАМЕНЕНИЕМ")		;наблюдается (событие) 
      (id ?id-ev)
   )
=>						
   (assert 
      (exist-meh-acc
         (id (set-id))
         (name "ИСТЕЧЕНИЕ НЕФТИ С МГНОВЕННЫМ ВОСПЛАМЕНЕНИЕМ")	;может возникнуть (механизм)
         (tag-ev ?id-ev) 
         (cf "0,9")				;с КУ=0.9
    )
   ) 
)

;***** Кинетика *****

(defrule acc-kinatics-4001 ""			;правило выявления (кинетики) (1)
   (exist-meh-acc 
      (name "ИСТЕЧЕНИЕ НЕФТИ С МГНОВЕННЫМ ВОСПЛАМЕНЕНИЕМ")	;наблюдается (механизм) 
      (id ?id-meh)
      (tag-ev ?id-ev)
      (cf ?x)								
   ) 
=>	
   (assert 
      (exist-kin-acc
         (id (set-id))
         (name "ФАКЕЛЬНОЕ ГОРЕНИЕ")	;может возникнуть (кинетика) 
         (tag-ev ?id-ev)
         (tag-meh ?id-meh) 
         (cf ?x )	   
      )
   ) 
)

(defrule acc-kinatics-4002 ""			;правило выявления (кинетики) (1)
   (exist-meh-acc 
      (name "ИСТЕЧЕНИЕ НЕФТИ С МГНОВЕННЫМ ВОСПЛАМЕНЕНИЕМ")	;наблюдается (механизм) 
      (id ?id-meh)
      (tag-ev ?id-ev)
      (cf ?x)								
   ) 
=>	
   (assert 
      (exist-kin-acc
         (id (set-id))
         (name "ОГНЕННЫЙ ШАР")	;может возникнуть (кинетика) 
         (tag-ev ?id-ev)
         (tag-meh ?id-meh) 
         (cf ?x )	   
      )
   ) 
)
;***** События *****

(defrule acc-kinatic-events-4001 ""		;правило выявления 1го события кинетики	(1)		
   (exist-kin-acc
      (name "ФАКЕЛЬНОЕ ГОРЕНИЕ")	;наблюдается (кинетика) 
      (tag-ev ?id-ev)
      (cf ?x)								
   ) 
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "ФАКЕЛЬНОЕ ГОРЕНИЕ СТРУИ")	;может возникнуть (событие)
         (probability "0,05")
         (tag-ev ?id-ev)
         (course "ВОЗНИКЛА ТАКАЯ СИТУАЦИЯ")	
         (cf ?x)				
      )
   ) 
)


(defrule acc-kinatic-events-4002 ""		;правило выявления последующего событий кинетики (1) 			
   (exist-kin-acc
      (name "ФАКЕЛЬНОЕ ГОРЕНИЕ")	;наблюдается (кинетика) 
      (cf ?x)								
   ) 
   (exist-event
      (id ?id-ev) 
      (name "ФАКЕЛЬНОЕ ГОРЕНИЕ СТРУИ")	;наблюдается (событие) 
   )
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "ПРЕКРАЩЕНИЕ ГОРЕНИЯ")		;может возникнуть (событие)
         (probability "0,02")
         (tag-ev ?id-ev)
         (course "РЕЗУЛЬТАТ ФАКЕЛЬНОГО ГОРЕНИЯ")	
         (cf ?x)				
    )
   ) 
)

(defrule acc-kinatic-events-4003 ""		;правило выявления последующего событий кинетики (1) 			
   (exist-kin-acc
      (name "ФАКЕЛЬНОЕ ГОРЕНИЕ")	;наблюдается (кинетика) 
      (cf ?x)								
   ) 
   (exist-event
      (id ?id-ev) 
      (name "ФАКЕЛЬНОЕ ГОРЕНИЕ СТРУИ")	;наблюдается (событие) 
   )
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "ТЕПЛОВОЕ ВОЗДЕЙСТВИЕ НА СОСЕДНИЙ ДЕГИДРАТОР")		;может возникнуть (событие)
         (probability "0,02")
         (tag-ev ?id-ev)
         (course "РЕЗУЛЬТАТ ФАКЕЛЬНОГО ГОРЕНИЯ")	
         (cf ?x)				
    )
   ) 
)

(defrule acc-kinatic-events-4004 ""		;правило выявления 1го события кинетики	(2)		
   (exist-kin-acc
      (name "ОГНЕННЫЙ ШАР")	;наблюдается (кинетика) 
      (tag-ev ?id-ev)
      (cf ?x)								
   ) 
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "ОГНЕННЫЙ ШАР")	;может возникнуть (событие)
         (probability "0,05")
         (tag-ev ?id-ev)
         (course "ВОЗНИКЛА ТАКАЯ СИТУАЦИЯ")	
         (cf ?x)				
      )
   ) 
)

(defrule acc-kinatic-events-4005 ""		;правило выявления последующего событий кинетики (2) 			
   (exist-kin-acc
      (name "ОГНЕННЫЙ ШАР")	;наблюдается (кинетика) 
      (cf ?x)								
   ) 
   (exist-event
      (id ?id-ev) 
      (name "ОГНЕННЫЙ ШАР")	;наблюдается (событие) 
   )
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "ОПАСНЫХ ПОСЛЕДСТВИЙ НЕТ")		;может возникнуть (событие)
         (probability "0,001")
         (tag-ev ?id-ev)
         (course "РЕЗУЛЬТАТ ФАКЕЛЬНОГО ГОРЕНИЯ")	
         (cf ?x)				
    )
   ) 
)

(defrule acc-kinatic-events-4006 ""		;правило выявления последующего событий кинетики (2) 			
   (exist-kin-acc
      (name "ОГНЕННЫЙ ШАР")	;наблюдается (кинетика) 
      (cf ?x)								
   ) 
   (exist-event
      (id ?id-ev) 
      (name "ОГНЕННЫЙ ШАР")	;наблюдается (событие) 
   )
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "ТЕПЛОВОЕ ВОЗДЕЙСТВИЕ НА СОСЕДНИЙ ДЕГИДРАТОР")		;может возникнуть (событие)
         (probability "0,009")
         (tag-ev ?id-ev)
         (course "РЕЗУЛЬТАТ ФАКЕЛЬНОГО ГОРЕНИЯ")	
         (cf ?x)				
    )
   ) 
)

;---------- Исходные данные ------------
(deffacts begin-settings 
   (incident-object				;объект инцидента     	
      (name "ДЕГИДРАТОР")
   )
   (incident-object-stress			;нагрузка на объект инцидента
      (name "ДАВЛЕНИЕ")				;наименование нагрузки
      (value "ИЗБЫТОЧНОЕ")			;значение нагружений	
   )
   (exist-dam					;наблюдаемые повреждения
      (name "ТРЕЩИНА (ТРЕЩИНЫ)")		;наименование повреждения
   )
)