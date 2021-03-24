;**************************************************************
; Knowledge Base Name: Knowledge base 6348265468
; Description: 
;**************************************************************
;********************* Fuzzy Vars ******************************
(deftemplate F0-ac-grade

 0 120 (AC-LOW (0 1) (20 0,5) (40 0)) (AC-AVERAGE (0 0) (20 0,5) (40 1) (60 0,5) (80 0)) (AC-HIGH (20 0) (40 0,5) (60 1)))
(deftemplate F0-R-water-level

 0 204 (RWL-LOW (0 1) (30 0,5) (50 0)) (RWL-AVERAGE (0 0) (30 0,5) (68 1) (90 0)) (RWL-HIGH (30 0) (68 0,3) (90 1)))
;********************* Templates ******************************
(deftemplate Atmospheric-condensation
 (slot grade (default F0-AC-GRADE))
 (slot kind (default "SNOW"))
 (slot amount (default "15 MM"))
 (slot ...)
 (slot cf)
)
(deftemplate River
 (slot name (default "ANGARA"))
 (slot water-level (default F0-R-WATER-LEVEL))
 (slot region (default "IRKUTSK"))
 (slot ...)
 (slot cf)
)
(deftemplate Risk
 (slot grade (default "LOW"))
 (slot kind (default "NATURAL"))
 (slot cost)
 (slot ...)
 (slot cf)
)
(deftemplate Flood-hazard
 (slot level)
 (slot probability)
 (slot time-reserve (default "3 H"))
 (slot ...)
 (slot cf)
)
(deftemplate Conclusion
 (slot grade (default "LOW"))
 (slot text (default "SAFE SITUATION"))
 (slot cf)
)
;************************ Facts *******************************
(deffacts initial-settings
(Atmospheric-condensation ;Atmospheric condensation
 (grade AC-LOW)
 (kind "SNOW")
 (amount "15 MM")
  CF 1)
)
;************************* Rules ******************************
(defrule Atmospheric-condensation+River->Flood-hazard-1 "Description of the rule: Atmospheric condensation+River->Flood hazard 1"
 (declare (CF 1))
 (Atmospheric-condensation ;Atmospheric condensation
 (grade "AC-LOW")
 (kind "SNOW")
 (amount "15 MM")
  CF 1)
 (River ;River
 (name "ANGARA")
 (water-level "RWL-LOW")
 (region "IRKUTSK")
  CF 0.9)
 =>
 (assert 
(Flood-hazard ;Flood hazard
 (level "LOW")
 (probability "0.9")
   CF 0.9))
)
(defrule Risk+Flood-hazard->Conclusion-1 "Description of the rule: Risk+Flood hazard->Conclusion 1"
 (declare (CF 1))
 (Risk ;Risk
 (grade "LOW")
 (kind "NATURAL")
   CF 0.9)
 (Flood-hazard ;Flood hazard
 (level "LOW")
    CF 0.9)
 =>
 (assert 
(Conclusion ;Conclusion
 (grade "LOW")
 (text "SAFE SITUATION")
 CF 0.9))
)
