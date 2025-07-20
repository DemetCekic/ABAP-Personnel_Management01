**&---------------------------------------------------------------------*
*
REPORT ZDC_PERSONNEL_MANAGEMENT.



INCLUDE ZDC_PERS_DATA_DEF.
INCLUDE ZDC_PERS_SELECTION.

"--- Tabstrip Controls ---
CONTROLS: TB_ID TYPE TABSTRIP,
          SUB3  TYPE TABSTRIP.

"--- Main Screen Call ---
CALL SCREEN 0100.

INITIALIZATION.
  PERFORM DROPDOWN.
*-------------------------------------------------------------------
START-OF-SELECTION.
*-------------------------------------------------------------------

INCLUDE ZDC_PERS_EVENT_LOGIC.
INCLUDE ZDC_PERS_SCREEN_LOGIC.
INCLUDE ZDC_PERS_FORMS.
INCLUDE ZDC_PERS_ALV.
