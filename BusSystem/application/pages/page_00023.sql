prompt --application/pages/page_00023
begin
--   Manifest
--     PAGE: 00023
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
 p_id=>23
,p_user_interface_id=>wwv_flow_api.id(28885432899942659)
,p_name=>'Dodaj bilet'
,p_alias=>'DODAJ-BILET'
,p_step_title=>'Dodaj bilet'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'JAKUB.CZAJKA@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20230125013223'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46559934848865169)
,p_plug_name=>'Dodaj bilet'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(28795817095942614)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>unistr('BILET_KR\00D3TKOOKRESOWY')
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46562302235865170)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(46559934848865169)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_image_alt=>unistr('Powr\00F3t')
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:::'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46563949190865171)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(46559934848865169)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dodaj'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P23_RODZAJ_ULGI'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(46564237835865172)
,p_branch_action=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46560287659865169)
,p_name=>'P23_RODZAJ_ULGI'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(46559934848865169)
,p_item_source_plug_id=>wwv_flow_api.id(46559934848865169)
,p_prompt=>'Rodzaj ulgi'
,p_source=>'RODZAJ_ULGI'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46560642966865169)
,p_name=>unistr('P23_OKRES_OBOWI\0104ZYWANIA')
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(46559934848865169)
,p_item_source_plug_id=>wwv_flow_api.id(46559934848865169)
,p_prompt=>unistr('Okres obowi\0105zywania')
,p_source=>unistr('OKRES_OBOWI\0104ZYWANIA')
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46561037157865170)
,p_name=>'P23_CENA'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(46559934848865169)
,p_item_source_plug_id=>wwv_flow_api.id(46559934848865169)
,p_prompt=>'Cena'
,p_source=>'CENA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>6
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50704692696331111)
,p_validation_name=>unistr('Rodzaj nie mo\017Ce by\0107 pusty')
,p_validation_sequence=>10
,p_validation=>'P23_RODZAJ_ULGI'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>unistr('Rodzaj ulgi nie mo\017Ce pozosta\0107 pusty')
,p_when_button_pressed=>wwv_flow_api.id(46563949190865171)
,p_associated_item=>wwv_flow_api.id(46560287659865169)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50704791950331112)
,p_validation_name=>unistr('Okres nie mo\017Ce by\0107 pusty')
,p_validation_sequence=>20
,p_validation=>unistr('P23_OKRES_OBOWI\0104ZYWANIA')
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>unistr('Okres obowi\0105zywania nie mo\017Ce pozosta\0107 pusty')
,p_when_button_pressed=>wwv_flow_api.id(46563949190865171)
,p_associated_item=>wwv_flow_api.id(46560642966865169)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50704818690331113)
,p_validation_name=>unistr('Cena nie mo\017Ce pozosta\0107 pusta')
,p_validation_sequence=>30
,p_validation=>'P23_CENA'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Cena nie mo\017Ce pozosta\0107 pusta')
,p_when_button_pressed=>wwv_flow_api.id(46563949190865171)
,p_associated_item=>wwv_flow_api.id(46561037157865170)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50705075230331115)
,p_validation_name=>'New'
,p_validation_sequence=>40
,p_validation=>':P23_CENA > 0'
,p_validation2=>'PLSQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Cena musi by\0107 wi\0119ksza od 0')
,p_when_button_pressed=>wwv_flow_api.id(46563949190865171)
,p_associated_item=>wwv_flow_api.id(46561037157865170)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50981980762490734)
,p_validation_name=>'Klucz podstawowy'
,p_validation_sequence=>50
,p_validation=>unistr('SELECT * FROM Bilet_kr\00F3tkookresowy WHERE rodzaj_ulgi = :P23_rodzaj_ulgi AND okres_obowi\0105zywania = :"P23_okres_obowi\0105zywania"')
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>unistr('Taki typ biletu istnieje ju\017C w bazie danych')
,p_when_button_pressed=>wwv_flow_api.id(46563949190865171)
,p_associated_item=>wwv_flow_api.id(46560287659865169)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46565109675865172)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(46559934848865169)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Dodaj bilet'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46564763037865172)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(46559934848865169)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Dodaj bilet'
);
wwv_flow_api.component_end;
end;
/
