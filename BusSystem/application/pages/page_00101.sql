prompt --application/pages/page_00101
begin
--   Manifest
--     PAGE: 00101
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
 p_id=>101
,p_user_interface_id=>wwv_flow_api.id(28885432899942659)
,p_name=>'Edytor Zajezdni'
,p_alias=>'EDYTOR-ZAJEZDNI'
,p_step_title=>'Edytor Zajezdni'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'JAKUB.CZAJKA@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20230125094118'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51880750496405307)
,p_plug_name=>'Edytor zajezdni'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(28795817095942614)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'ZAJEZDNIA'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51883775081405309)
,p_button_sequence=>30
,p_button_plug_id=>wwv_flow_api.id(51880750496405307)
,p_button_name=>'SAVE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Zapisz zmiany'
,p_button_position=>'REGION_TEMPLATE_CHANGE'
,p_button_condition=>'P101_ADRES'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51882512698405308)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(51880750496405307)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_image_alt=>unistr('Powr\00F3t')
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51883319221405309)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(51880750496405307)
,p_button_name=>'DELETE'
,p_button_action=>'DEFINED_BY_DA'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Usu\0144')
,p_button_position=>'REGION_TEMPLATE_DELETE'
,p_warn_on_unsaved_changes=>null
,p_button_condition=>'P101_ADRES'
,p_button_condition_type=>'ITEM_IS_NOT_NULL'
,p_database_action=>'DELETE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(51884470676405309)
,p_branch_action=>'f?p=&APP_ID.:100:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51881103790405307)
,p_name=>'P101_ADRES'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(51880750496405307)
,p_item_source_plug_id=>wwv_flow_api.id(51880750496405307)
,p_prompt=>'Adres zajezdni'
,p_source=>'ADRES'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DISPLAY_ONLY'
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'Y'
,p_attribute_02=>'VALUE'
,p_attribute_04=>'Y'
,p_attribute_05=>'PLAIN'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(51881553258405308)
,p_name=>'P101_NAZWA'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(51880750496405307)
,p_item_source_plug_id=>wwv_flow_api.id(51880750496405307)
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
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(51743685213749133)
,p_validation_name=>'Nazwa wymagana'
,p_validation_sequence=>10
,p_validation=>'P101_NAZWA'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>unistr('Nazwa nie mo\017Ce pozosta\0107 nieuzupe\0142niona')
,p_when_button_pressed=>wwv_flow_api.id(51883775081405309)
,p_associated_item=>wwv_flow_api.id(51881553258405308)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_da_event(
 p_id=>wwv_flow_api.id(51744088672749137)
,p_name=>'New'
,p_event_sequence=>10
,p_triggering_element_type=>'BUTTON'
,p_triggering_button_id=>wwv_flow_api.id(51883319221405309)
,p_bind_type=>'one'
,p_bind_event_type=>'click'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51744121097749138)
,p_event_id=>wwv_flow_api.id(51744088672749137)
,p_event_result=>'TRUE'
,p_action_sequence=>10
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Czy na pewno chcesz usun\0105\0107 t\0105 zajezdni\0119 ?')
,p_server_condition_type=>'NOT_EXISTS'
,p_server_condition_expr1=>'SELECT * FROM Autobus WHERE ZAJEZDNIA_ADRES = :P101_ADRES;'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(50982245801490737)
,p_event_id=>wwv_flow_api.id(51744088672749137)
,p_event_result=>'TRUE'
,p_action_sequence=>20
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_CONFIRM'
,p_attribute_01=>unistr('Czy na pewno chcesz usun\0105\0107 t\0105 zajezdni\0119 ? (usuni\0119te zostan\0105 wszystkie powi\0105zane z ni\0105 dane)')
,p_server_condition_type=>'EXISTS'
,p_server_condition_expr1=>'SELECT * FROM Autobus WHERE ZAJEZDNIA_ADRES = :P101_ADRES;'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(51744540140749142)
,p_event_id=>wwv_flow_api.id(51744088672749137)
,p_event_result=>'TRUE'
,p_action_sequence=>30
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_EXECUTE_PLSQL_CODE'
,p_attribute_01=>'DELETE FROM ZAJEZDNIA WHERE ADRES = :P101_ADRES;'
,p_attribute_02=>'P101_ADRES'
,p_attribute_05=>'PLSQL'
,p_wait_for_result=>'Y'
);
wwv_flow_api.create_page_da_action(
 p_id=>wwv_flow_api.id(50982187519490736)
,p_event_id=>wwv_flow_api.id(51744088672749137)
,p_event_result=>'TRUE'
,p_action_sequence=>40
,p_execute_on_page_init=>'N'
,p_action=>'NATIVE_SUBMIT_PAGE'
,p_attribute_02=>'Y'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(51885391272405310)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(51880750496405307)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Edytor Zajezdni'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(51884965423405310)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(51880750496405307)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Edytor Zajezdni'
);
wwv_flow_api.component_end;
end;
/
