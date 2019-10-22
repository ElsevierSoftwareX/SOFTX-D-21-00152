;----------- ����.���������� -----------
(defglobal 
  ?*i* = 0
)

;-------------- ������� ----------------

(deftemplate exist-dam			;����������� �����������
   (slot name (default ""))		;������������ �����������
   (slot type (default ""))		;��� (� ������� ������� ��� ������������������)
   (slot stress-type (default ""))	;��� ����������
   (slot mesto-zarozdenia (default ""))	;����� ���������� (��������, �������)	
   (slot istochnik (default ""))	;��������
   (slot mestopolozenie (default ""))	;��������������
   (slot orientacia (default "")) 	;������������ (��������, �������)
   (slot glubina (default "")) 		;�������
   (slot dlina (default "")) 		;�����
   (slot diametr (default "")) 		;�������
   (slot forma-v-izlome (default ""))	;����� � ������
   (slot kolichestvo (default "")) 	;���������� ����������� ������� �� �������
   (slot velichina-raskritia (default ""))		;������� ���������
   (slot tech-pered-razrusheniem (default "")) ;�������� ���� ����� �����������
   (slot ex-dp (default "")) 		;����������� �������������� �������
   (slot cf (default "0")) 		;����������� �����������
)	

(deftemplate incident-object     	;������ ���������
   (slot name (default "��� ������"))	;������������ �������	
)

(deftemplate incident-object-stress	;�������� �� ������ ���������
   (slot name (default "��� ������"))	;������������ ��������
   (slot value )                        ;�������� ����������	
)

(deftemplate rec-act			;������������� �����������
   (slot name (default ""))		;������������
   (slot ex-dp (default "")) 		;����������� �������������� �������
   (slot ex-dam (default "")) 		;����������� �����������
   (slot ex-des (default "")) 		;����������� ����������
   (slot ex-fai (default "")) 		;����������� �����
   (slot cf (default "1")) 		;����������� �����������   
)


(deftemplate exist-meh-fai	        ;����������� �������� ������
   (slot name (default ""))		;������������
   (slot id (type INTEGER))		;��� ���������			
   (slot tag-ev (type INTEGER))		;������ �� ������������ �������
   (slot cf (default "1")) 		;����������� �����������   
)

(deftemplate exist-meh-acc	        ;����������� �������� ���������� ��������
   (slot name (default ""))		;������������
   (slot id (type INTEGER))		;��� ���������
   (slot tag-ev (type INTEGER))		;������ �� ������������ �������
   (slot cf (default "1")) 		;����������� �����������   
)

(deftemplate exist-meh-emj	        ;����������� �������� ������
   (slot name (default ""))		;������������
   (slot id (type INTEGER))		;��� ���������
   (slot tag-ev (type INTEGER))		;������ �� ������������ �������
   (slot cf (default "1")) 		;����������� �����������   
)

(deftemplate exist-meh-ems	        ;����������� �������� ������������� ��������
   (slot name (default ""))		;������������
   (slot id (type INTEGER))		;��� ���������
   (slot tag-ev (type INTEGER))		;������ �� ������������ �������
   (slot cf (default "1")) 		;����������� �����������   
)

(deftemplate exist-kin-fai	        ;����������� �������� ������
   (slot name (default ""))		;������������
   (slot id (type INTEGER))		;��� ��������
   (slot tag-meh (type INTEGER))	;������ �� ��������
   (slot tag-ev (type INTEGER))		;������ �� ������������ �������
   (slot cf (default "1")) 		;����������� �����������   
)

(deftemplate exist-kin-acc	        ;����������� �������� ��������� ��������
   (slot name (default ""))		;������������
   (slot id (type INTEGER))		;��� ��������
   (slot tag-meh (type INTEGER))	;������ �� ��������
   (slot tag-ev (type INTEGER))		;������ �� ������������ �������
   (slot cf (default "1")) 		;����������� �����������   
)

(deftemplate exist-kin-amj	        ;����������� �������� ������
   (slot name (default ""))		;������������
   (slot id (type INTEGER))		;��� ��������
   (slot tag-meh (type INTEGER))	;������ �� ��������
   (slot tag-ev (type INTEGER))		;������ �� ������������ �������
   (slot cf (default "1")) 		;����������� �����������   
)

(deftemplate exist-kin-ems	        ;����������� �������� ������������� ��������
   (slot name (default ""))		;������������
   (slot id (type INTEGER))		;��� ��������
   (slot tag-meh (type INTEGER))	;������ �� ��������
   (slot tag-ev (type INTEGER))		;������ �� ������������ �������
   (slot cf (default "1")) 		;����������� �����������   
)

(deftemplate exist-event		;����������� ������� ��������
   (slot id (type INTEGER))		;��� �������
   (slot name)				;������������ �������
   (slot tag-ev (type INTEGER))		;������ �� ������������ �������
   (slot probability (default "1.0"))	;����������� �������������
   (slot course)			;������� �������������
   (slot cf (default "1")) 		;����������� ����������� 
)

;-------------- ������� ----------------

(deffunction set-id()
  (bind ?*i* (+ 1 ?*i*))  
  ?*i*
)

;-------------- ������� �����----------------
(defrule fai-mechanism-1001 ""			;������� ��������� (���������)
   (incident-object				;������ ���������     	
      (name "����������")
   )
   (incident-object-stress			;�������� �� ������ ���������
      (name "��������")				;������������ ��������
      (value "����������")			;�������� ����������	
   )
   (exist-dam					;����������� �����������
      (name "������� (�������)")		;������������ �����������
   )
=>						
   (assert 
      (exist-meh-fai
         (id (set-id))
         (name "��������������� �����������")	;����� ���������� (��������)
         (cf "0,9")				;� ��=0.9
    )
   ) 
)


(defrule fai-kinatics-1001 ""			;������� ��������� (��������) 
   (exist-meh-fai
      (name "��������������� �����������")	;����������� (��������) 
      (id ?id-meh)
      (tag-ev ?id-ev)
      (cf ?x)								
   ) 
=>	
   (assert 
      (exist-kin-fai
         (id (set-id))
         (name "��������������� �����������")	;����� ���������� (��������)
         (tag-ev ?id-ev)
         (tag-meh ?id-meh)         
         (cf ?x )         	   
      )
   ) 
)


(defrule fai-kinatic-events-1001 ""		;������� ��������� 1�� ������� ��������	 			
   (exist-kin-fai
      (name "��������������� �����������")	;����������� (��������) "��������������� �����������"
      (tag-ev ?id-ev)
      (cf ?x)								
   ) 
   =>
   (bind ?id ?*i*)	
   (assert 
      (exist-event
         (id (set-id))
         (name "��������������� �����������")	;����� ���������� (�������)
         (probability "1")
         (tag-ev ?id-ev)
         (course "�������� ����� ��������")	
         (cf ?x)				
      )
   ) 
)

(defrule fai-kinatic-events-1002 ""		;������� ��������� ������������ ������� ��������			
   (exist-kin-fai
      (name "��������������� �����������")	;����������� (��������) 
      (cf ?x)								
   ) 
   (exist-event
      (id ?id-ev) 
      (name "��������������� �����������")	;����������� (�������) 
   )
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "��������� �����")		;����� ���������� (�������)
         (probability "1")
         (tag-ev ?id-ev)
         (course "�������� ��������������� �����������")	
         (cf ?x)				
    )
   ) 
)

;-------------- ������� ��������� ��������----------------

;***** ��������� *****

(defrule acc-mechanism-2001 ""			;������� ��������� (���������)
   (exist-event 
      (name "��������� �����")			;����������� (�������) 
      (id ?id-ev)
   )
=>						
   (assert 
      (exist-meh-acc
         (id (set-id))
         (name "��������� �����")		;����� ���������� (��������)
         (tag-ev ?id-ev) 
         (cf "0,9")				;� ��=0.9
    )
   ) 
)

;***** �������� *****

(defrule acc-kinatics-2001 ""			;������� ��������� (��������) (1)
   (exist-meh-acc 
      (name "��������� �����")	;����������� (��������) 
      (id ?id-meh)
      (tag-ev ?id-ev)
      (cf ?x)								
   ) 
=>	
   (assert 
      (exist-kin-acc
         (id (set-id))
         (name "��������� ����� ��� ����������� �������������")	;����� ���������� (��������) 
         (tag-ev ?id-ev)
         (tag-meh ?id-meh) 
         (cf ?x )	   
      )
   ) 
)

(defrule acc-kinatics-2002 ""			;������� ��������� (��������)
   (exist-meh-acc 
      (name "��������� �����")	;����������� (��������) 
      (id ?id-meh)
      (tag-ev ?id-ev)
      (cf ?x)								
   ) 
=>	
   (assert 
      (exist-kin-acc
         (id (set-id))
         (name "��������� ����� � ���������� ��������������")	;����� ���������� (��������) 
         (tag-ev ?id-ev)
         (tag-meh ?id-meh) 
         (cf ?x )	   
      )
   ) 
)

;***** ������� *****

(defrule acc-kinatic-events-2001 ""		;������� ��������� 1�� ������� �������� (1)			
   (exist-kin-acc
      (name "��������� ����� ��� ����������� �������������")	;����������� (��������) 
      (tag-ev ?id-ev)
      (cf ?x)								
   ) 
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "��������� ����� ��� ����������� �������������")	;����� ���������� (�������)
         (probability "0,95")
         (tag-ev ?id-ev)
         (course "�������� ����� ��������")	
         (cf ?x)				
      )
   ) 
)

(defrule acc-kinatic-events-2002 ""		;������� ��������� ������������ ������� �������� (1)			
   (exist-kin-acc
      (name "��������� ����� ��� ����������� �������������")	;����������� (��������) 
      (cf ?x)								
   ) 
   (exist-event
      (id ?id-ev) 
      (name "��������� ����� ��� ����������� �������������")	;����������� (�������) 
   )
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "����������� ������� �����")		;����� ���������� (�������)
         (probability "0,45")
         (tag-ev ?id-ev)
         (course "��������� ��������� �����")	
         (cf ?x)				
    )
   ) 
)

(defrule acc-kinatic-events-2003 ""		;������� ��������� ������������ ������� ��������  (1)			
   (exist-kin-acc
      (name "��������� ����� ��� ����������� �������������")	;����������� (��������) 
      (cf ?x)								
   ) 
   (exist-event
      (id ?id-ev) 
      (name "����������� ������� �����")	;����������� (�������) 
   )
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "��������� � ����������� ���������� ������������ ������")		;����� ���������� (�������)
         (probability "0,25")
         (tag-ev ?id-ev)
         (course "��������� ����������� ������� �����")	
         (cf ?x)				
    )
   ) 
)

(defrule acc-kinatic-events-2004 ""		;������� ��������� ������������ ������� �������� (1)			
   (exist-kin-acc
      (name "��������� ����� ��� ����������� �������������")	;����������� (��������) 
      (cf ?x)								
   ) 
   (exist-event
      (id ?id-ev) 
      (name "��������� � ����������� ���������� ������������ ������")	;����������� (�������) 
   )
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "����������� ���������� ������������ ������")		;����� ���������� (�������)
         (probability "0,15")
         (tag-ev ?id-ev)
         (course "����� ����������� ������������ ������")	
         (cf ?x)				
    )
   ) 
)

(defrule acc-kinatic-events-2005 ""		;������� ��������� ������������ ������� �������� (1)			
   (exist-kin-acc
      (name "��������� ����� ��� ����������� �������������")	;����������� (��������) 
      (cf ?x)								
   ) 
   (exist-event
      (id ?id-ev) 
      (name "��������� ����� ��� ����������� �������������")	;����������� (�������) 
   )
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "����������� ���������� ������������ ������")		;����� ���������� (�������)
         (probability "0,5")
         (tag-ev ?id-ev)
         (course "����� ��������� �����")	
         (cf ?x)				
    )
   ) 
)

(defrule acc-kinatic-events-2006 ""		;������� ��������� ������������ ������� �������� (1)			
   (exist-kin-acc
      (name "��������� ����� ��� ����������� �������������")	;����������� (��������) 
      (cf ?x)								
   ) 
   (exist-event
      (id ?id-ev) 
      (name "����������� ���������� ������������ ������")	;����������� (�������) 
   )
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "����������� ���������� ������������ ������")		;����� ���������� (�������)
         (probability "0,4")
         (tag-ev ?id-ev)
         (course "����� ��������� �����")	
         (cf ?x)				
    )
   ) 
)

(defrule acc-kinatic-events-2007 ""		;������� ��������� 1�� ������� �������� (2)			
   (exist-kin-acc
      (name "��������� ����� � ���������� ��������������")	;����������� (��������) 
      (tag-ev ?id-ev)
      (cf ?x)								
   ) 
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "��������� ����� � ���������� ��������������")	;����� ���������� (�������)
         (probability "0,95")
         (tag-ev ?id-ev)
         (course "�������� ����� ��������")	
         (cf ?x)				
      )
   ) 
)

;-------------- ������� ������ ---------------

;***** ��������� *****


(defrule acc-mechanism-3001 ""			;������� ��������� (���������) 
   (exist-event 
      (name "����������� ������� �����")	;����������� (�������) 
      (id ?id-ev)
   )
=>						
   (assert 
      (exist-meh-acc
         (id (set-id))
         (name "����� �������")	;����� ���������� (��������)
         (tag-ev ?id-ev) 
         (cf "0,9")				;� ��=0.9
    )
   ) 
)

(defrule acc-mechanism-3002 ""			;������� ��������� (���������) 
   (exist-event 
      (name "��������� � ����������� ���������� ������������ ������")	;����������� (�������) 
      (id ?id-ev)
   )
=>						
   (assert 
      (exist-meh-acc
         (id (set-id))
         (name "������������� ���������� ������������ ������")	;����� ���������� (��������)
         (tag-ev ?id-ev) 
         (cf "0,9")				;� ��=0.9
    )
   ) 
)


(defrule acc-mechanism-3003 ""			;������� ��������� (���������) 
   (exist-event 
      (name "����������� ���������� ������������ ������")	;����������� (�������) 
      (id ?id-ev)
   )
=>						
   (assert 
      (exist-meh-acc
         (id (set-id))
         (name "������������� ���������� ������������ ������")	;����� ���������� (��������)
         (tag-ev ?id-ev) 
         (cf "0,9")				;� ��=0.9
    )
   ) 
)

;***** �������� *****


(defrule acc-kinatics-3001 ""			;������� ��������� (��������) (1)
   (exist-meh-acc 
      (name "����� �������")			;����������� (��������) 
      (id ?id-meh)
      (tag-ev ?id-ev)
      (cf ?x)								
   ) 
=>	
   (assert 
      (exist-kin-acc
         (id (set-id))
         (name "����� �������")			;����� ���������� (��������) 
         (tag-ev ?id-ev)
         (tag-meh ?id-meh) 
         (cf ?x )	   
      )
   ) 
)

(defrule acc-kinatics-3002 ""			;������� ��������� (��������) (2)
   (exist-meh-acc 
      (name "������������� ���������� ������������ ������")		;����������� (��������) 
      (id ?id-meh)
      (tag-ev ?id-ev)
      (cf ?x)								
   ) 
=>	
   (assert 
      (exist-kin-acc
         (id (set-id))
         (name "������������� ���������� ������������ ������")		;����� ���������� (��������) 
         (tag-ev ?id-ev)
         (tag-meh ?id-meh) 
         (cf ?x )	   
      )
   ) 
)

(defrule acc-kinatics-3003 ""			;������� ��������� (��������) (3)
   (exist-meh-acc 
      (name "������������� ���������� ������������ ������")		;����������� (��������) 
      (id ?id-meh)
      (tag-ev ?id-ev)
      (cf ?x)								
   ) 
=>	
   (assert 
      (exist-kin-acc
         (id (set-id))
         (name "������������� ���������� ������������ ������")		;����� ���������� (��������) 
         (tag-ev ?id-ev)
         (tag-meh ?id-meh) 
         (cf ?x )	   
      )
   ) 
)

;***** ������� *****


(defrule acc-kinatic-events-3001 ""		;������� ��������� 1�� ������� ��������	(2)		
   (exist-kin-acc
      (name "����� �������")			;����������� (��������) 
      (tag-ev ?id-ev)
      (cf ?x)								
   ) 
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "����� �������")			;����� ���������� (�������)
         (probability "0,20")
         (tag-ev ?id-ev)
         (course "�������� ����� ��������")	
         (cf ?x)				
      )
   ) 
)


(defrule acc-kinatic-events-3002 ""		;������� ��������� ������������ ������� �������� (2)			
   (exist-kin-acc
      (name "����� �������")			;����������� (��������) 
      (cf ?x)								
   ) 
   (exist-event
      (id ?id-ev) 
      (name "����� �������")			;����������� (�������) 
   )
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "����������� �������")		;����� ���������� (�������)
         (probability "0,10")
         (tag-ev ?id-ev)
         (course "����� ����������� ������ �������")	
         (cf ?x)				
    )
   ) 
)

(defrule acc-kinatic-events-3003 ""		;������� ��������� ������������ ������� �������� (2)			
   (exist-kin-acc
      (name "����� �������")			;����������� (��������) 
      (cf ?x)								
   ) 
   (exist-event
      (id ?id-ev) 
      (name "����� �������")			;����������� (�������) 
   )
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "�������� ����������� �� �������� ����������")		;����� ���������� (�������)
         (probability "0,10")
         (tag-ev ?id-ev)
         (course "����� ����������� ������ �������")	
         (cf ?x)				
    )
   ) 
)

(defrule acc-kinatic-events-3004 ""		;������� ��������� 1�� ������� ��������	(3)		
   (exist-kin-acc
      (name "������������� ���������� ������������ ������")	;����������� (��������) 
      (tag-ev ?id-ev)
      (cf ?x)								
   ) 
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "������������� ���������� ������������ ������")	;����� ���������� (�������)
         (probability "0,10")
         (tag-ev ?id-ev)
         (course "�������� ����� ��������")	
         (cf ?x)				
      )
   ) 
)


(defrule acc-kinatic-events-3005 ""		;������� ��������� ������������ ������� �������� (3)			
   (exist-kin-acc
      (name "������������� ���������� ������������ ������")		;����������� (��������) 
      (cf ?x)								
   ) 
   (exist-event
      (id ?id-ev) 
      (name "������������� ���������� ������������ ������")		;����������� (�������) 
   )
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "������� ���������� ������������ ������")		;����� ���������� (�������)
         (probability "0,05")
         (tag-ev ?id-ev)
         (course "����� ����������� ���������� ������������ ������")	
         (cf ?x)				
    )
   ) 
)

(defrule acc-kinatic-events-3006 ""		;������� ��������� ������������ ������� �������� (3)			
   (exist-kin-acc
      (name "������������� ���������� ������������ ������")		;����������� (��������) 
      (cf ?x)								
   ) 
   (exist-event
      (id ?id-ev) 
      (name "������������� ���������� ������������ ������")		;����������� (�������) 
   )
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "����� ���������� ������������ ������")		;����� ���������� (�������)
         (probability "0,05")
         (tag-ev ?id-ev)
         (course "����� ����������� ���������� ������������ ������")	
         (cf ?x)				
    )
   ) 
)

(defrule acc-kinatic-events-3007 ""		;������� ��������� 1�� ������� ��������	(4)		
   (exist-kin-acc
      (name "������������� ���������� ������������ ������")	;����������� (��������) 
      (tag-ev ?id-ev)
      (cf ?x)								
   ) 
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "������������� ���������� ������������ ������")	;����� ���������� (�������)
         (probability "0,10")
         (tag-ev ?id-ev)
         (course "�������� ����� ��������")	
         (cf ?x)				
      )
   ) 
)


(defrule acc-kinatic-events-3008 ""		;������� ��������� ������������ ������� �������� (4)			
   (exist-kin-acc
      (name "������������� ���������� ������������ ������")		;����������� (��������) 
      (cf ?x)								
   ) 
   (exist-event
      (id ?id-ev) 
      (name "������������� ���������� ������������ ������")		;����������� (�������) 
   )
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "������� ���������� ������������ ������")		;����� ���������� (�������)
         (probability "0,05")
         (tag-ev ?id-ev)
         (course "����� ����������� ���������� ������������ ������")	
         (cf ?x)				
    )
   ) 
)

(defrule acc-kinatic-events-3009 ""		;������� ��������� ������������ ������� �������� (4)			
   (exist-kin-acc
      (name "������������� ���������� ������������ ������")		;����������� (��������) 
      (cf ?x)								
   ) 
   (exist-event
      (id ?id-ev) 
      (name "������������� ���������� ������������ ������")		;����������� (�������) 
   )
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "����� ���������� ������������ ������")		;����� ���������� (�������)
         (probability "0,02")
         (tag-ev ?id-ev)
         (course "����� ����������� ���������� ������������ ������")	
         (cf ?x)				
    )
   ) 
)


;-------------- ������� ������������ �������� ---------------

;***** ��������� *****

(defrule acc-mechanism-4001 ""			;������� ��������� (���������) 
   (exist-event 
      (name "��������� ����� � ���������� ��������������")		;����������� (�������) 
      (id ?id-ev)
   )
=>						
   (assert 
      (exist-meh-acc
         (id (set-id))
         (name "��������� ����� � ���������� ��������������")	;����� ���������� (��������)
         (tag-ev ?id-ev) 
         (cf "0,9")				;� ��=0.9
    )
   ) 
)

;***** �������� *****

(defrule acc-kinatics-4001 ""			;������� ��������� (��������) (1)
   (exist-meh-acc 
      (name "��������� ����� � ���������� ��������������")	;����������� (��������) 
      (id ?id-meh)
      (tag-ev ?id-ev)
      (cf ?x)								
   ) 
=>	
   (assert 
      (exist-kin-acc
         (id (set-id))
         (name "��������� �������")	;����� ���������� (��������) 
         (tag-ev ?id-ev)
         (tag-meh ?id-meh) 
         (cf ?x )	   
      )
   ) 
)

(defrule acc-kinatics-4002 ""			;������� ��������� (��������) (1)
   (exist-meh-acc 
      (name "��������� ����� � ���������� ��������������")	;����������� (��������) 
      (id ?id-meh)
      (tag-ev ?id-ev)
      (cf ?x)								
   ) 
=>	
   (assert 
      (exist-kin-acc
         (id (set-id))
         (name "�������� ���")	;����� ���������� (��������) 
         (tag-ev ?id-ev)
         (tag-meh ?id-meh) 
         (cf ?x )	   
      )
   ) 
)
;***** ������� *****

(defrule acc-kinatic-events-4001 ""		;������� ��������� 1�� ������� ��������	(1)		
   (exist-kin-acc
      (name "��������� �������")	;����������� (��������) 
      (tag-ev ?id-ev)
      (cf ?x)								
   ) 
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "��������� ������� �����")	;����� ���������� (�������)
         (probability "0,05")
         (tag-ev ?id-ev)
         (course "�������� ����� ��������")	
         (cf ?x)				
      )
   ) 
)


(defrule acc-kinatic-events-4002 ""		;������� ��������� ������������ ������� �������� (1) 			
   (exist-kin-acc
      (name "��������� �������")	;����������� (��������) 
      (cf ?x)								
   ) 
   (exist-event
      (id ?id-ev) 
      (name "��������� ������� �����")	;����������� (�������) 
   )
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "����������� �������")		;����� ���������� (�������)
         (probability "0,02")
         (tag-ev ?id-ev)
         (course "��������� ���������� �������")	
         (cf ?x)				
    )
   ) 
)

(defrule acc-kinatic-events-4003 ""		;������� ��������� ������������ ������� �������� (1) 			
   (exist-kin-acc
      (name "��������� �������")	;����������� (��������) 
      (cf ?x)								
   ) 
   (exist-event
      (id ?id-ev) 
      (name "��������� ������� �����")	;����������� (�������) 
   )
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "�������� ����������� �� �������� ����������")		;����� ���������� (�������)
         (probability "0,02")
         (tag-ev ?id-ev)
         (course "��������� ���������� �������")	
         (cf ?x)				
    )
   ) 
)

(defrule acc-kinatic-events-4004 ""		;������� ��������� 1�� ������� ��������	(2)		
   (exist-kin-acc
      (name "�������� ���")	;����������� (��������) 
      (tag-ev ?id-ev)
      (cf ?x)								
   ) 
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "�������� ���")	;����� ���������� (�������)
         (probability "0,05")
         (tag-ev ?id-ev)
         (course "�������� ����� ��������")	
         (cf ?x)				
      )
   ) 
)

(defrule acc-kinatic-events-4005 ""		;������� ��������� ������������ ������� �������� (2) 			
   (exist-kin-acc
      (name "�������� ���")	;����������� (��������) 
      (cf ?x)								
   ) 
   (exist-event
      (id ?id-ev) 
      (name "�������� ���")	;����������� (�������) 
   )
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "������� ����������� ���")		;����� ���������� (�������)
         (probability "0,001")
         (tag-ev ?id-ev)
         (course "��������� ���������� �������")	
         (cf ?x)				
    )
   ) 
)

(defrule acc-kinatic-events-4006 ""		;������� ��������� ������������ ������� �������� (2) 			
   (exist-kin-acc
      (name "�������� ���")	;����������� (��������) 
      (cf ?x)								
   ) 
   (exist-event
      (id ?id-ev) 
      (name "�������� ���")	;����������� (�������) 
   )
   =>	
   (assert 
      (exist-event
         (id (set-id)) 
         (name "�������� ����������� �� �������� ����������")		;����� ���������� (�������)
         (probability "0,009")
         (tag-ev ?id-ev)
         (course "��������� ���������� �������")	
         (cf ?x)				
    )
   ) 
)

;---------- �������� ������ ------------
(deffacts begin-settings 
   (incident-object				;������ ���������     	
      (name "����������")
   )
   (incident-object-stress			;�������� �� ������ ���������
      (name "��������")				;������������ ��������
      (value "����������")			;�������� ����������	
   )
   (exist-dam					;����������� �����������
      (name "������� (�������)")		;������������ �����������
   )
)