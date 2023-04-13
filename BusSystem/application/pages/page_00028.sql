prompt --application/pages/page_00028
begin
--   Manifest
--     PAGE: 00028
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
 p_id=>28
,p_user_interface_id=>wwv_flow_api.id(28885432899942659)
,p_name=>unistr('Sprzeda\017C bilet\00F3w')
,p_alias=>unistr('SPRZEDA\017B-BILET\00D3W')
,p_step_title=>unistr('Sprzeda\017C bilet\00F3w')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_last_updated_by=>'JAKUB.CZAJKA@STUDENT.PUT.POZNAN.PL'
,p_last_upd_yyyymmddhh24miss=>'20230125030516'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(49635845857800285)
,p_plug_name=>unistr('Sprzeda\017C bilet\00F3w')
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(28793988802942613)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'SQL'
,p_plug_source=>wwv_flow_string.join(wwv_flow_t_varchar2(
unistr('SELECT biletomat_numer_identyfikuj\0105cy as "Numer biletomatu", LISTAGG(distinct bilet_rodzaj_ulgi || '' ('' || bilet_okres_obowi\0105zywania || '')'', '', '') WITHIN GROUP (ORDER BY bilet_rodzaj_ulgi) AS "Bilety"'),
'FROM "RELACJA BILET-BILETOMAT"',
unistr('JOIN bilet_kr\00F3tkookresowy ON bilet_rodzaj_ulgi=bilet_kr\00F3tkookresowy.rodzaj_ulgi'),
unistr('GROUP BY biletomat_numer_identyfikuj\0105cy')))
,p_plug_source_type=>'NATIVE_IR'
,p_plug_query_options=>'DERIVED_REPORT_COLUMNS'
,p_prn_page_header=>unistr('Sprzeda\017C bilet\00F3w')
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(49635995133800285)
,p_name=>unistr('Sprzeda\017C bilet\00F3w')
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'N'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_owner=>'JAKUB.CZAJKA@STUDENT.PUT.POZNAN.PL'
,p_internal_uid=>49635995133800285
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(46645066780102833)
,p_db_column_name=>'Numer biletomatu'
,p_display_order=>10
,p_column_identifier=>'F'
,p_column_label=>'Numer Biletomatu'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(46645172073102834)
,p_db_column_name=>'Bilety'
,p_display_order=>20
,p_column_identifier=>'G'
,p_column_label=>unistr('Dost\0119pne bilety')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(49642320698862549)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'496424'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>'Numer biletomatu:Bilety'
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52117404130073934)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(49635845857800285)
,p_button_name=>'Edycja'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('W\0142\0105cz edycje danych')
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:204:&SESSION.::&DEBUG.:::'
,p_grid_new_row=>'Y'
);
wwv_flow_api.component_end;
end;
/
