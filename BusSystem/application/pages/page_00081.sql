prompt --application/pages/page_00081
begin
--   Manifest
--     PAGE: 00081
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
 p_id=>81
,p_user_interface_id=>wwv_flow_api.id(28885432899942659)
,p_name=>unistr('Wyszukiwanie ilePrzejazd\00F3w Lini\0105')
,p_alias=>unistr('WYSZUKIWANIE-ILEPRZEJAZD\00D3W-LINI\0104')
,p_step_title=>unistr('Wyszukiwanie ilePrzejazd\00F3w Lini\0105')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'JAKUB.CZAJKA@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20230125091354'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(52924369092026604)
,p_plug_name=>unistr('Wyszukiwanie ilePrzejazd\00F3w Lini\0105')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(28795817095942614)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'PRZEJAZD'
,p_include_rowid_column=>true
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52929019339026607)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(52924369092026604)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_image_alt=>unistr('Powr\00F3t')
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(52930907569026609)
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52912479349951903)
,p_name=>'P81_WYNIK'
,p_item_sequence=>60
,p_item_plug_id=>wwv_flow_api.id(52924369092026604)
,p_prompt=>'Wynik'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT UNIQUE ilePrzejazdowNaDanejTrasie(:"P81_PRACOWNIK_PESEL", :"P81_LINIA_AUTOBUSOWA_NUMER_LINII", ',
unistr('to_date(:"P81_DATA_I_GODZINA_ROZPOCZ\0118CIA", ''DD-MON-YYYY HH24:MI''), to_date(:"P81_DATA_I_GODZINA_ZAKO\0143CZENIA", ''DD-MON-YYYY HH24:MI'')) d, ilePrzejazdowDanymAutobusem(:"P81_PRACOWNIK_PESEL", :"P81_LINIA_AUTOBUSOWA_NUMER_LINII", to_date(:"P81_DATA_I_GOD')
||unistr('ZINA_ROZPOCZ\0118CIA", ''DD-MON-YYYY HH24:MI''), to_date(:"P81_DATA_I_GODZINA_ZAKO\0143CZENIA", ''DD-MON-YYYY HH24:MI'')) r FROM PRZEJAZD;')))
,p_lov_cascade_parent_items=>unistr('P81_DATA_I_GODZINA_ROZPOCZ\0118CIA,P81_DATA_I_GODZINA_ZAKO\0143CZENIA,P81_PRACOWNIK_PESEL,P81_LINIA_AUTOBUSOWA_NUMER_LINII')
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(28858144660942645)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52924757793026604)
,p_name=>'P81_ROWID'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(52924369092026604)
,p_item_source_plug_id=>wwv_flow_api.id(52924369092026604)
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
 p_id=>wwv_flow_api.id(52925193756026605)
,p_name=>unistr('P81_DATA_I_GODZINA_ROZPOCZ\0118CIA')
,p_source_data_type=>'TIMESTAMP'
,p_is_required=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(52924369092026604)
,p_item_source_plug_id=>wwv_flow_api.id(52924369092026604)
,p_prompt=>unistr('Data i godzina rozpocz\0119cia')
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_source=>unistr('DATA_I_GODZINA_ROZPOCZ\0118CIA')
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'N'
,p_attribute_12=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_13=>'SELECTABLE'
,p_attribute_14=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52925981964026605)
,p_name=>unistr('P81_DATA_I_GODZINA_ZAKO\0143CZENIA')
,p_source_data_type=>'TIMESTAMP'
,p_is_required=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(52924369092026604)
,p_item_source_plug_id=>wwv_flow_api.id(52924369092026604)
,p_prompt=>unistr('Data i godzina zako\0144czenia')
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_source=>unistr('DATA_I_GODZINA_ZAKO\0143CZENIA')
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>32
,p_cMaxlength=>255
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'ITEM'
,p_attribute_05=>unistr('P81_DATA_I_GODZINA_ROZPOCZ\0118CIA')
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'N'
,p_attribute_12=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_13=>'SELECTABLE'
,p_attribute_14=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52926778167026606)
,p_name=>'P81_PRACOWNIK_PESEL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(52924369092026604)
,p_item_source_plug_id=>wwv_flow_api.id(52924369092026604)
,p_prompt=>'Presel kierowcy'
,p_source=>'PRACOWNIK_PESEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('SELECT imi\0119 ||  '' '' ||  nazwisko || '' '' || pesel as d, pesel r FROM PRACOWNIK where zaw\00F3d = ''Kierowca'' ORDER BY 1;')
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(52927191696026606)
,p_name=>'P81_LINIA_AUTOBUSOWA_NUMER_LINII'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(52924369092026604)
,p_item_source_plug_id=>wwv_flow_api.id(52924369092026604)
,p_prompt=>'Numer linii autobusowej'
,p_source=>'LINIA_AUTOBUSOWA_NUMER_LINII'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT numer_linii as d, numer_linii r FROM linia_autobusowa ORDER BY 1;'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(52925674349026605)
,p_validation_name=>unistr('P81_DATA_I_GODZINA_ROZPOCZ\0118CIA must be timestamp')
,p_validation_sequence=>10
,p_validation=>unistr('P81_DATA_I_GODZINA_ROZPOCZ\0118CIA')
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(52925193756026605)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(52926418775026606)
,p_validation_name=>unistr('P81_DATA_I_GODZINA_ZAKO\0143CZENIA must be timestamp')
,p_validation_sequence=>20
,p_validation=>unistr('P81_DATA_I_GODZINA_ZAKO\0143CZENIA')
,p_validation_type=>'ITEM_IS_TIMESTAMP'
,p_error_message=>'#LABEL# must be a valid timestamp.'
,p_associated_item=>wwv_flow_api.id(52925981964026605)
,p_error_display_location=>'INLINE_WITH_FIELD_AND_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(52931803839026609)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(52924369092026604)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('Process form Wyszukiwanie ilePrzejazd\00F3w Lini\0105')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(52931482879026609)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(52924369092026604)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form Wyszukiwanie ilePrzejazd\00F3w Lini\0105')
);
wwv_flow_api.component_end;
end;
/
