;**************************************************************
; Knowledge Base Name: Knowledge base 5004358539
; Description: 
;**************************************************************
;********************* Fuzzy Vars ******************************
(deftemplate R-WATER-LEVEL ;River water level
 0 204
 (
 (RWL-LOW (0 1) (30 0.5) (50 0))
 (RWL-AVERAGE (0 0) (30 0.5) (68 1) (90 0))
 (RWL-HIGH (30 0) (68 0.3) (90 1))
 )
)
(deftemplate AC-GRADE ;Atmospheric condensation grade
 0 120
 (
 (AG-LOW (0 1) (20 0.5) (40 0))
 (AG-AVERAGE (0 0) (20 0.5) (40 1) (60 0.5) (80 0))
 (AG-HIGH (20 0) (40 0.5) (60 1))
 )
)
;********************* Templates ******************************
(deftemplate River
 (slot name (default "ANGARA"))
 (slot water-level (default "RWL-LOW"))
 (slot region (default "IRKUTSK"))
 (slot ...)
)
(deftemplate Atmospheric-condensation
 (slot grade (default "AG-LOW"))
 (slot kind (default "SNOW"))
 (slot amount (default "15"))
 (slot ...)
 (slot cf (default "1"))
)
(deftemplate Flood-hazard
 (slot level (default "LOW"))
 (slot probability (default "0.9"))
 (slot time-reserve)
 (slot ...)
)
(deftemplate Risk
 (slot grade)
 (slot kind)
 (slot cost)
 (slot ...)
)
(deftemplate Conclusion
 (slot grade)
 (slot text)
)
;************************ Facts *******************************
(deffacts initial-settings
(Atmospheric-condensation ;Atmospheric condensation
 (grade "AG-LOW")
 (kind "SNOW")
 (amount "15")
 ) CF 1
)
;************************* Rules ******************************
(defrule River+Atmospheric-condensation>Flood-hazard-1 "Description of the rule: River+Atmospheric condensation>Flood hazard 1"
 (declare (salience 1))
 (declare (CF 1))
 (River ;River
 (name "ANGARA")
 (water-level "RWL-LOW")
 (region "IRKUTSK")
 )
 (Atmospheric-condensation ;Atmospheric condensation
 (grade "AG-AVERAGE")
 (kind "SNOW")
 (amount "15")
 )
 =>
(assert 
(Flood-hazard ;Flood hazard
 (level "LOW")
 (probability "0.9")
  ))
)
