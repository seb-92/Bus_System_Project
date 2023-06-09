prompt --application/pages/page_00102
begin
--   Manifest
--     PAGE: 00102
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
 p_id=>102
,p_user_interface_id=>wwv_flow_api.id(28885432899942659)
,p_name=>unistr('Edycja Przegl\0105du')
,p_alias=>unistr('EDYCJA-PRZEGL\0104DU')
,p_step_title=>unistr('Edycja Przegl\0105du')
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20230125003119'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(52103290156033755)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(28793988802942613)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>unistr('PRZEGL\0104D_POJAZDU')
,p_include_rowid_column=>true
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Report 1'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(52103685712033755)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:103:&SESSION.::&DEBUG.:RP:P103_ROWID:\#ROWID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'JAKUB.CZAJKA@STUDENT.PUT.POZNAN.PL'
,p_internal_uid=>52103685712033755
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52103730485033756)
,p_db_column_name=>'ROWID'
,p_display_order=>0
,p_column_identifier=>'A'
,p_column_label=>'ROWID'
,p_allow_sorting=>'N'
,p_allow_filtering=>'N'
,p_allow_highlighting=>'N'
,p_allow_ctrl_breaks=>'N'
,p_allow_aggregations=>'N'
,p_allow_computations=>'N'
,p_allow_charting=>'N'
,p_allow_group_by=>'N'
,p_allow_pivot=>'N'
,p_column_type=>'OTHER'
,p_display_text_as=>'HIDDEN'
,p_heading_alignment=>'LEFT'
,p_tz_dependent=>'N'
,p_rpt_show_filter_lov=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52104195543033756)
,p_db_column_name=>unistr('DATA_PRZEGL\0104DU')
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>unistr('Data Przegl\0105du')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52104516295033757)
,p_db_column_name=>'OCENA_STANU_POJAZDU'
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>'Ocena Stanu Pojazdu'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52104939746033757)
,p_db_column_name=>unistr('DATA_NAST\0118PNEGO_PRZEGL\0104DU')
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>unistr('Data Nast\0119pnego Przegl\0105du')
,p_column_type=>'DATE'
,p_column_alignment=>'CENTER'
,p_tz_dependent=>'N'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52105391625033757)
,p_db_column_name=>'PRACOWNIK_PESEL'
,p_display_order=>5
,p_column_identifier=>'E'
,p_column_label=>'Pracownik Pesel'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52105790226033757)
,p_db_column_name=>'AUTOBUS_NUMER_REJESTRACYJNY'
,p_display_order=>6
,p_column_identifier=>'F'
,p_column_label=>'Autobus Numer Rejestracyjny'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(52121388789079156)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'521214'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>unistr('ROWID:DATA_PRZEGL\0104DU:OCENA_STANU_POJAZDU:DATA_NAST\0118PNEGO_PRZEGL\0104DU:PRACOWNIK_PESEL:AUTOBUS_NUMER_REJESTRACYJNY')
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52106211909033758)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(52103290156033755)
,p_button_name=>'Edycja'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Wy\0142\0105cz edycje danych')
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:7:&SESSION.::&DEBUG.:103::'
,p_grid_new_row=>'Y'
);
wwv_flow_api.component_end;
end;
/
