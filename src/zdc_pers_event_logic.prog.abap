*&---------------------------------------------------------------------*
*&  Include           ZDC_PERS_EVENT_LOGIC
*&---------------------------------------------------------------------*


  "--- F4 Help for Nationality ---
AT SELECTION-SCREEN ON VALUE-REQUEST FOR p_nation.
  IF p_nation = 'Select a country from the list'.
    MESSAGE 'Please select a valid nationality.' TYPE 'E'.
  ENDIF.
  CALL FUNCTION 'F4IF_FIELD_VALUE_REQUEST'
    EXPORTING
      tabname    = 'T005'
      fieldname  = 'LAND1'
    TABLES
      return_tab = lt_return.
  READ TABLE lt_return INTO ls_return INDEX 1.
  IF sy-subrc = 0.
    p_nation = ls_return-fieldval.
  ENDIF.


  "--- F4 Help for Country Code ---
AT SELECTION-SCREEN ON VALUE-REQUEST FOR p_cntry.
  CALL FUNCTION 'F4IF_FIELD_VALUE_REQUEST'
    EXPORTING
      tabname     = 'T005'
      fieldname   = 'LAND1'
      dynpprog    = sy-repid
      dynpnr      = sy-dynnr
      dynprofield = 'P_NATION'
    TABLES
      return_tab  = lt_return.
  READ TABLE lt_return INTO ls_return INDEX 1.
  IF sy-subrc = 0.
    p_nation = ls_return-fieldval.
  ENDIF.


  "--- Preprocess Selection-Screen ---

AT SELECTION-SCREEN.
  " Gender assignment from radio buttons
  IF r_male = 'X'.
    p_gender = 'M'.
  ELSEIF r_female = 'X'.
    p_gender = 'F'.
  ENDIF.


  " Marital status from radio buttons
  IF r_single = 'X'.
    p_mstts = 'S'.
  ELSEIF r_marrd = 'X'.
    p_mstts = 'M'.
  ELSEIF r_div = 'X'.
    p_mstts = 'D'.
  ENDIF.


  " Phone number length check and numeric only validation
  IF p_pnmbr IS NOT INITIAL.
    CONDENSE p_pnmbr NO-GAPS.
    IF strlen( p_pnmbr ) < 10.
      MESSAGE 'Phone number must be at least 10 digits.' TYPE 'E'.
    ENDIF.

    " Check if phone number contains only digits and + sign
    DATA(lv_phone) = CONDENSE( p_pnmbr ).
    IF lv_phone CA 'ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz!@#$%^&*()_+=~`[]{}\|;:''",.<>?/ '.
      MESSAGE 'Phone number contains invalid characters.' TYPE 'E'.
    ENDIF.
  ENDIF.


  " Basic email format check (@ and . must be present)
  IF p_email IS NOT INITIAL.
    IF NOT p_email CP '*@*.*'.
      MESSAGE 'Email format is invalid.' TYPE 'E'.
    ENDIF.
  ENDIF.

  " Birthdate cannot be in the future
  IF p_bday > sy-datum.
    MESSAGE 'Birth date cannot be in the future.' TYPE 'E'.
  ENDIF.
