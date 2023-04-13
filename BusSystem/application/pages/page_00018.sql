prompt --application/pages/page_00018
begin
--   Manifest
--     PAGE: 00018
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
 p_id=>18
,p_user_interface_id=>wwv_flow_api.id(28885432899942659)
,p_name=>'Dodaj autobus'
,p_alias=>'DODAJ-AUTOBUS'
,p_step_title=>'Dodaj autobus'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'JAKUB.CZAJKA@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20230124123424'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46377149503768831)
,p_plug_name=>'Dodaj autobus'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(28795817095942614)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'AUTOBUS'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46381629313768834)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(46377149503768831)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_image_alt=>unistr('Powr\00F3t')
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.:::'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46383293164768835)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(46377149503768831)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dodaj'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P18_NUMER_REJESTRACYJNY'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(46383594310768835)
,p_branch_action=>'f?p=&APP_ID.:4:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46377487323768831)
,p_name=>'P18_NUMER_REJESTRACYJNY'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(46377149503768831)
,p_item_source_plug_id=>wwv_flow_api.id(46377149503768831)
,p_prompt=>'Numer rejestracyjny'
,p_source=>'NUMER_REJESTRACYJNY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>10
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
 p_id=>wwv_flow_api.id(46377893639768832)
,p_name=>'P18_MODEL_AUTOBUSU_PRODUCENT'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(46377149503768831)
,p_item_source_plug_id=>wwv_flow_api.id(46377149503768831)
,p_prompt=>'Producent'
,p_source=>'MODEL_AUTOBUSU_PRODUCENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT DISTINCT producent d, producent r FROM model_autobusu ORDER BY 1;'
,p_cHeight=>1
,p_begin_on_new_line=>'N'
,p_begin_on_new_field=>'N'
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46378299120768832)
,p_name=>'P18_ROK_PRODUKCJI'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(46377149503768831)
,p_item_source_plug_id=>wwv_flow_api.id(46377149503768831)
,p_prompt=>'Rok produkcji'
,p_source=>'ROK_PRODUKCJI'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>4
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46378619115768832)
,p_name=>'P18_PRZEBIEG'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(46377149503768831)
,p_item_source_plug_id=>wwv_flow_api.id(46377149503768831)
,p_prompt=>'Przebieg'
,p_source=>'PRZEBIEG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>10
,p_field_template=>wwv_flow_api.id(28858144660942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46379057310768833)
,p_name=>'P18_MODEL_AUTOBUSU_MODEL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(46377149503768831)
,p_item_source_plug_id=>wwv_flow_api.id(46377149503768831)
,p_prompt=>'Model'
,p_source=>'MODEL_AUTOBUSU_MODEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT DISTINCT model r, model d FROM model_autobusu WHERE producent = :P18_MODEL_AUTOBUSU_PRODUCENT'
,p_lov_cascade_parent_items=>'P18_MODEL_AUTOBUSU_PRODUCENT'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46379408763768833)
,p_name=>'P18_ZAJEZDNIA_ADRES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>70
,p_item_plug_id=>wwv_flow_api.id(46377149503768831)
,p_item_source_plug_id=>wwv_flow_api.id(46377149503768831)
,p_prompt=>'Zajezdnia adres'
,p_source=>'ZAJEZDNIA_ADRES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT adres as d, adres r FROM zajezdnia ORDER BY 1;'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50978603439490701)
,p_validation_name=>'Nr. wymagany'
,p_validation_sequence=>10
,p_validation=>'P18_NUMER_REJESTRACYJNY'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Numer rejestracyjny jest wymagany'
,p_when_button_pressed=>wwv_flow_api.id(46383293164768835)
,p_associated_item=>wwv_flow_api.id(46377487323768831)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50978738862490702)
,p_validation_name=>'Rok wymagany'
,p_validation_sequence=>20
,p_validation=>'P18_ROK_PRODUKCJI'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Rok produkcji autobusu jest wymagany'
,p_when_button_pressed=>wwv_flow_api.id(46383293164768835)
,p_associated_item=>wwv_flow_api.id(46378299120768832)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50978812292490703)
,p_validation_name=>'Przebieg dodatni'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :"P18_PRZEBIEG" >0 OR :"P18_PRZEBIEG" IS NULL THEN',
'  RETURN TRUE;',
'ELSE',
'RETURN FALSE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('Przebieg autobusu musi by\0107 liczb\0105 dodatni\0105')
,p_when_button_pressed=>wwv_flow_api.id(46383293164768835)
,p_associated_item=>wwv_flow_api.id(46378619115768832)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50978923013490704)
,p_validation_name=>'PProducent wymagany'
,p_validation_sequence=>40
,p_validation=>'P18_MODEL_AUTOBUSU_PRODUCENT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Producent autobusu jest wymagany'
,p_when_button_pressed=>wwv_flow_api.id(46383293164768835)
,p_associated_item=>wwv_flow_api.id(46377893639768832)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50979023007490705)
,p_validation_name=>'Model autobusu jest wymagany'
,p_validation_sequence=>50
,p_validation=>'P18_MODEL_AUTOBUSU_MODEL'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Model autobusu jest wymagany'
,p_when_button_pressed=>wwv_flow_api.id(46383293164768835)
,p_associated_item=>wwv_flow_api.id(46379057310768833)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50979179850490706)
,p_validation_name=>'Adres wymagany'
,p_validation_sequence=>60
,p_validation=>'P18_ZAJEZDNIA_ADRES'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Adres zajezdni autobusu jest wymagany'
,p_when_button_pressed=>wwv_flow_api.id(46383293164768835)
,p_associated_item=>wwv_flow_api.id(46379408763768833)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50979280989490707)
,p_validation_name=>'Rok zakres'
,p_validation_sequence=>70
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :"P18_ROK_PRODUKCJI" > 1800 AND :"P18_ROK_PRODUKCJI" < 2025 THEN',
'  RETURN TRUE;',
'ELSE',
'RETURN FALSE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('Rok produkcji autobusu musi by\0107 z zakresu 1800 do 2025')
,p_when_button_pressed=>wwv_flow_api.id(46383293164768835)
,p_associated_item=>wwv_flow_api.id(46378299120768832)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50980906546490724)
,p_validation_name=>'Klucz podstawowy'
,p_validation_sequence=>80
,p_validation=>'SELECT * FROM Autobus WHERE NUMER_REJESTRACYJNY= :P18_NUMER_REJESTRACYJNY'
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>unistr('Numer rejestracyjny jest ju\017C w bazie danych')
,p_when_button_pressed=>wwv_flow_api.id(46383293164768835)
,p_associated_item=>wwv_flow_api.id(46377487323768831)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46384422219768836)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(46377149503768831)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Dodaj autobus'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46384001065768836)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(46377149503768831)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Dodaj autobus'
);
wwv_flow_api.component_end;
end;
/
