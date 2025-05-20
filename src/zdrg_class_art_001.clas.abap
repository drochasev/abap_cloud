CLASS zdrg_class_art_001 DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.

    INTERFACES if_oo_adt_classrun .
  PROTECTED SECTION.
  PRIVATE SECTION.
ENDCLASS.



CLASS zdrg_class_art_001 IMPLEMENTATION.


  METHOD if_oo_adt_classrun~main.

    DATA: it_art TYPE STANDARD TABLE OF zdrg_tab_art.

    it_art = VALUE #(
    ( client = sy-mandt id_art = 1 descr = 'Libreta básica' desc2 = 'Una libreta básica Black N5'
    color = 'Negro' piezas = 1 stock = 10
    url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-no5-3Pack-black-2_1200x.jpg?v=1616621374')

    ( client = sy-mandt id_art = 2 descr = 'Caja 12 lapices' desc2 = 'Una caja con 12 lapices'
    color = 'Negro' piezas = 12 stock = 14
    url = 'https://lalibreteria.mx/cdn/shop/files/la-libreteria-blackwing-602-short-1_700x.jpg?v=1707096116')

    ( client = sy-mandt id_art = 3 descr = 'Goma borrar' desc2 = 'Una goma de borrar'
    color = 'Blanco' piezas = 1 stock = 20
    url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-blackwing-handheld-eraser-and-holde-4_700x.jpg?v=1720077024')

    ( client = sy-mandt id_art = 4 descr = 'Saca puntas' desc2 = 'Un saca puntas para lapices'
    color = 'Varios' piezas = 1 stock = 25
    url = 'https://lalibreteria.mx/cdn/shop/products/la-libreteria-kum-wood1_2_c28dbfd0-34fc-40a0-a2d6-79e1a56e06e0_700x.jpg?v=1588182945')
    ).

    INSERT zdrg_tab_art FROM TABLE @it_art.
    IF sy-subrc EQ 0.
        out->write( 'Insertado correctamente' ).
    ELSE.
        out->write( 'Error al insertar' ).
    ENDIF.

  ENDMETHOD.
ENDCLASS.
