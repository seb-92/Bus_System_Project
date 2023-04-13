prompt --application/pages/page_00022
begin
--   Manifest
--     PAGE: 00022
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
 p_id=>22
,p_user_interface_id=>wwv_flow_api.id(28885432899942659)
,p_name=>'Dodaj biletomat'
,p_alias=>'DODAJ-BILETOMAT'
,p_step_title=>'Dodaj biletomat'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'JAKUB.CZAJKA@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20230126143223'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(46531860938753368)
,p_plug_name=>'Dodaj biletomat'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(28795817095942614)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'BILETOMAT'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46535038555753371)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(46531860938753368)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_image_alt=>unistr('Powr\00F3t')
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.:::'
,p_warn_on_unsaved_changes=>null
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(46536682728753372)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(46531860938753368)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dodaj'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>unistr('P22_NUMER_IDENTYFIKUJ\0104CY')
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(46536927275753372)
,p_branch_action=>'f?p=&APP_ID.:8:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46532200823753368)
,p_name=>unistr('P22_NUMER_IDENTYFIKUJ\0104CY')
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(46531860938753368)
,p_item_source_plug_id=>wwv_flow_api.id(46531860938753368)
,p_prompt=>unistr('Numer identyfikuj\0105cy')
,p_source=>unistr('NUMER_IDENTYFIKUJ\0104CY')
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT nowyBiletomat.nextval d, nowyBiletomat.nextval r FROM DUAL;'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_protection_level=>'S'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46532639202753368)
,p_name=>unistr('P22_DOST\0118PNE_SPOSOBY_P\0141ATNO\015ACI')
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(46531860938753368)
,p_item_source_plug_id=>wwv_flow_api.id(46531860938753368)
,p_prompt=>unistr('Dost\0119pne sposoby p\0142atno\015Bci')
,p_source=>unistr('DOST\0118PNE_SPOSOBY_P\0141ATNO\015ACI')
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('STATIC(,):Got\00F3wkaGot\00F3wkaKartaKartaGot\00F3wka, KartaGot\00F3wka, Karta')
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46533033439753370)
,p_name=>'P22_AUTOBUS_NUMER_REJESTRACYJNY'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(46531860938753368)
,p_item_source_plug_id=>wwv_flow_api.id(46531860938753368)
,p_prompt=>'Numer rejestracyjny'
,p_source=>'AUTOBUS_NUMER_REJESTRACYJNY'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT numer_rejestracyjny d, numer_rejestracyjny r FROM autobus LEFT JOIN biletomat ON numer_rejestracyjny = autobus_numer_rejestracyjny WHERE :P22_NEW = ''Autobus'' AND autobus_numer_rejestracyjny IS NULL ORDER BY 1;'
,p_lov_cascade_parent_items=>'P22_NEW'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(28858144660942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(46533437610753370)
,p_name=>'P22_PRZYSTANEK_ID_PRZYSTANKU'
,p_source_data_type=>'VARCHAR2'
,p_item_sequence=>50
,p_item_plug_id=>wwv_flow_api.id(46531860938753368)
,p_item_source_plug_id=>wwv_flow_api.id(46531860938753368)
,p_prompt=>'Identyfikator przystanku'
,p_source=>'PRZYSTANEK_ID_PRZYSTANKU'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>'SELECT id_przystanku d, id_przystanku r FROM przystanek LEFT JOIN biletomat ON id_przystanku = przystanek_id_przystanku WHERE :P22_NEW = ''Przystanek'' AND przystanek_id_przystanku IS NULL ORDER BY 1;'
,p_lov_cascade_parent_items=>'P22_NEW'
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(28858144660942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50705524295331120)
,p_name=>'P22_NEW'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(46531860938753368)
,p_prompt=>'Lokalizacja biletomatu'
,p_display_as=>'NATIVE_RADIOGROUP'
,p_lov=>'STATIC:Autobus;Autobus,Przystanek;Przystanek'
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'1'
,p_attribute_02=>'NONE'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50705154670331116)
,p_validation_name=>unistr('Id nie mo\017Ce by\0107 puste')
,p_validation_sequence=>10
,p_validation=>unistr('P22_NUMER_IDENTYFIKUJ\0104CY')
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>unistr('Numer identyfikuj\0105cy biletomatu nie mo\017Ce by\0107 pusty')
,p_when_button_pressed=>wwv_flow_api.id(46536682728753372)
,p_associated_item=>wwv_flow_api.id(46532200823753368)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50705255440331117)
,p_validation_name=>unistr('Spos\00F3b p\0142atno\015Bci nie mo\017Ce by\0107 pusty')
,p_validation_sequence=>20
,p_validation=>unistr('P22_DOST\0118PNE_SPOSOBY_P\0141ATNO\015ACI')
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>unistr('Dost\0119pne sposoby p\0142atno\015Bci nie mog\0105 by\0107 puste')
,p_when_button_pressed=>wwv_flow_api.id(46536682728753372)
,p_associated_item=>wwv_flow_api.id(46532639202753368)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50706116276331126)
,p_validation_name=>'Oba puste'
,p_validation_sequence=>30
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'BEGIN',
'  IF :"P22_AUTOBUS_NUMER_REJESTRACYJNY" IS NULL AND :"P22_PRZYSTANEK_ID_PRZYSTANKU" IS NULL THEN',
'    RETURN FALSE;',
'  ELSE',
'    RETURN TRUE;',
'  END IF;',
'END;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('Numer rejestracyjny lub identyfikator przystanku musi zosta\0107 uzupe\0142niony')
,p_when_button_pressed=>wwv_flow_api.id(46536682728753372)
,p_associated_item=>wwv_flow_api.id(46533033439753370)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50981837240490733)
,p_validation_name=>'Klucz podstawowy'
,p_validation_sequence=>40
,p_validation=>unistr('SELECT * FROM Biletomat WHERE numer_identyfikuj\0105cy = :"P22_numer_identyfikuj\0105cy"')
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>unistr('Biletomat o podanym numerze identyfikuj\0105cym zosta\0142 ju\017C dodany do bazy danych')
,p_when_button_pressed=>wwv_flow_api.id(46536682728753372)
,p_associated_item=>wwv_flow_api.id(46532200823753368)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46537844263753373)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(46531860938753368)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Dodaj biletomat'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(46537495380753373)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(46531860938753368)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Dodaj biletomat'
);
wwv_flow_api.component_end;
end;
/
