prompt --application/pages/page_00035
begin
--   Manifest
--     PAGE: 00035
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
 p_id=>35
,p_user_interface_id=>wwv_flow_api.id(28885432899942659)
,p_name=>unistr('Szybkie dodawanie nast\0119pnego przegl\0105du')
,p_alias=>unistr('SZYBKIE-DODAWANIE-NAST\0118PNEGO-PRZEGL\0104DU')
,p_step_title=>unistr('Dodaj pozytywny przegl\0105d')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'JAKUB.CZAJKA@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20230125103553'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50096982356033954)
,p_plug_name=>unistr('Dodaj pozytywny przegl\0105d')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(28795817095942614)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50097349790033954)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(50096982356033954)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_image_alt=>unistr('Powr\00F3t')
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50097497596033954)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(50096982356033954)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dodaj'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(50100237826033957)
,p_branch_action=>'f?p=&APP_ID.:7:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(50097497596033954)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50098209323033955)
,p_name=>'P35_ATA'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(50096982356033954)
,p_prompt=>unistr('Data wykonania przegl\0105du')
,p_format_mask=>'YYYY-MM-DD'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'NONE'
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'N'
,p_attribute_12=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_13=>'SELECTABLE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50099074097033956)
,p_name=>'P35_ESEL'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(50096982356033954)
,p_prompt=>'Pesel mechanika'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('SELECT imi\0119 ||  '' '' ||  nazwisko || '' '' || pesel as d, pesel r FROM PRACOWNIK where zaw\00F3d = ''Mechanik'' ORDER BY 1;')
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50099437395033956)
,p_name=>'P35_UMERREJESTRACYJNY'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(50096982356033954)
,p_prompt=>'Numer rejestracyjny autobusu'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT numer_rejestracyjny as d, numer_rejestracyjny r FROM autobus ORDER BY 1;'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50707288704331137)
,p_validation_name=>'Data wymagana'
,p_validation_sequence=>10
,p_validation=>'P35_ATA'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>unistr('Data wykonania przegl\0105du jest wymagana')
,p_when_button_pressed=>wwv_flow_api.id(50097497596033954)
,p_associated_item=>wwv_flow_api.id(50098209323033955)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50707444349331139)
,p_validation_name=>'Pesel wymagany'
,p_validation_sequence=>30
,p_validation=>'P35_ESEL'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Pesel mechanika jest wymagany'
,p_when_button_pressed=>wwv_flow_api.id(50097497596033954)
,p_associated_item=>wwv_flow_api.id(50099074097033956)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50707549041331140)
,p_validation_name=>'Nr. wymagany'
,p_validation_sequence=>40
,p_validation=>'P35_UMERREJESTRACYJNY'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Numer rejestracyjny autobusu jest wymagany'
,p_when_button_pressed=>wwv_flow_api.id(50097497596033954)
,p_associated_item=>wwv_flow_api.id(50099437395033956)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50981393085490728)
,p_validation_name=>'Klucz podstawowy'
,p_validation_sequence=>50
,p_validation=>unistr('SELECT * FROM Przegl\0105d_pojazdu WHERE TO_CHAR(data_przegl\0105du , ''YYYY-MM-DD'') = to_char(to_date(:"P35_ATA", ''YYYY-MM-DD''), ''YYYY-MM-DD'') AND pracownik_pesel = :P35_ESEL AND autobus_numer_rejestracyjny = :P35_UMERREJESTRACYJNY;')
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>unistr('Podany przegl\0105d zosta\0142 ju\017C dodany do bazy danych')
,p_when_button_pressed=>wwv_flow_api.id(50097497596033954)
,p_associated_item=>wwv_flow_api.id(50098209323033955)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(50099825737033956)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Run Stored Procedure'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('"#OWNER#"."NAST\0118PNYPRZEGLAD"('),
'"VDATA" => :P35_ATA,',
'"VPESEL" => :P35_ESEL,',
'"VNUMERREJESTRACYJNY" => :P35_UMERREJESTRACYJNY);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(50097497596033954)
);
wwv_flow_api.component_end;
end;
/
