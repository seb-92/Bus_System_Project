prompt --application/pages/page_00097
begin
--   Manifest
--     PAGE: 00097
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
 p_id=>97
,p_user_interface_id=>wwv_flow_api.id(28885432899942659)
,p_name=>'Edytor Autobusu'
,p_alias=>'EDYTOR-AUTOBUSU'
,p_step_title=>'Edytor Autobusu'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'JAKUB.CZAJKA@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20230125094035'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51805784202031866)
,p_plug_name=>'Edytor autobusu'
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
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51811506053031871)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(51805784202031866)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Zapisz zmiany'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P97_NUMER_REJESTRACYJNY'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51810323517031870)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(51805784202031866)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_image_alt=>unistr('Powr\00F3t')
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:96:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51811193130031870)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(51805784202031866)
,p_button_name=>'DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Usu\0144')
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_button_execute_validations=>'N'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P97_NUMER_REJESTRACYJNY'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(51812210062031871)
,p_branch_action=>'f?p=&APP_ID.:96:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51806123421031867)
,p_name=>'P97_NUMER_REJESTRACYJNY'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(51805784202031866)
,p_item_source_plug_id=>wwv_flow_api.id(51805784202031866)
,p_prompt=>'Numer rejestracyjny'
,p_source=>'NUMER_REJESTRACYJNY'
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
 p_id=>wwv_flow_api.id(51806523941031868)
,p_name=>'P97_ROK_PRODUKCJI'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(51805784202031866)
,p_item_source_plug_id=>wwv_flow_api.id(51805784202031866)
,p_prompt=>'Rok produkcji'
,p_source=>'ROK_PRODUKCJI'
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
 p_id=>wwv_flow_api.id(51806973726031868)
,p_name=>'P97_PRZEBIEG'
,p_source_data_type=>'NUMBER'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(51805784202031866)
,p_item_source_plug_id=>wwv_flow_api.id(51805784202031866)
,p_prompt=>'Przebieg'
,p_source=>'PRZEBIEG'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(28858144660942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51807360831031868)
,p_name=>'P97_MODEL_AUTOBUSU_PRODUCENT'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(51805784202031866)
,p_item_source_plug_id=>wwv_flow_api.id(51805784202031866)
,p_prompt=>'Producent autobusu'
,p_source=>'MODEL_AUTOBUSU_PRODUCENT'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT DISTINCT producent d, producent r FROM model_autobusu ORDER BY 1;'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51807723981031868)
,p_name=>'P97_MODEL_AUTOBUSU_MODEL'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(51805784202031866)
,p_item_source_plug_id=>wwv_flow_api.id(51805784202031866)
,p_prompt=>'Model autobusu'
,p_source=>'MODEL_AUTOBUSU_MODEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT DISTINCT model r, model d FROM model_autobusu WHERE producent = :P97_MODEL_AUTOBUSU_PRODUCENT'
,p_lov_cascade_parent_items=>'P97_MODEL_AUTOBUSU_PRODUCENT'
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
 p_id=>wwv_flow_api.id(51808182279031869)
,p_name=>'P97_ZAJEZDNIA_ADRES'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(51805784202031866)
,p_item_source_plug_id=>wwv_flow_api.id(51805784202031866)
,p_prompt=>'Adres zajezdni'
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
 p_id=>wwv_flow_api.id(51741804047749115)
,p_validation_name=>'Rok wymagany'
,p_validation_sequence=>10
,p_validation=>'P97_ROK_PRODUKCJI'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Rok produkcji autobusu jest wymagany'
,p_when_button_pressed=>wwv_flow_api.id(51811506053031871)
,p_associated_item=>wwv_flow_api.id(51806523941031868)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(51741947459749116)
,p_validation_name=>'Rok zakres'
,p_validation_sequence=>20
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :"P97_ROK_PRODUKCJI" > 1800 AND :"P97_ROK_PRODUKCJI" < 2025 THEN',
'  RETURN TRUE;',
'ELSE',
'RETURN FALSE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('Rok produkcji autobusu musi by\0107 z zakresu 1800 do 2025')
,p_when_button_pressed=>wwv_flow_api.id(51811506053031871)
,p_associated_item=>wwv_flow_api.id(51806523941031868)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(51742042211749117)
,p_validation_name=>'Przebieg dodatni'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :"P97_PRZEBIEG" >0 OR :"P97_PRZEBIEG" IS NULL THEN',
'  RETURN TRUE;',
'ELSE',
'RETURN FALSE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('Przebieg autobusu musi by\0107 liczb\0105 dodatni\0105')
,p_when_button_pressed=>wwv_flow_api.id(51811506053031871)
,p_associated_item=>wwv_flow_api.id(51806973726031868)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(51742197393749118)
,p_validation_name=>'PProducent wymagany'
,p_validation_sequence=>40
,p_validation=>'P97_MODEL_AUTOBUSU_PRODUCENT'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Producent autobusu jest wymagany'
,p_when_button_pressed=>wwv_flow_api.id(51811506053031871)
,p_associated_item=>wwv_flow_api.id(51807360831031868)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(51742248228749119)
,p_validation_name=>'Model autobusu jest wymagany'
,p_validation_sequence=>50
,p_validation=>'P97_MODEL_AUTOBUSU_MODEL'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Model autobusu jest wymagany'
,p_when_button_pressed=>wwv_flow_api.id(51811506053031871)
,p_associated_item=>wwv_flow_api.id(51807723981031868)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(51742370625749120)
,p_validation_name=>'New'
,p_validation_sequence=>60
,p_validation=>'P97_ZAJEZDNIA_ADRES'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Adres zajezdni autobusu jest wymagany'
,p_when_button_pressed=>wwv_flow_api.id(51811506053031871)
,p_associated_item=>wwv_flow_api.id(51808182279031869)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(51742478814749121)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(51811193130031870)
,p_bind_type=>'bind'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51742586987749122)
,p_event_id=>wwv_flow_api.id(51742478814749121)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Czy na pewno chcesz usun\0105\0107 ten autobus?')
,p_server_condition_type=>'NOT_EXISTS'
,p_server_condition_expr1=>'SELECT * FROM Przejazd WHERE AUTOBUS_NUMER_REJESTRACYJNY = :P97_NUMER_REJESTRACYJNY;'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51742657143749123)
,p_event_id=>wwv_flow_api.id(51742478814749121)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Czy na pewno chcesz usun\0105\0107 ten autobus ? (usuni\0119te zostan\0105 wszystkie powi\0105zane z nim dane)')
,p_server_condition_type=>'EXISTS'
,p_server_condition_expr1=>'SELECT * FROM Przejazd WHERE AUTOBUS_NUMER_REJESTRACYJNY = :P97_NUMER_REJESTRACYJNY;'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(50982909198490744)
,p_event_id=>wwv_flow_api.id(51742478814749121)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'DELETE FROM AUTOBUS WHERE NUMER_REJESTRACYJNY = :P97_NUMER_REJESTRACYJNY;'
,p_attribute_02=>'P97_NUMER_REJESTRACYJNY'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(50983033572490745)
,p_event_id=>wwv_flow_api.id(51742478814749121)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(51813189288031871)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(51805784202031866)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Edytor Autobusu'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(51812704703031871)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(51805784202031866)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Edytor Autobusu'
);
wwv_flow_api.component_end;
end;
/
