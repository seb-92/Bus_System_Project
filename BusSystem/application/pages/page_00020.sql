prompt --application/pages/page_00020
begin
--   Manifest
--     PAGE: 00020
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
 p_id=>20
,p_user_interface_id=>wwv_flow_api.id(28885432899942659)
,p_name=>'Dodawanie modelu'
,p_alias=>'DODAWANIE-MODELU'
,p_step_title=>'Dodawanie modelu'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'JAKUB.CZAJKA@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20230124123307'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46504687322677345)
,p_plug_name=>'Dodawanie modelu'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(28795817095942614)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'MODEL_AUTOBUSU'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46507743639677348)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(46504687322677345)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_image_alt=>unistr('Powr\00F3t')
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.:::'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46509326114677349)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(46504687322677345)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dodaj'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P20_MODEL'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(46509636406677349)
,p_branch_action=>'f?p=&APP_ID.:6:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46504941415677346)
,p_name=>'P20_MODEL'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(46504687322677345)
,p_item_source_plug_id=>wwv_flow_api.id(46504687322677345)
,p_prompt=>'Model'
,p_source=>'MODEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>60
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
 p_id=>wwv_flow_api.id(46505397248677346)
,p_name=>'P20_PRODUCENT'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(46504687322677345)
,p_item_source_plug_id=>wwv_flow_api.id(46504687322677345)
,p_prompt=>'Producent'
,p_source=>'PRODUCENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>60
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
 p_id=>wwv_flow_api.id(46505746526677346)
,p_name=>unistr('P20_ILO\015A\0106_MIEJSC')
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(46504687322677345)
,p_item_source_plug_id=>wwv_flow_api.id(46504687322677345)
,p_prompt=>unistr('Ilo\015B\0107 miejsc')
,p_source=>unistr('ILO\015A\0106_MIEJSC')
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
 p_id=>wwv_flow_api.id(46506138858677347)
,p_name=>'P20_RODZAJ_PALIWA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(46504687322677345)
,p_item_source_plug_id=>wwv_flow_api.id(46504687322677345)
,p_prompt=>'Rodzaj paliwa'
,p_source=>'RODZAJ_PALIWA'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>32
,p_cMaxlength=>60
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50707973222331144)
,p_validation_name=>'Model wymagany'
,p_validation_sequence=>10
,p_validation=>'P20_MODEL'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>unistr('Model autobusu nie mo\017Ce by\0107 pusty')
,p_when_button_pressed=>wwv_flow_api.id(46509326114677349)
,p_associated_item=>wwv_flow_api.id(46504941415677346)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50708080799331145)
,p_validation_name=>'Producent wymagany'
,p_validation_sequence=>20
,p_validation=>'P20_PRODUCENT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>unistr('Producent autobusu nie mo\017Ce by\0107 pusty')
,p_when_button_pressed=>wwv_flow_api.id(46509326114677349)
,p_associated_item=>wwv_flow_api.id(46505397248677346)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50708198360331146)
,p_validation_name=>unistr('Ilo\015B\0107 miejsc wymagana')
,p_validation_sequence=>30
,p_validation=>unistr('P20_ILO\015A\0106_MIEJSC')
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>unistr('Ilo\015B\0107 miejsc w autobusie musi zosta\0107 podana')
,p_when_button_pressed=>wwv_flow_api.id(46509326114677349)
,p_associated_item=>wwv_flow_api.id(46505746526677346)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50708317595331148)
,p_validation_name=>'Rodzaj wymagany'
,p_validation_sequence=>40
,p_validation=>'P20_RODZAJ_PALIWA'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>unistr('Rodzaj paliwa w autobusie musi zosta\0107 podany')
,p_when_button_pressed=>wwv_flow_api.id(46509326114677349)
,p_associated_item=>wwv_flow_api.id(46506138858677347)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50708507648331150)
,p_validation_name=>unistr('Ilo\015B\0107 miejsc dodatnie')
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('IF :"P20_ILO\015A\0106_MIEJSC" >0 THEN'),
'  RETURN TRUE;',
'ELSE',
'RETURN FALSE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('Ilo\015B\0107 miejsc musi by\0107 liczb\0105 dodatni\0105')
,p_when_button_pressed=>wwv_flow_api.id(46509326114677349)
,p_associated_item=>wwv_flow_api.id(46505746526677346)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50981014438490725)
,p_validation_name=>'Klucz podstawowy'
,p_validation_sequence=>60
,p_validation=>'SELECT * FROM Model_autobusu WHERE MODEL = :P20_MODEL AND PRODUCENT = :P20_PRODUCENT'
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>unistr('Taki autobus (model-producent) istnieje ju\017C w bazie danych. Prosz\0119 poda\0107 inny')
,p_when_button_pressed=>wwv_flow_api.id(46509326114677349)
,p_associated_item=>wwv_flow_api.id(46504941415677346)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46510592690677350)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(46504687322677345)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Dodawanie modelu'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46510110022677350)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(46504687322677345)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Dodawanie modelu'
);
wwv_flow_api.component_end;
end;
/
