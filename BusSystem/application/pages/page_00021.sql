prompt --application/pages/page_00021
begin
--   Manifest
--     PAGE: 00021
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
 p_id=>21
,p_user_interface_id=>wwv_flow_api.id(28885432899942659)
,p_name=>unistr('Dodaj przegl\0105d')
,p_alias=>unistr('DODAJ-PRZEGL\0104D')
,p_step_title=>unistr('Dodaj przegl\0105d')
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'JAKUB.CZAJKA@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20230125013606'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46517318016705567)
,p_plug_name=>unistr('Dodaj przegl\0105d')
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(28795817095942614)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>unistr('PRZEGL\0104D_POJAZDU')
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46521110013705570)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(46517318016705567)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_image_alt=>unistr('Powr\00F3t')
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:::'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46522716384705571)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(46517318016705567)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dodaj'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>unistr('P21_DATA_PRZEGL\0104DU')
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(46523072203705571)
,p_branch_action=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46517699122705568)
,p_name=>unistr('P21_DATA_PRZEGL\0104DU')
,p_source_data_type=>'TIMESTAMP'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(46517318016705567)
,p_item_source_plug_id=>wwv_flow_api.id(46517318016705567)
,p_prompt=>unistr('Data i godzina wykonania przegl\0105du')
,p_format_mask=>'DD-MON-YYYY'
,p_source=>unistr('DATA_PRZEGL\0104DU')
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>30
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_protection_level=>'S'
,p_attribute_01=>'N'
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
 p_id=>wwv_flow_api.id(46518005579705568)
,p_name=>'P21_PRACOWNIK_PESEL'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(46517318016705567)
,p_item_source_plug_id=>wwv_flow_api.id(46517318016705567)
,p_prompt=>'Pesel'
,p_source=>'PRACOWNIK_PESEL'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('SELECT imi\0119 ||  '' '' ||  nazwisko || '' '' || pesel as d, pesel r FROM PRACOWNIK where zaw\00F3d = ''Mechanik'' ORDER BY 1;')
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(28858144660942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46518403046705568)
,p_name=>'P21_OCENA_STANU_POJAZDU'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(46517318016705567)
,p_item_source_plug_id=>wwv_flow_api.id(46517318016705567)
,p_prompt=>'Ocena stanu pojazdu'
,p_source=>'OCENA_STANU_POJAZDU'
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
 p_id=>wwv_flow_api.id(46518898618705569)
,p_name=>unistr('P21_DATA_NAST\0118PNEGO_PRZEGL\0104DU')
,p_source_data_type=>'TIMESTAMP'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(46517318016705567)
,p_item_source_plug_id=>wwv_flow_api.id(46517318016705567)
,p_prompt=>unistr('Data nast\0119pnego przegl\0105du')
,p_format_mask=>'DD-MON-YYYY'
,p_source=>unistr('DATA_NAST\0118PNEGO_PRZEGL\0104DU')
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_DATE_PICKER_JET'
,p_cSize=>32
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_attribute_01=>'N'
,p_attribute_02=>'POPUP'
,p_attribute_03=>'ITEM'
,p_attribute_05=>unistr('P21_DATA_PRZEGL\0104DU')
,p_attribute_06=>'NONE'
,p_attribute_09=>'N'
,p_attribute_11=>'N'
,p_attribute_12=>'MONTH-PICKER:YEAR-PICKER'
,p_attribute_13=>'SELECTABLE'
,p_attribute_14=>'1'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46519282229705569)
,p_name=>'P21_AUTOBUS_NUMER_REJESTRACYJNY'
,p_source_data_type=>'VARCHAR2'
,p_is_required=>true
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(46517318016705567)
,p_item_source_plug_id=>wwv_flow_api.id(46517318016705567)
,p_prompt=>'Numer rejestracyjny'
,p_source=>'AUTOBUS_NUMER_REJESTRACYJNY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT numer_rejestracyjny as d, numer_rejestracyjny r FROM autobus ORDER BY 1;'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(28858144660942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50706793568331132)
,p_validation_name=>unistr('Data prpzegl\0105du wymagana')
,p_validation_sequence=>10
,p_validation=>unistr('P21_DATA_PRZEGL\0104DU')
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>unistr('Data przegl\0105du jest wymagana')
,p_when_button_pressed=>wwv_flow_api.id(46522716384705571)
,p_associated_item=>wwv_flow_api.id(46517699122705568)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50706859133331133)
,p_validation_name=>'Ocena wymagana'
,p_validation_sequence=>20
,p_validation=>'P21_OCENA_STANU_POJAZDU'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Ocena stanu pojazdu jest wymagana'
,p_when_button_pressed=>wwv_flow_api.id(46522716384705571)
,p_associated_item=>wwv_flow_api.id(46518403046705568)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50706900320331134)
,p_validation_name=>unistr('Data nast\0119pnego wymagana')
,p_validation_sequence=>30
,p_validation=>unistr('P21_DATA_NAST\0118PNEGO_PRZEGL\0104DU')
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>unistr('Data nast\0119pnego przegl\0105du jest wymagana')
,p_when_button_pressed=>wwv_flow_api.id(46522716384705571)
,p_associated_item=>wwv_flow_api.id(46518898618705569)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50707097698331135)
,p_validation_name=>'Pesel wymagany'
,p_validation_sequence=>40
,p_validation=>'P21_PRACOWNIK_PESEL'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Pesel mechanika jest wymagany'
,p_when_button_pressed=>wwv_flow_api.id(46522716384705571)
,p_associated_item=>wwv_flow_api.id(46518005579705568)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50707159305331136)
,p_validation_name=>'Numer autobusu wymagany'
,p_validation_sequence=>50
,p_validation=>'P21_AUTOBUS_NUMER_REJESTRACYJNY'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>'Numer rejestracyjny badanego autobusu jest wymagany'
,p_when_button_pressed=>wwv_flow_api.id(46522716384705571)
,p_associated_item=>wwv_flow_api.id(46519282229705569)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50981259483490727)
,p_validation_name=>'Klucz podstawowy'
,p_validation_sequence=>60
,p_validation=>unistr('SELECT * FROM Przegl\0105d_pojazdu WHERE TO_CHAR(data_przegl\0105du , ''YYYY-MON-DD'') = to_char(to_date(:"P21_DATA_PRZEGL\0104DU", ''DD-MON-YYYY''), ''YYYY-MON-DD'') AND pracownik_pesel = :P21_PRACOWNIK_PESEL AND autobus_numer_rejestracyjny = :P21_AUTOBUS_NUMER_REJES')
||'TRACYJNY;'
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>unistr('Podany przegl\0105d zosta\0142 ju\017C dodany do bazy danych')
,p_when_button_pressed=>wwv_flow_api.id(46522716384705571)
,p_associated_item=>wwv_flow_api.id(46517699122705568)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46523935698705572)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(46517318016705567)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>unistr('Process form Dodaj przegl\0105d')
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46523556905705572)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(46517318016705567)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>unistr('Initialize form Dodaj przegl\0105d')
);
wwv_flow_api.component_end;
end;
/
