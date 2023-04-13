prompt --application/pages/page_00017
begin
--   Manifest
--     PAGE: 00017
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
 p_id=>17
,p_user_interface_id=>wwv_flow_api.id(28885432899942659)
,p_name=>'Dodawanie przejazdu'
,p_alias=>'DODAWANIE-PRZEJAZDU'
,p_step_title=>'Dodawanie przejazdu'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'JAKUB.CZAJKA@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20230125102719'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46145612085121900)
,p_plug_name=>'Dodawanie przejazdu'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(28795817095942614)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'PRZEJAZD'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46149846623121908)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(46145612085121900)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_image_alt=>unistr('Powr\00F3t')
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.:::'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46151477515121910)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(46145612085121900)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dodaj'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>unistr('P17_DATA_I_GODZINA_ROZPOCZ\0118CIA')
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(46151734588121910)
,p_branch_action=>'f?p=&APP_ID.:3:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46145997777121901)
,p_name=>unistr('P17_DATA_I_GODZINA_ROZPOCZ\0118CIA')
,p_source_data_type=>'TIMESTAMP'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(46145612085121900)
,p_item_source_plug_id=>wwv_flow_api.id(46145612085121900)
,p_prompt=>unistr('Data i godzina rozpocz\0119cia')
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_source=>unistr('DATA_I_GODZINA_ROZPOCZ\0118CIA')
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'ITEM'
,p_attribute_08=>unistr('P17_DATA_I_GODZINA_ZAKO\0143CZENIA')
,p_attribute_09=>'N'
,p_attribute_11=>'N'
,p_attribute_12=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_13=>'SELECTABLE'
,p_attribute_14=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46146308096121902)
,p_name=>'P17_PRACOWNIK_PESEL'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(46145612085121900)
,p_item_source_plug_id=>wwv_flow_api.id(46145612085121900)
,p_prompt=>'Pesel'
,p_source=>'PRACOWNIK_PESEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('SELECT imi\0119 ||  '' '' ||  nazwisko || '' '' || pesel as d, pesel r FROM PRACOWNIK where zaw\00F3d = ''Kierowca'' ORDER BY 1;')
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(28858144660942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46146766316121904)
,p_name=>unistr('P17_DATA_I_GODZINA_ZAKO\0143CZENIA')
,p_source_data_type=>'TIMESTAMP_TZ'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(46145612085121900)
,p_item_source_plug_id=>wwv_flow_api.id(46145612085121900)
,p_prompt=>unistr('Data i godzina zako\0144czenia')
,p_format_mask=>'DD-MON-YYYY HH24:MI'
,p_source=>unistr('DATA_I_GODZINA_ZAKO\0143CZENIA')
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'Y'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'ITEM'
,p_attribute_05=>unistr('P17_DATA_I_GODZINA_ROZPOCZ\0118CIA')
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'N'
,p_attribute_12=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_13=>'SELECTABLE'
,p_attribute_14=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46147546497121906)
,p_name=>'P17_AUTOBUS_NUMER_REJESTRACYJNY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(46145612085121900)
,p_item_source_plug_id=>wwv_flow_api.id(46145612085121900)
,p_prompt=>'Numer rejestracyjny autobusu'
,p_source=>'AUTOBUS_NUMER_REJESTRACYJNY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT numer_rejestracyjny as d, numer_rejestracyjny r FROM autobus ORDER BY 1;',
''))
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(28858144660942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46147917417121906)
,p_name=>'P17_LINIA_AUTOBUSOWA_NUMER_LINII'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_is_primary_key=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(46145612085121900)
,p_item_source_plug_id=>wwv_flow_api.id(46145612085121900)
,p_prompt=>'Linia autobusowa'
,p_source=>'LINIA_AUTOBUSOWA_NUMER_LINII'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT numer_linii as d, numer_linii r FROM Linia_autobusowa ORDER BY 1;'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(28858144660942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(46147206753121906)
,p_validation_name=>unistr('P17_DATA_I_GODZINA_ZAKO\0143CZENIA must be timestamp')
,p_validation_sequence=>10
,p_validation=>unistr('P17_DATA_I_GODZINA_ZAKO\0143CZENIA')
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>unistr('Data i godzina zako\0144czenia przejazdu musi zosta\0107 podana')
,p_when_button_pressed=>wwv_flow_api.id(46151477515121910)
,p_associated_item=>wwv_flow_api.id(46146766316121904)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50980000707490715)
,p_validation_name=>'Data not null'
,p_validation_sequence=>20
,p_validation=>unistr('P17_DATA_I_GODZINA_ROZPOCZ\0118CIA')
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>unistr('Data i godzina rozpocz\0119cia przejazdu musi zosta\0107 podana')
,p_when_button_pressed=>wwv_flow_api.id(46151477515121910)
,p_associated_item=>wwv_flow_api.id(46145997777121901)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50980235660490717)
,p_validation_name=>'Klucz podstawowy'
,p_validation_sequence=>30
,p_validation=>unistr('SELECT * FROM Przejazd WHERE TO_CHAR(DATA_I_GODZINA_ROZPOCZ\0118CIA, ''YYYY-MON-DD HH24:MI'') = to_char(to_date(:"P17_DATA_I_GODZINA_ROZPOCZ\0118CIA", ''DD-MON-YYYY HH24:MI''), ''YYYY-MON-DD HH24:MI'') AND PRACOWNIK_PESEL = :P17_PRACOWNIK_PESEL  AND AUTOBUS_NUMER_')
||'REJESTRACYJNY = :P17_AUTOBUS_NUMER_REJESTRACYJNY AND LINIA_AUTOBUSOWA_NUMER_LINII = :P17_LINIA_AUTOBUSOWA_NUMER_LINII'
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>unistr('Podany przejazd wyst\0119puje ju\017C w systemie')
,p_when_button_pressed=>wwv_flow_api.id(46151477515121910)
,p_associated_item=>wwv_flow_api.id(46145997777121901)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50980732236490722)
,p_validation_name=>unistr('Autobus zaj\0119ty')
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM PRZEJAZD WHERE ',
unistr('((to_char(to_date(:"P17_DATA_I_GODZINA_ROZPOCZ\0118CIA", ''DD-MON-YYYY HH24:MI''), ''YYYY-MON-DD HH24:MI'') BETWEEN TO_CHAR(DATA_I_GODZINA_ROZPOCZ\0118CIA, ''YYYY-MON-DD HH24:MI'') AND TO_CHAR(DATA_I_GODZINA_ZAKO\0143CZENIA, ''YYYY-MON-DD HH24:MI''))'),
'OR ',
unistr('(to_char(to_date(:"P17_DATA_I_GODZINA_ZAKO\0143CZENIA", ''DD-MON-YYYY HH24:MI''), ''YYYY-MON-DD HH24:MI'') BETWEEN TO_CHAR(DATA_I_GODZINA_ROZPOCZ\0118CIA, ''YYYY-MON-DD HH24:MI'') AND TO_CHAR(DATA_I_GODZINA_ZAKO\0143CZENIA, ''YYYY-MON-DD HH24:MI''))'),
'OR',
unistr('((to_char(to_date(:"P17_DATA_I_GODZINA_ROZPOCZ\0118CIA", ''DD-MON-YYYY HH24:MI''), ''YYYY-MON-DD HH24:MI'') < TO_CHAR(DATA_I_GODZINA_ROZPOCZ\0118CIA, ''YYYY-MON-DD HH24:MI'')) AND '),
unistr('(to_char(to_date(:"P17_DATA_I_GODZINA_ZAKO\0143CZENIA", ''DD-MON-YYYY HH24:MI''), ''YYYY-MON-DD HH24:MI'') > TO_CHAR(DATA_I_GODZINA_ZAKO\0143CZENIA, ''YYYY-MON-DD HH24:MI''))))'),
'AND AUTOBUS_NUMER_REJESTRACYJNY = :"P17_AUTOBUS_NUMER_REJESTRACYJNY"'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>unistr('Autobus zaj\0119ty')
,p_when_button_pressed=>wwv_flow_api.id(46151477515121910)
,p_associated_item=>wwv_flow_api.id(46147546497121906)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50980868750490723)
,p_validation_name=>unistr('Kierowca zaj\0119ty')
,p_validation_sequence=>60
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'SELECT * FROM PRZEJAZD WHERE ',
unistr('((to_char(to_date(:"P17_DATA_I_GODZINA_ROZPOCZ\0118CIA", ''DD-MON-YYYY HH24:MI''), ''YYYY-MON-DD HH24:MI'') BETWEEN TO_CHAR(DATA_I_GODZINA_ROZPOCZ\0118CIA, ''YYYY-MON-DD HH24:MI'') AND TO_CHAR(DATA_I_GODZINA_ZAKO\0143CZENIA, ''YYYY-MON-DD HH24:MI''))'),
'OR ',
unistr('(to_char(to_date(:"P17_DATA_I_GODZINA_ZAKO\0143CZENIA", ''DD-MON-YYYY HH24:MI''), ''YYYY-MON-DD HH24:MI'') BETWEEN TO_CHAR(DATA_I_GODZINA_ROZPOCZ\0118CIA, ''YYYY-MON-DD HH24:MI'') AND TO_CHAR(DATA_I_GODZINA_ZAKO\0143CZENIA, ''YYYY-MON-DD HH24:MI''))'),
'OR',
unistr('((to_char(to_date(:"P17_DATA_I_GODZINA_ROZPOCZ\0118CIA", ''DD-MON-YYYY HH24:MI''), ''YYYY-MON-DD HH24:MI'') < TO_CHAR(DATA_I_GODZINA_ROZPOCZ\0118CIA, ''YYYY-MON-DD HH24:MI'')) AND '),
unistr('(to_char(to_date(:"P17_DATA_I_GODZINA_ZAKO\0143CZENIA", ''DD-MON-YYYY HH24:MI''), ''YYYY-MON-DD HH24:MI'') > TO_CHAR(DATA_I_GODZINA_ZAKO\0143CZENIA, ''YYYY-MON-DD HH24:MI''))))'),
'AND PRACOWNIK_PESEL = :"P17_PRACOWNIK_PESEL"'))
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>unistr('Kierowca zaj\0119ty')
,p_when_button_pressed=>wwv_flow_api.id(46151477515121910)
,p_associated_item=>wwv_flow_api.id(46146308096121902)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46152624828121911)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(46145612085121900)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Dodawanie przejazdu'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46152296118121911)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(46145612085121900)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Dodawanie przejazdu'
);
wwv_flow_api.component_end;
end;
/
