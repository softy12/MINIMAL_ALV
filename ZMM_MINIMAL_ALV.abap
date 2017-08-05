REPORT zmm_minimal_alv_01.

SELECT * FROM usr02 INTO TABLE @DATA(lt_users).

CALL FUNCTION 'REUSE_ALV_GRID_DISPLAY'
  EXPORTING
    i_structure_name = 'USR02'
  TABLES
    t_outtab         = lt_users.
