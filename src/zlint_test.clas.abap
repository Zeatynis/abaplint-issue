CLASS zlint_test DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    TYPES ty_bukrs_config TYPE STANDARD TABLE OF zlint_test2 WITH KEY bukrs.
    METHODS get_bukrs_config
      RETURNING VALUE(bukrs_config) TYPE ty_bukrs_config.
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zlint_test IMPLEMENTATION.
  METHOD get_bukrs_config.
    SELECT bukrs INTO TABLE bukrs_config
      FROM zlint_test2
      ORDER BY PRIMARY KEY.
    ASSERT sy-subrc <> 0.
  ENDMETHOD.
ENDCLASS.
