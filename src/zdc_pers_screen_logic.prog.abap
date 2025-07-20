*&---------------------------------------------------------------------*
*&  Include           ZDC_PERS_SCREEN_LOGIC
*&---------------------------------------------------------------------*

"--- GUI STATUS for 0100 ---
MODULE STATUS_0100 OUTPUT.
  SET PF-STATUS '0100'.
  SET TITLEBAR '0100'.
ENDMODULE.

"--- User Actions on 0100 ---
MODULE USER_COMMAND_0100 INPUT.
  CASE sy-ucomm.
    WHEN '&BACK' OR '&EXIT'. LEAVE TO SCREEN 0.
    WHEN '&TAB1'. TB_ID-ACTIVETAB = '&TAB1'.
    WHEN '&TAB2'. TB_ID-ACTIVETAB = '&TAB2'.
    WHEN '&TAB3'. TB_ID-ACTIVETAB = '&TAB3'.
    WHEN '&SAVE'. PERFORM save_person.
    WHEN '&DELETE'. PERFORM delete_person.
    WHEN '&RSLT'. CALL SCREEN 0200 STARTING AT 10 5 ENDING AT 150 45.
  ENDCASE.
ENDMODULE.

"--- ALV Setup on 0200 ---
MODULE STATUS_0200 OUTPUT.
  SET PF-STATUS '0200'.
  SET TITLEBAR 'ALV_LIST'.

  IF gr_container IS INITIAL.
    PERFORM DISPLAY_ALV.
  ENDIF.
ENDMODULE.

"--- User Actions on 0200 ---
MODULE USER_COMMAND_0200 INPUT.
  CASE sy-ucomm.
    WHEN '&OK' OR '&CANCEL'.
      LEAVE TO SCREEN 0.
  ENDCASE.
ENDMODULE.
