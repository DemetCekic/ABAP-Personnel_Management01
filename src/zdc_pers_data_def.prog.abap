*&---------------------------------------------------------------------*
*&  Include           ZDC_PERS_DATA_DEF
*&---------------------------------------------------------------------*

"--- Type Definitions ---
TYPES: BEGIN OF ty_nation,
         name TYPE string,
       END OF ty_nation.

"--- Data Declarations ---
DATA: gs_pers      TYPE ZDC_PSID_DT,
      gt_pers      TYPE TABLE OF ZDC_PSID_DT,
      gr_container TYPE REF TO cl_gui_custom_container,
      gr_alv       TYPE REF TO cl_gui_alv_grid,
      gv_show_alv  TYPE abap_bool VALUE abap_false,
      lt_return    TYPE TABLE OF ddshretval,
      ls_return    TYPE ddshretval,
      p_mstts      TYPE char1,
      gs_layout    TYPE lvc_s_layo.

*"--- Tabstrip Controls ---
*CONTROLS: TB_ID TYPE TABSTRIP,
*          SUB3  TYPE TABSTRIP.
