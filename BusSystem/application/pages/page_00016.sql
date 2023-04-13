prompt --application/pages/page_00016
begin
--   Manifest
--     PAGE: 00016
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
 p_id=>16
,p_user_interface_id=>wwv_flow_api.id(28885432899942659)
,p_name=>'Dodawanie Pracownika'
,p_alias=>'DODAWANIE-PRACOWNIKA'
,p_step_title=>'Dodawanie Pracownika'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'JAKUB.CZAJKA@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20230125012529'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(33352389341407931)
,p_plug_name=>'Dodawanie Pracownika'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(28795817095942614)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'PRACOWNIK'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33356838297407936)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(33352389341407931)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_image_alt=>unistr('Powr\00F3t')
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:::'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(33358442477407938)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(33352389341407931)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dodaj'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(33358767454407938)
,p_branch_action=>'f?p=&APP_ID.:1:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50101522215037408)
,p_name=>'P16_PESEL'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>140
,p_item_plug_id=>wwv_flow_api.id(33352389341407931)
,p_item_source_plug_id=>wwv_flow_api.id(33352389341407931)
,p_prompt=>'Pesel'
,p_source=>'PESEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>11
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50101611863037409)
,p_name=>unistr('P16_IMI\0118')
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>150
,p_item_plug_id=>wwv_flow_api.id(33352389341407931)
,p_item_source_plug_id=>wwv_flow_api.id(33352389341407931)
,p_prompt=>unistr('Imi\0119')
,p_source=>unistr('IMI\0118')
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>60
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50101731146037410)
,p_name=>'P16_NAZWISKO'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>160
,p_item_plug_id=>wwv_flow_api.id(33352389341407931)
,p_item_source_plug_id=>wwv_flow_api.id(33352389341407931)
,p_prompt=>'Nazwisko'
,p_source=>'NAZWISKO'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>60
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50101892610037411)
,p_name=>unistr('P16_ZAW\00D3D')
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>170
,p_item_plug_id=>wwv_flow_api.id(33352389341407931)
,p_item_source_plug_id=>wwv_flow_api.id(33352389341407931)
,p_prompt=>unistr('Zaw\00F3d')
,p_source=>unistr('ZAW\00D3D')
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'STATIC:Kierowca;Kierowca,Mechanik;Mechanik'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50101922368037412)
,p_name=>'P16_WYNAGRODZENIE'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>180
,p_item_plug_id=>wwv_flow_api.id(33352389341407931)
,p_item_source_plug_id=>wwv_flow_api.id(33352389341407931)
,p_prompt=>'Wynagrodzenie'
,p_source=>'WYNAGRODZENIE'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>8
,p_field_template=>wwv_flow_api.id(28858144660942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50102008773037413)
,p_name=>'P16_WIEK'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>190
,p_item_plug_id=>wwv_flow_api.id(33352389341407931)
,p_item_source_plug_id=>wwv_flow_api.id(33352389341407931)
,p_prompt=>'Wiek'
,p_source=>'WIEK'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>3
,p_field_template=>wwv_flow_api.id(28858144660942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(46646438031102847)
,p_validation_name=>unistr('Pesel nie mo\017Ce by\0107 pusty')
,p_validation_sequence=>10
,p_validation=>'P16_PESEL'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>unistr('Pesel nie mo\017Ce pozosta\0107 pusty')
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_api.id(33358442477407938)
,p_associated_item=>wwv_flow_api.id(50101522215037408)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(46646608620102849)
,p_validation_name=>'Klucz podstawowy tabeli'
,p_validation_sequence=>20
,p_validation=>'SELECT * FROM Pracownik WHERE pesel= :P16_PESEL'
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>unistr('Pesel jest ju\017C w bazie danych')
,p_when_button_pressed=>wwv_flow_api.id(33358442477407938)
,p_associated_item=>wwv_flow_api.id(50101522215037408)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(46646715499102850)
,p_validation_name=>unistr('Imi\0119 nie mo\017Ce by\0107 puste')
,p_validation_sequence=>30
,p_validation=>unistr('P16_IMI\0118')
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>unistr('Imi\0119 nie mo\017Ce pozosta\0107 puste')
,p_when_button_pressed=>wwv_flow_api.id(33358442477407938)
,p_associated_item=>wwv_flow_api.id(50101611863037409)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50703679519331101)
,p_validation_name=>unistr('Nazwisko nie mo\017Ce by\0107 puste')
,p_validation_sequence=>40
,p_validation=>'P16_NAZWISKO'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>unistr('Nazwisko nie mo\017Ce pozosta\0107 puste')
,p_when_button_pressed=>wwv_flow_api.id(33358442477407938)
,p_associated_item=>wwv_flow_api.id(50101731146037410)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50703722873331102)
,p_validation_name=>unistr('Zaw\00F3d nie mo\017Ce by\0107 pusty')
,p_validation_sequence=>50
,p_validation=>unistr('P16_ZAW\00D3D')
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>unistr('Zaw\00F3d nie mo\017Ce pozosta\0107 pusty')
,p_when_button_pressed=>wwv_flow_api.id(33358442477407938)
,p_associated_item=>wwv_flow_api.id(50101892610037411)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50703898982331103)
,p_validation_name=>unistr('Warto\015B\0107 dodatnia')
,p_validation_sequence=>60
,p_validation=>'(REGEXP_LIKE(:P16_WYNAGRODZENIE, ''^[+-]?[0-9]+(\.[0-9]+)?$'') AND :P16_WYNAGRODZENIE >0) OR :P16_WYNAGRODZENIE IS NULL'
,p_validation2=>'SQL'
,p_validation_type=>'EXPRESSION'
,p_error_message=>unistr('Wynagrodzenie musi by\0107 warto\015Bci\0105 dodatni\0105')
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_api.id(33358442477407938)
,p_associated_item=>wwv_flow_api.id(50101922368037412)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50704189941331106)
,p_validation_name=>unistr('Warto\015B\0107 z przedzia\0142u 18  - 120')
,p_validation_sequence=>90
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P16_WIEK BETWEEN 18 and 120 OR :P16_WIEK IS NULL THEN',
'  RETURN TRUE;',
'ELSE',
'RETURN FALSE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('Wiek musi by\0107 liczb\0105 z przedzia\0142u od 18 do 120')
,p_always_execute=>'Y'
,p_when_button_pressed=>wwv_flow_api.id(33358442477407938)
,p_associated_item=>wwv_flow_api.id(50102008773037413)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33359675638407941)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(33352389341407931)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Dodawanie Pracownika'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(47889026651804107)
,p_process_sequence=>20
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'message'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'begin',
unistr('apex_application.g_print_success_message := ''<span style="color:#ffffff">Pomy\015Blnie dodano pracownika!</span>'';'),
'end;'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(33359282793407941)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(33352389341407931)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Dodawanie Pracownika'
);
wwv_flow_api.component_end;
end;
/
