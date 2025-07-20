*&---------------------------------------------------------------------*
*&  Include           ZDC_PERS_FORMS
*&---------------------------------------------------------------------*

"--- Save or Update Person ---
" Saves new record or updates existing one in ZDC_PSID_DT table.
FORM save_person.

  gs_pers-id                = p_pID      .
  gs_pers-name              = p_pname    .
  gs_pers-surname           = p_psname   .
  gs_pers-bday              = p_bday     .
  gs_pers-gender            = p_gender   .
  gs_pers-phone_number      = p_pnmbr    .
  gs_pers-email             = p_email    .
  gs_pers-country           = p_cntry    .
  gs_pers-city              = p_city     .
  gs_pers-nationality       = p_nation   .
  gs_pers-marital_status    = p_mstts    .
  gs_pers-address           = p_adrs     .
  gs_pers-ADDRESS2          = p_adrs2    .
  gs_pers-employment_status = p_estts    .
  gs_pers-notes             = p_notes    .

  SELECT SINGLE * FROM ZDC_PSID_DT INTO @DATA(ls_existing) WHERE id = @p_pID.

  IF sy-subrc = 0.
    UPDATE ZDC_PSID_DT SET
      name              = @p_pname    ,
      surname           = @p_psname   ,
      bday              = @p_bday     ,
      gender            = @p_gender   ,
      phone_number      = @p_pnmbr    ,
      email             = @p_email    ,
      country           = @p_cntry    ,
      city              = @p_city     ,
      nationality       = @p_nation   ,
      marital_status    = @p_mstts    ,
      address           = @p_adrs     ,
      address2          = @p_adrs2    ,
      employment_status = @p_estts    ,
      notes             = @p_notes
     WHERE id = @p_pID.


    IF sy-subrc = 0.
      MESSAGE 'Person updated successfully.' TYPE 'S'.
    ELSE.
      MESSAGE 'Update failed.' TYPE 'E'.
    ENDIF.
  ELSE.
    INSERT INTO ZDC_PSID_DT VALUES @gs_pers.
    IF sy-subrc = 0.
      MESSAGE 'Person saved successfully.' TYPE 'S'.
    ELSE.
      MESSAGE 'Error while saving record.' TYPE 'E'.
    ENDIF.
  ENDIF.

ENDFORM.

"--- Delete Person ---
" Deletes person record by ID from ZDC_PSID_DT table.
FORM delete_person.
  DELETE FROM ZDC_PSID_DT WHERE id = p_pID.
  IF sy-subrc = 0.
    MESSAGE 'Person deleted successfully.' TYPE 'S'.
  ELSE.
    MESSAGE 'No record found to delete.' TYPE 'E'.
  ENDIF.
ENDFORM.

"--- Dropdown Initialization ---
FORM DROPDOWN.
    DATA: lv_fname  TYPE vrm_id,
        lt_values TYPE vrm_values.
  lv_fname = 'p_estts'.
  APPEND VALUE #( key = 'FULLTIME'   text = 'Fulltime' )     TO lt_values.
  APPEND VALUE #( key = 'PARTTIME'   text = 'Parttime' )     TO lt_values.
  APPEND VALUE #( key = 'CONTRACT'   text = 'Contractor' )   TO lt_values.
  APPEND VALUE #( key = 'INTERN'     text = 'Intern' )       TO lt_values.
  APPEND VALUE #( key = 'FREELANCE'  text = 'Freelancer' )   TO lt_values.
  APPEND VALUE #( key = 'TEMP'       text = 'Temporary' )    TO lt_values.
  APPEND VALUE #( key = 'ONLEAVE'    text = 'On Leave' )     TO lt_values.
  APPEND VALUE #( key = 'TERMINATED' text = 'Terminated' )   TO lt_values.
  APPEND VALUE #( key = 'PROBATION'  text = 'Probation' )    TO lt_values.
  APPEND VALUE #( key = 'RETIRED'    text = 'Retired' )      TO lt_values.
  APPEND VALUE #( key = 'ACTIVE'     text = 'Active' )       TO lt_values.
  APPEND VALUE #( key = 'INACTIVE'   text = 'Inactive' )     TO lt_values.

  CALL FUNCTION 'VRM_SET_VALUES'
    EXPORTING
      id     = lv_fname
      values = lt_values.
ENDFORM.
