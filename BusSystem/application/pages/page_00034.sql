prompt --application/pages/page_00034
begin
--   Manifest
--     PAGE: 00034
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
 p_id=>34
,p_user_interface_id=>wwv_flow_api.id(28885432899942659)
,p_name=>'Szybkie dodawanie kierowcy'
,p_alias=>'SZYBKIE-DODAWANIE-KIEROWCY'
,p_step_title=>'Dodaj nowego kierowce'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'JAKUB.CZAJKA@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20230125000209'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(50086079214941191)
,p_plug_name=>'Szybkie dodawanie kierowcy'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(28795817095942614)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_attribute_01=>'N'
,p_attribute_02=>'TEXT'
,p_attribute_03=>'Y'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50086458271941192)
,p_button_sequence=>20
,p_button_plug_id=>wwv_flow_api.id(50086079214941191)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_image_alt=>unistr('Powr\00F3t')
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(50086530838941192)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(50086079214941191)
,p_button_name=>'SUBMIT'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dodaj'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_database_action=>'UPDATE'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(50089363468941196)
,p_branch_action=>'f?p=&APP_ID.:2:&APP_SESSION.::&DEBUG.:::&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_when_button_id=>wwv_flow_api.id(50086530838941192)
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50087340086941194)
,p_name=>'P34_ESEL'
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(50086079214941191)
,p_prompt=>'Pesel'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>11
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'BOTH'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50087735658941195)
,p_name=>'P34_MIE'
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(50086079214941191)
,p_prompt=>unistr('Imi\0119')
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>60
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50088142839941195)
,p_name=>'P34_AZWISKO'
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(50086079214941191)
,p_prompt=>'Nazwisko'
,p_display_as=>'NATIVE_TEXT_FIELD'
,p_cSize=>30
,p_cMaxlength=>60
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_01=>'N'
,p_attribute_02=>'N'
,p_attribute_04=>'TEXT'
,p_attribute_05=>'NONE'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(50088570346941196)
,p_name=>'P34_IEK'
,p_item_sequence=>40
,p_item_plug_id=>wwv_flow_api.id(50086079214941191)
,p_prompt=>'Wiek'
,p_display_as=>'NATIVE_NUMBER_FIELD'
,p_cSize=>30
,p_cMaxlength=>3
,p_field_template=>wwv_flow_api.id(28858144660942645)
,p_item_template_options=>'#DEFAULT#'
,p_attribute_03=>'left'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50979334711490708)
,p_validation_name=>'Pesel wymagany'
,p_validation_sequence=>10
,p_validation=>'P34_ESEL'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>unistr('Pesel jest wymagany, prosz\0119 uzupe\0142ni\0107')
,p_when_button_pressed=>wwv_flow_api.id(50086530838941192)
,p_associated_item=>wwv_flow_api.id(50087340086941194)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50979447351490709)
,p_validation_name=>'Imie wymagane'
,p_validation_sequence=>20
,p_validation=>'P34_MIE'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>unistr('Imi\0119 jest wymagane, prosz\0119 uzupe\0142ni\0107')
,p_when_button_pressed=>wwv_flow_api.id(50086530838941192)
,p_associated_item=>wwv_flow_api.id(50087735658941195)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50979592128490710)
,p_validation_name=>'Nazwisko wymagane'
,p_validation_sequence=>30
,p_validation=>'P34_AZWISKO'
,p_validation_type=>'ITEM_NOT_NULL_OR_ZERO'
,p_error_message=>unistr('Nazwisko jest wymagane, prosz\0119 uzupe\0142ni\0107')
,p_when_button_pressed=>wwv_flow_api.id(50086530838941192)
,p_associated_item=>wwv_flow_api.id(50088142839941195)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50979795789490712)
,p_validation_name=>'Klucz podstawowy'
,p_validation_sequence=>40
,p_validation=>'SELECT * FROM Pracownik WHERE pesel= :P34_ESEL'
,p_validation_type=>'NOT_EXISTS'
,p_error_message=>unistr('Pesel jest ju\017C w bazie danych')
,p_when_button_pressed=>wwv_flow_api.id(50086530838941192)
,p_associated_item=>wwv_flow_api.id(50087340086941194)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(50979875528490713)
,p_validation_name=>unistr('Wiek z przedzia\0142u')
,p_validation_sequence=>50
,p_validation=>wwv_flow_string.join(wwv_flow_t_varchar2(
'IF :P34_IEK BETWEEN 18 and 120 OR :P34_IEK IS NULL THEN',
'  RETURN TRUE;',
'ELSE',
'RETURN FALSE;',
'END IF;'))
,p_validation2=>'PLSQL'
,p_validation_type=>'FUNC_BODY_RETURNING_BOOLEAN'
,p_error_message=>unistr('Wiek musi by\0107 liczb\0105 z przedzia\0142u od 18 do 120')
,p_when_button_pressed=>wwv_flow_api.id(50086530838941192)
,p_associated_item=>wwv_flow_api.id(50088570346941196)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(50088960541941196)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_process_type=>'NATIVE_PLSQL'
,p_process_name=>'Run Stored Procedure'
,p_process_sql_clob=>wwv_flow_string.join(wwv_flow_t_varchar2(
'"#OWNER#"."DODAJNOWYKIEROWCA"(',
'"VPESEL" => :P34_ESEL,',
'"VIMIE" => :P34_MIE,',
'"VNAZWISKO" => :P34_AZWISKO,',
'"VWIEK" => :P34_IEK);'))
,p_process_clob_language=>'PLSQL'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
,p_process_when_button_id=>wwv_flow_api.id(50086530838941192)
);
wwv_flow_api.component_end;
end;
/
