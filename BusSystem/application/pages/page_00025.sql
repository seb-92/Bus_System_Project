prompt --application/pages/page_00025
begin
--   Manifest
--     PAGE: 00025
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
 p_id=>25
,p_user_interface_id=>wwv_flow_api.id(28885432899942659)
,p_name=>'Dodaj przystanek'
,p_alias=>'DODAJ-PRZYSTANEK'
,p_step_title=>'Dodaj przystanek'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'JAKUB.CZAJKA@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20230124130830'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46585902101952165)
,p_plug_name=>'Dodaj przystanek'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(28795817095942614)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'PRZYSTANEK'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46588417058952167)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(46585902101952165)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_image_alt=>unistr('Powr\00F3t')
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.:::'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46590003251952168)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(46585902101952165)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dodaj'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>'P25_ID_PRZYSTANKU'
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(46590317346952168)
,p_branch_action=>'f?p=&APP_ID.:11:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46586373625952166)
,p_name=>'P25_ID_PRZYSTANKU'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(46585902101952165)
,p_item_source_plug_id=>wwv_flow_api.id(46585902101952165)
,p_prompt=>'Identyfikator przystanku'
,p_source=>'ID_PRZYSTANKU'
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
 p_id=>wwv_flow_api.id(46586711711952166)
,p_name=>'P25_NAZWA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(46585902101952165)
,p_item_source_plug_id=>wwv_flow_api.id(46585902101952165)
,p_prompt=>'Nazwa'
,p_source=>'NAZWA'
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
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46587117654952166)
,p_name=>'P25_ADRES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(46585902101952165)
,p_item_source_plug_id=>wwv_flow_api.id(46585902101952165)
,p_prompt=>'Adres'
,p_source=>'ADRES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>60
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50706338517331128)
,p_validation_name=>'Id przystanku not null'
,p_validation_sequence=>10
,p_validation=>'P25_ID_PRZYSTANKU'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>unistr('Identyfikator przystanku nie mo\017Ce byc pusty')
,p_when_button_pressed=>wwv_flow_api.id(46590003251952168)
,p_associated_item=>wwv_flow_api.id(46586373625952166)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50706444170331129)
,p_validation_name=>unistr('Nazwa przystanku nie mo\017Ce by\0107 pusta')
,p_validation_sequence=>20
,p_validation=>'P25_NAZWA'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>unistr('Nazwa przystanku nie mo\017Ce by\0107 pusta')
,p_when_button_pressed=>wwv_flow_api.id(46590003251952168)
,p_associated_item=>wwv_flow_api.id(46586711711952166)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50706502246331130)
,p_validation_name=>unistr('Adres przystanku nie mo\017Ce by\0107 pusty')
,p_validation_sequence=>30
,p_validation=>'P25_ADRES'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>unistr('Adres przystanku nie mo\017Ce by\0107 pusty')
,p_when_button_pressed=>wwv_flow_api.id(46590003251952168)
,p_associated_item=>wwv_flow_api.id(46587117654952166)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50981519093490730)
,p_validation_name=>'Klucz podstawowy'
,p_validation_sequence=>40
,p_validation=>'SELECT * FROM PRZYSTANEK WHERE UPPER(ID_PRZYSTANKU) = UPPER(CAST(:P25_ID_PRZYSTANKU AS CHAR(10)))'
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>unistr('Przystanek o takim identyfikatorze istnieje ju\017C w bazie danych')
,p_when_button_pressed=>wwv_flow_api.id(46590003251952168)
,p_associated_item=>wwv_flow_api.id(46586373625952166)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46591252365952169)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(46585902101952165)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Dodaj przystanek'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46590805335952168)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(46585902101952165)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Dodaj przystanek'
);
wwv_flow_api.component_end;
end;
/
