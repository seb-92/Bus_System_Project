prompt --application/pages/page_00084
begin
--   Manifest
--     PAGE: 00084
--   Manifest End
wwv_flow_api.component_begin (
 p_version_yyyy_mm_dd=>'2021.04.15'
,p_release=>'21.1.0'
,p_default_workspace_id=>27994415979082868
,p_default_application_id=>120
,p_default_id_offset=>0
,p_default_owner=>'WKSP_BAZYDANYCHPROJEKT'
);
wwv_flow_api.create_page(
 p_id=>84
,p_user_interface_id=>wwv_flow_api.id(28885432899942659)
,p_name=>'Dodawanie przystanku w dowolne miejsce linii'
,p_alias=>'DODAWANIE-PRZYSTANKU-W-DOWOLNE-MIEJSCE-LINII'
,p_step_title=>'Dodawanie przystanku w dowolne miejsce linii'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'JAKUB.CZAJKA@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20230125112924'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(52989073398872402)
,p_plug_name=>'Dodawanie przystanku w dowolne miejsce linii'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(28795817095942614)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'KOLEJNOSC_PRZYSTANKOW'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52992213222872405)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(52989073398872402)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_image_alt=>unistr('Powr\00F3t')
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:26:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52993813061872406)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(52989073398872402)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dodaj'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P84_ROWID'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(52994162724872406)
,p_branch_action=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52989491854872402)
,p_name=>'P84_ROWID'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(52989073398872402)
,p_item_source_plug_id=>wwv_flow_api.id(52989073398872402)
,p_use_cache_before_default=>'NO'
,p_prompt=>'Rowid'
,p_source=>'ROWID'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_HIDDEN'
,p_label_alignment=>'RIGHT'
,p_field_template=>wwv_flow_api.id(28858144660942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52989895332872403)
,p_name=>'P84_NUMER_PRZYSTANKU'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(52989073398872402)
,p_item_source_plug_id=>wwv_flow_api.id(52989073398872402)
,p_prompt=>'Numer Przystanku'
,p_source=>'NUMER_PRZYSTANKU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52990293867872403)
,p_name=>'P84_LINIA_AUTOBUSOWA_NUMER_LINII'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(52989073398872402)
,p_item_source_plug_id=>wwv_flow_api.id(52989073398872402)
,p_prompt=>'Linia Autobusowa Numer Linii'
,p_source=>'LINIA_AUTOBUSOWA_NUMER_LINII'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT numer_linii as d, numer_linii r FROM LINIA_AUTOBUSOWA ORDER BY 1;'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52990617924872404)
,p_name=>'P84_PRZYSTANEK_ID_PRZYSTANKU'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(52989073398872402)
,p_item_source_plug_id=>wwv_flow_api.id(52989073398872402)
,p_prompt=>'Przystanek Id Przystanku'
,p_source=>'PRZYSTANEK_ID_PRZYSTANKU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT nazwa ||  '' - '' || id_przystanku d, id_przystanku r FROM przystanek ORDER BY 1;'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(52913618913951915)
,p_validation_name=>'Klucz podstawowy'
,p_validation_sequence=>10
,p_validation=>'SELECT * FROM KOLEJNOSC_PRZYSTANKOW WHERE numer_przystanku = :P84_numer_przystanku AND linia_autobusowa_numer_linii = :P84_linia_autobusowa_numer_linii AND przystanek_id_przystanku = CAST(:P84_przystanek_id_przystanku AS char(10))'
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>unistr('Taki przystanek jest ju\017C dodany do tej linii autobusowej')
,p_associated_item=>wwv_flow_api.id(52990293867872403)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(52913794925951916)
,p_validation_name=>'Not null linia'
,p_validation_sequence=>20
,p_validation=>'P84_LINIA_AUTOBUSOWA_NUMER_LINII'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Linia autobusowa nie mo\017Ce by\0107 pusta')
,p_associated_item=>wwv_flow_api.id(52990293867872403)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(52913854846951917)
,p_validation_name=>unistr('Przystanek zaj\0119ty')
,p_validation_sequence=>30
,p_validation=>'(REGEXP_LIKE(:"P84_NUMER_PRZYSTANKU", ''^[+-]?[0-9]+(\.[0-9]+)?$'') AND :"P84_NUMER_PRZYSTANKU" > 0)'
,p_validation2=>'SQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Numer przystanku musi by\0107 liczb\0105 ca\0142kowit\0105 wi\0119ksz\0105 od 0')
,p_associated_item=>wwv_flow_api.id(52989895332872403)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(52913978133951918)
,p_validation_name=>'New'
,p_validation_sequence=>40
,p_validation=>'SELECT * FROM KOLEJNOSC_PRZYSTANKOW WHERE numer_przystanku = :P84_numer_przystanku AND linia_autobusowa_numer_linii = :P84_linia_autobusowa_numer_linii'
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>unistr('Przystanek o takim numerze jest ju\017C dodany do tej linii')
,p_when_button_pressed=>wwv_flow_api.id(52993813061872406)
,p_associated_item=>wwv_flow_api.id(52989895332872403)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(52914095538951919)
,p_validation_name=>'Not null'
,p_validation_sequence=>50
,p_validation=>'P84_NUMER_PRZYSTANKU'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Numer przystanku nie mo\017Ce by\0107 pusty')
,p_when_button_pressed=>wwv_flow_api.id(52993813061872406)
,p_associated_item=>wwv_flow_api.id(52989895332872403)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(52995090705872406)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(52989073398872402)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Dodawanie przystanku w dowolne miejsce linii'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(52994628182872406)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(52989073398872402)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Dodawanie przystanku w dowolne miejsce linii'
);
wwv_flow_api.component_end;
end;
/
