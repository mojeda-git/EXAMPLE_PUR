CLASS zcl_create_test_data_pur_doc DEFINITION
  PUBLIC
  FINAL
  CREATE PUBLIC .

  PUBLIC SECTION.
    INTERFACES if_oo_adt_classrun.

  PROTECTED SECTION.
  PRIVATE SECTION.

    METHODS clean.
    METHODS create_purchase_documents.
    METHODS create_purchase_document_items.

ENDCLASS.


CLASS zcl_create_test_data_pur_doc IMPLEMENTATION.

  METHOD create_purchase_documents.
    DATA: lt_purch_docs TYPE STANDARD TABLE OF zpurdocument.

    DATA lv_time_stamp_utc TYPE timestampl.
    GET TIME STAMP FIELD lv_time_stamp_utc.

    lt_purch_docs = VALUE #(
    ( purchasedocument = '1' crea_uname = 'John Doe' crea_date_time = lv_time_stamp_utc description = 'Company Car Purchase' status = '1' priority = '1'
      lchg_date_time = lv_time_stamp_utc lchg_uname = 'John Doe' purchasingorganization = 'ORG1' purchasedocumentimageurl = './images/car.jpg'  )
    ( purchasedocument = '2' crea_uname = 'Marissa May' crea_date_time = lv_time_stamp_utc description = 'Hardware Purchase' status = '1' priority = '2'
      lchg_date_time = lv_time_stamp_utc lchg_uname = 'Marissa May' purchasingorganization = 'ORG2' purchasedocumentimageurl = './images/laptop.jpg'   )
    ( purchasedocument = '3' crea_uname = 'Mike Smith' crea_date_time = lv_time_stamp_utc description = 'Book Purchase' status = '1'  priority = '3'
      lchg_date_time = lv_time_stamp_utc lchg_uname = 'Mike Smith' purchasingorganization = 'ORG3' purchasedocumentimageurl = './images/book.jpg'  )
    ( purchasedocument = '4' crea_uname = 'Juan Perez' crea_date_time = lv_time_stamp_utc description = 'Company Car Purchase' status = '1' priority = '1'
      lchg_date_time = lv_time_stamp_utc lchg_uname = 'John Doe' purchasingorganization = 'ORG1' purchasedocumentimageurl = './images/car.jpg'  ) ).

    INSERT zpurdocument FROM TABLE @lt_purch_docs.

  ENDMETHOD.


  METHOD create_purchase_document_items.
    DATA: lt_purch_doc_items TYPE STANDARD TABLE OF zpurdocitem.

    DATA lv_time_stamp_utc TYPE timestampl.
    GET TIME STAMP FIELD lv_time_stamp_utc.

    lt_purch_doc_items = VALUE #(
        ( purchasedocument = '1' purchasedocumentitem = '1' crea_uname = 'John Doe' crea_date_time = lv_time_stamp_utc description = 'Tires' price = '300.00' currency = 'EUR' quantity = '4' quantityunit = 'PC'
          vendor = 'Miller Cars' vendortype = 'E' lchg_date_time = lv_time_stamp_utc lchg_uname = 'John Doe' purchasedocumentitemimageurl = './images/car.jpg'  )
        ( purchasedocument = '1' purchasedocumentitem = '2' crea_uname = 'John Doe' crea_date_time = lv_time_stamp_utc description = 'Company Car' price = '40000' currency = 'EUR' quantity = '1' quantityunit = 'PC'
          vendor = 'Miller Cars' vendortype = 'E' lchg_date_time = lv_time_stamp_utc lchg_uname = 'John Doe' purchasedocumentitemimageurl = './images/car.jpg'  )
        ( purchasedocument = '2' purchasedocumentitem = '1' crea_uname = 'Marissa May' crea_date_time = lv_time_stamp_utc description = 'Screen' price = '200.00' currency = 'EUR' quantity = '2' quantityunit = 'PC'
          vendor = 'Doe Computers' vendortype = 'Q' lchg_date_time = lv_time_stamp_utc lchg_uname = 'Marissa May' purchasedocumentitemimageurl = './images/screen.jpg' )
        ( purchasedocument = '2' purchasedocumentitem = '2' crea_uname = 'Marissa May' crea_date_time = lv_time_stamp_utc description = 'Keyboard' price = '100.00' currency = 'EUR' quantity = '1' quantityunit = 'PC'
          vendor = 'Doe Computers' vendortype = 'I' lchg_date_time = lv_time_stamp_utc lchg_uname = 'Marissa May' purchasedocumentitemimageurl = './images/keyboard.jpg'     )
        ( purchasedocument = '2' purchasedocumentitem = '3' crea_uname = 'Marissa May' crea_date_time = lv_time_stamp_utc description = 'Mouse' price = '50.00' currency = 'EUR' quantity = '1' quantityunit = 'PC' vendor = 'Doe Computers'
          vendortype = 'I' lchg_date_time = lv_time_stamp_utc lchg_uname = 'Marissa May'  purchasedocumentitemimageurl = '../images/mouse.jpg'  )
        ( purchasedocument = '2' purchasedocumentitem = '4' crea_uname = 'Marissa May' crea_date_time = lv_time_stamp_utc description = 'Computer' price = '500.00' currency = 'EUR' quantity = '1' quantityunit = 'PC'
          vendor = 'Doe Computers' vendortype = 'P' lchg_date_time = lv_time_stamp_utc lchg_uname = 'Marissa May'  purchasedocumentitemimageurl = './images/laptop.jpg'  )
        ( purchasedocument = '3' purchasedocumentitem = '1' crea_uname = 'Mike Smith' crea_date_time = lv_time_stamp_utc description = 'SAP Press - Fiori' price = '50.00' currency = 'EUR' quantity = '1' quantityunit = 'PC'
          vendor = 'SAP Press' vendortype = 'E' lchg_date_time = lv_time_stamp_utc lchg_uname = 'Mike Smith'  purchasedocumentitemimageurl = './images/book.jpg'  )
        ( purchasedocument = '3' purchasedocumentitem = '2' crea_uname = 'Mike Smith' crea_date_time = lv_time_stamp_utc description = 'SAP Press - HANA' price = '50.00' currency = 'EUR' quantity = '1' quantityunit = 'PC'
          vendor = 'SAP Press' vendortype = 'I' lchg_date_time = lv_time_stamp_utc lchg_uname = 'Mike Smith' purchasedocumentitemimageurl = './images/book.jpg'   )
        ( purchasedocument = '4' purchasedocumentitem = '1' crea_uname = 'Juan Perez' crea_date_time = lv_time_stamp_utc description = 'Tires' price = '400.00' currency = 'USD' quantity = '2' quantityunit = 'PC'
          vendor = 'Miller Cars' vendortype = 'E' lchg_date_time = lv_time_stamp_utc lchg_uname = 'John Doe' purchasedocumentitemimageurl = './images/car.jpg'  )
        ( purchasedocument = '4' purchasedocumentitem = '2' crea_uname = 'Juan Perez' crea_date_time = lv_time_stamp_utc description = 'Wheels' price = '3000' currency = 'USD' quantity = '2' quantityunit = 'PC'
          vendor = 'Miller Cars' vendortype = 'E' lchg_date_time = lv_time_stamp_utc lchg_uname = 'John Doe' purchasedocumentitemimageurl = './images/car.jpg'  )
         ).

    INSERT zpurdocitem FROM TABLE @lt_purch_doc_items.

  ENDMETHOD.


  METHOD clean.
    DELETE FROM zpurdocument.
    DELETE FROM zpurdocitem.
  ENDMETHOD.

  METHOD if_oo_adt_classrun~main.

    clean( ).
    create_purchase_documents( ).
    create_purchase_document_items( ).

    out->write( 'Test data creation done'  ).

  ENDMETHOD.

ENDCLASS.
