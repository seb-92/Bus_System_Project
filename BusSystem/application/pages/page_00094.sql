prompt --application/pages/page_00094
begin
--   Manifest
--     PAGE: 00094
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
 p_id=>94
,p_user_interface_id=>wwv_flow_api.id(28885432899942659)
,p_name=>'Edycja pracownika'
,p_alias=>'EDYCJA-PRACOWNIKA'
,p_step_title=>'Edycja pracownika'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20230124212251'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(51766604515919410)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(28793988802942613)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>'PRACOWNIK'
,p_include_rowid_column=>false
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Report 1'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(51767050628919410)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:95:&SESSION.::&DEBUG.:RP:P95_PESEL:\#PESEL#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'JAKUB.CZAJKA@STUDENT.PUT.POZNAN.PL'
,p_internal_uid=>51767050628919410
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51767127713919411)
,p_db_column_name=>'PESEL'
,p_display_order=>1
,p_column_identifier=>'A'
,p_column_label=>'Pesel'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51767524816919411)
,p_db_column_name=>unistr('IMI\0118')
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>unistr('Imi\0119')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51767920169919411)
,p_db_column_name=>'NAZWISKO'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Nazwisko'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51768357580919411)
,p_db_column_name=>unistr('ZAW\00D3D')
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>unistr('Zaw\00F3d')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51768744424919412)
,p_db_column_name=>'WYNAGRODZENIE'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Wynagrodzenie'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(51769157702919412)
,p_db_column_name=>'WIEK'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Wiek'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(51785189764948385)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'517852'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>unistr('PESEL:IMI\0118:NAZWISKO:ZAW\00D3D:WYNAGRODZENIE:WIEK')
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(51769681909919412)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(51766604515919410)
,p_button_name=>'Edycja'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Wy\0142\0105cz edycje danych')
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:2:&SESSION.::&DEBUG.:95::'
,p_grid_new_row=>'Y'
);
wwv_flow_api.component_end;
end;
/
