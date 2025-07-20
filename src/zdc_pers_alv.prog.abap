*&---------------------------------------------------------------------*
*&  Include           ZDC_PERS_ALV
*&---------------------------------------------------------------------*
*&---------------------------------------------------------------------*
*&      Form  DISPLAY_ALV
*&---------------------------------------------------------------------*
*       text
*----------------------------------------------------------------------*
*  -->  p1        text
*  <--  p2        text
*----------------------------------------------------------------------*
FORM DISPLAY_ALV .
  CREATE OBJECT gr_container EXPORTING container_name = 'CC_ALV'.
  CREATE OBJECT gr_alv EXPORTING i_parent = gr_container.

  SELECT * FROM zdc_psid_dt INTO TABLE gt_pers.
  CLEAR gs_layout.
  gs_layout-CWIDTH_OPT = abap_true.
  gs_layout-zebra   = abap_true.

  CALL METHOD gr_alv->set_table_for_first_display
    EXPORTING
      i_structure_name = 'ZDC_PSID_DT'
      is_layout        = gs_layout
    CHANGING
      it_outtab        = gt_pers.
ENDFORM.
