prompt --application/pages/page_00099
begin
--   Manifest
--     PAGE: 00099
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
 p_id=>99
,p_user_interface_id=>wwv_flow_api.id(28885432899942659)
,p_name=>'Edytor Modelu'
,p_alias=>'EDYTOR-MODELU'
,p_step_title=>'Edytor Modelu'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'JAKUB.CZAJKA@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20230125094112'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51850094806318208)
,p_plug_name=>'Edytor modelu'
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
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51854463708318212)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(51850094806318208)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Zapisz zmiany'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P99_MODEL'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51853254973318211)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(51850094806318208)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_image_alt=>unistr('Powr\00F3t')
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:98:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51854048997318212)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(51850094806318208)
,p_button_name=>'DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Usu\0144')
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P99_MODEL'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(51855132919318212)
,p_branch_action=>'f?p=&APP_ID.:98:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51850491868318209)
,p_name=>'P99_MODEL'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(51850094806318208)
,p_item_source_plug_id=>wwv_flow_api.id(51850094806318208)
,p_prompt=>'Model'
,p_source=>'MODEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(28858144660942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51850897503318209)
,p_name=>'P99_PRODUCENT'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(51850094806318208)
,p_item_source_plug_id=>wwv_flow_api.id(51850094806318208)
,p_prompt=>'Producent'
,p_source=>'PRODUCENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(28858144660942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51851260870318210)
,p_name=>unistr('P99_ILO\015A\0106_MIEJSC')
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(51850094806318208)
,p_item_source_plug_id=>wwv_flow_api.id(51850094806318208)
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
 p_id=>wwv_flow_api.id(51851633441318210)
,p_name=>'P99_RODZAJ_PALIWA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(51850094806318208)
,p_item_source_plug_id=>wwv_flow_api.id(51850094806318208)
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
 p_id=>wwv_flow_api.id(51742954081749126)
,p_validation_name=>'Miejsca wymagane'
,p_validation_sequence=>10
,p_validation=>unistr('P99_ILO\015A\0106_MIEJSC')
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>unistr('Ilo\015B\0107 miejsc w autobusie musi zosta\0107 podana')
,p_when_button_pressed=>wwv_flow_api.id(51854463708318212)
,p_associated_item=>wwv_flow_api.id(51851260870318210)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(51743039619749127)
,p_validation_name=>unistr('Ilo\015B\0107 miejsc dodatnie')
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('IF :"P99_ILO\015A\0106_MIEJSC" >0 THEN'),
'  RETURN TRUE;',
'ELSE',
'RETURN FALSE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('Ilo\015B\0107 miejsc musi by\0107 liczb\0105 dodatni\0105')
,p_when_button_pressed=>wwv_flow_api.id(51854463708318212)
,p_associated_item=>wwv_flow_api.id(51851260870318210)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(51743162821749128)
,p_validation_name=>'Rodzaj wymagany'
,p_validation_sequence=>30
,p_validation=>'P99_RODZAJ_PALIWA'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>unistr('Rodzaj paliwa w autobusie musi zosta\0107 podany')
,p_when_button_pressed=>wwv_flow_api.id(51854463708318212)
,p_associated_item=>wwv_flow_api.id(51851633441318210)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(51743274519749129)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(51854048997318212)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51743369683749130)
,p_event_id=>wwv_flow_api.id(51743274519749129)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Czy na pewno chcesz usun\0105\0107 ten model autobusu ?')
,p_server_condition_type=>'NOT_EXISTS'
,p_server_condition_expr1=>'SELECT * FROM Autobus WHERE MODEL_AUTOBUSU_PRODUCENT = :P99_PRODUCENT AND MODEL_AUTOBUSU_MODEL = :P99_MODEL;'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51743431489749131)
,p_event_id=>wwv_flow_api.id(51743274519749129)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Czy na pewno chcesz usun\0105\0107 ten model autobusu ? (usuni\0119te zostan\0105 wszystkie powi\0105zane z nim dane)')
,p_server_condition_type=>'EXISTS'
,p_server_condition_expr1=>'SELECT * FROM Autobus WHERE MODEL_AUTOBUSU_PRODUCENT = :P99_PRODUCENT AND MODEL_AUTOBUSU_MODEL = :P99_MODEL;'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(50982744277490742)
,p_event_id=>wwv_flow_api.id(51743274519749129)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'DELETE FROM MODEL_AUTOBUSU WHERE PRODUCENT = :P99_PRODUCENT AND MODEL = :P99_MODEL;'
,p_attribute_02=>'P99_MODEL,P99_PRODUCENT'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(50982842258490743)
,p_event_id=>wwv_flow_api.id(51743274519749129)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(51856095379318213)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(51850094806318208)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Edytor Modelu'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(51855674491318213)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(51850094806318208)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Edytor Modelu'
);
wwv_flow_api.component_end;
end;
/
