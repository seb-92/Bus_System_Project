prompt --application/pages/page_00029
begin
--   Manifest
--     PAGE: 00029
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
 p_id=>29
,p_user_interface_id=>wwv_flow_api.id(28885432899942659)
,p_name=>'Dodaj bilet do biletomatu'
,p_alias=>'DODAJ-BILET-DO-BILETOMATU'
,p_step_title=>'Dodaj bilet do biletomatu'
,p_autocomplete_on_off=>'OFF'
,p_javascript_code=>'var htmldb_delete_message=''"DELETE_CONFIRM_MSG"'';'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'JAKUB.CZAJKA@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20230125032041'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49659387313102157)
,p_plug_name=>'Dodaj bilet do biletomatu'
,p_region_template_options=>'#DEFAULT#:t-Region--scrollBody'
,p_plug_template=>wwv_flow_api.id(28795817095942614)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'RELACJA BILET-BILETOMAT'
,p_include_rowid_column=>false
,p_is_editable=>true
,p_edit_operations=>'i:u:d'
,p_lost_update_check_type=>'VALUES'
,p_plug_source_type=>'NATIVE_FORM'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(49661777478102159)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(49659387313102157)
,p_button_name=>'CANCEL'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_image_alt=>unistr('Powr\00F3t')
,p_button_position=>'REGION_TEMPLATE_CLOSE'
,p_button_redirect_url=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.:::'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(49663355418102160)
,p_button_sequence=>40
,p_button_plug_id=>wwv_flow_api.id(49659387313102157)
,p_button_name=>'CREATE'
,p_button_action=>'SUBMIT'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_is_hot=>'Y'
,p_button_image_alt=>'Dodaj'
,p_button_position=>'REGION_TEMPLATE_CREATE'
,p_button_condition=>unistr('P29_BILETOMAT_NUMER_IDENTYFIKUJ\0104CY')
,p_button_condition_type=>'ITEM_IS_NULL'
,p_database_action=>'INSERT'
);
wwv_flow_api.create_page_branch(
 p_id=>wwv_flow_api.id(49663667192102161)
,p_branch_action=>'f?p=&APP_ID.:28:&SESSION.::&DEBUG.&success_msg=#SUCCESS_MSG#'
,p_branch_point=>'AFTER_PROCESSING'
,p_branch_type=>'REDIRECT_URL'
,p_branch_sequence=>1
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49659693018102157)
,p_name=>unistr('P29_BILETOMAT_NUMER_IDENTYFIKUJ\0104CY')
,p_source_data_type=>'NUMBER'
,p_is_primary_key=>true
,p_item_sequence=>10
,p_item_plug_id=>wwv_flow_api.id(49659387313102157)
,p_item_source_plug_id=>wwv_flow_api.id(49659387313102157)
,p_prompt=>unistr('Numer identyfikuj\0105cy biletomatu')
,p_source=>unistr('BILETOMAT_NUMER_IDENTYFIKUJ\0104CY')
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>unistr('SELECT numer_identyfikuj\0105cy as d, numer_identyfikuj\0105cy r FROM biletomat ORDER BY 1;')
,p_lov_display_null=>'YES'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_item(
 p_id=>wwv_flow_api.id(49660045930102158)
,p_name=>'P29_BILET_RODZAJ_ULGI'
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>20
,p_item_plug_id=>wwv_flow_api.id(49659387313102157)
,p_item_source_plug_id=>wwv_flow_api.id(49659387313102157)
,p_prompt=>'Rodzaj ulgi biletu'
,p_source=>'BILET_RODZAJ_ULGI'
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('SELECT UNIQUE rodzaj_ulgi || '' ('' || (LISTAGG(distinct okres_obowi\0105zywania, '', '') WITHIN GROUP (ORDER BY okres_obowi\0105zywania)) || '')'' d, rodzaj_ulgi r FROM bilet_kr\00F3tkookresowy WHERE (rodzaj_ulgi || '' ('' || okres_obowi\0105zywania || '')'' ) '),
unistr('NOT IN (SELECT UNIQUE bilet_rodzaj_ulgi || '' ('' || bilet_okres_obowi\0105zywania || '')'' '),
'        FROM "RELACJA BILET-BILETOMAT"',
unistr('        WHERE biletomat_numer_identyfikuj\0105cy = :"P29_BILETOMAT_NUMER_IDENTYFIKUJ\0104CY") GROUP BY rodzaj_ulgi ORDER BY 1;')))
,p_lov_cascade_parent_items=>unistr('P29_BILETOMAT_NUMER_IDENTYFIKUJ\0104CY')
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
 p_id=>wwv_flow_api.id(49660405311102158)
,p_name=>unistr('P29_BILET_OKRES_OBOWI\0104ZYWANIA')
,p_source_data_type=>'VARCHAR2'
,p_is_primary_key=>true
,p_item_sequence=>30
,p_item_plug_id=>wwv_flow_api.id(49659387313102157)
,p_item_source_plug_id=>wwv_flow_api.id(49659387313102157)
,p_prompt=>unistr('Okres obowi\0105zywania')
,p_source=>unistr('BILET_OKRES_OBOWI\0104ZYWANIA')
,p_source_type=>'REGION_SOURCE_COLUMN'
,p_display_as=>'NATIVE_SELECT_LIST'
,p_lov=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('SELECT UNIQUE okres_obowi\0105zywania d, okres_obowi\0105zywania r FROM bilet_kr\00F3tkookresowy WHERE okres_obowi\0105zywania'),
unistr('NOT IN (SELECT UNIQUE bilet_okres_obowi\0105zywania FROM "RELACJA BILET-BILETOMAT"'),
unistr('     WHERE biletomat_numer_identyfikuj\0105cy = :"P29_BILETOMAT_NUMER_IDENTYFIKUJ\0104CY" AND BILET_RODZAJ_ULGI = :"P29_BILET_RODZAJ_ULGI") ORDER BY 1;')))
,p_lov_cascade_parent_items=>unistr('P29_BILET_RODZAJ_ULGI,P29_BILETOMAT_NUMER_IDENTYFIKUJ\0104CY')
,p_ajax_optimize_refresh=>'Y'
,p_cHeight=>1
,p_field_template=>wwv_flow_api.id(28858235150942645)
,p_item_template_options=>'#DEFAULT#'
,p_is_persistent=>'N'
,p_lov_display_extra=>'NO'
,p_attribute_01=>'NONE'
,p_attribute_02=>'N'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(52117932932073939)
,p_validation_name=>'Not null'
,p_validation_sequence=>10
,p_validation=>unistr('P29_BILETOMAT_NUMER_IDENTYFIKUJ\0104CY')
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Numer identyfikuj\0105cy nie mo\017Ce by\0107 pusty')
,p_when_button_pressed=>wwv_flow_api.id(49663355418102160)
,p_associated_item=>wwv_flow_api.id(49659693018102157)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(52118008436073940)
,p_validation_name=>'Not null ulga'
,p_validation_sequence=>20
,p_validation=>'P29_BILET_RODZAJ_ULGI'
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Rodzaj ulgi nie mo\017Ce by\0107 pusty')
,p_when_button_pressed=>wwv_flow_api.id(49663355418102160)
,p_associated_item=>wwv_flow_api.id(49660045930102158)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_validation(
 p_id=>wwv_flow_api.id(52118199189073941)
,p_validation_name=>'Not null okres'
,p_validation_sequence=>30
,p_validation=>unistr('P29_BILET_OKRES_OBOWI\0104ZYWANIA')
,p_validation_type=>'ITEM_NOT_NULL'
,p_error_message=>unistr('Okres obowi\0105zywania nie mo\017Ce by\0107 pusty')
,p_when_button_pressed=>wwv_flow_api.id(49663355418102160)
,p_associated_item=>wwv_flow_api.id(49660405311102158)
,p_error_display_location=>'INLINE_WITH_FIELD'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(49664557041102161)
,p_process_sequence=>10
,p_process_point=>'AFTER_SUBMIT'
,p_region_id=>wwv_flow_api.id(49659387313102157)
,p_process_type=>'NATIVE_FORM_DML'
,p_process_name=>'Process form Dodaj bilet do biletomatu'
,p_attribute_01=>'REGION_SOURCE'
,p_attribute_05=>'Y'
,p_attribute_06=>'Y'
,p_attribute_08=>'Y'
,p_error_display_location=>'INLINE_IN_NOTIFICATION'
);
wwv_flow_api.create_page_process(
 p_id=>wwv_flow_api.id(49664188073102161)
,p_process_sequence=>10
,p_process_point=>'BEFORE_HEADER'
,p_region_id=>wwv_flow_api.id(49659387313102157)
,p_process_type=>'NATIVE_FORM_INIT'
,p_process_name=>'Initialize form Dodaj bilet do biletomatu'
);
wwv_flow_api.component_end;
end;
/
