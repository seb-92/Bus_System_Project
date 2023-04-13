prompt --application/pages/page_00200
begin
--   Manifest
--     PAGE: 00200
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
 p_id=>200
,p_user_interface_id=>wwv_flow_api.id(28885432899942659)
,p_name=>'Edycja Biletu'
,p_alias=>'EDYCJA-BILETU'
,p_step_title=>'Edycja Biletu'
,p_autocomplete_on_off=>'OFF'
,p_page_template_options=>'#DEFAULT#'
,p_protection_level=>'C'
,p_last_updated_by=>'ADMIN'
,p_last_upd_yyyymmddhh24miss=>'20230125024004'
);
wwv_flow_api.create_page_plug(
 p_id=>wwv_flow_api.id(52686735632847391)
,p_plug_name=>'Report 1'
,p_region_template_options=>'#DEFAULT#'
,p_plug_template=>wwv_flow_api.id(28793988802942613)
,p_plug_display_sequence=>10
,p_plug_display_point=>'BODY'
,p_query_type=>'TABLE'
,p_query_table=>unistr('BILET_KR\00D3TKOOKRESOWY')
,p_include_rowid_column=>true
,p_plug_source_type=>'NATIVE_IR'
,p_prn_page_header=>'Report 1'
);
wwv_flow_api.create_worksheet(
 p_id=>wwv_flow_api.id(52687120791847391)
,p_name=>'Report 1'
,p_max_row_count_message=>'The maximum row count for this report is #MAX_ROW_COUNT# rows.  Please apply a filter to reduce the number of records in your query.'
,p_no_data_found_message=>'No data found.'
,p_pagination_type=>'ROWS_X_TO_Y'
,p_pagination_display_pos=>'BOTTOM_RIGHT'
,p_report_list_mode=>'TABS'
,p_lazy_loading=>false
,p_show_detail_link=>'C'
,p_download_formats=>'CSV:HTML:EMAIL:XLSX:PDF:RTF'
,p_detail_link=>'f?p=&APP_ID.:201:&SESSION.::&DEBUG.:RP:P201_ROWID:\#ROWID#\'
,p_detail_link_text=>'<span aria-label="Edit"><span class="fa fa-edit" aria-hidden="true" title="Edit"></span></span>'
,p_owner=>'JAKUB.CZAJKA@STUDENT.PUT.POZNAN.PL'
,p_internal_uid=>52687120791847391
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52687214003847391)
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
 p_id=>wwv_flow_api.id(52687630270847391)
,p_db_column_name=>'RODZAJ_ULGI'
,p_display_order=>2
,p_column_identifier=>'B'
,p_column_label=>'Rodzaj Ulgi'
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52688090588847391)
,p_db_column_name=>unistr('OKRES_OBOWI\0104ZYWANIA')
,p_display_order=>3
,p_column_identifier=>'C'
,p_column_label=>unistr('Okres Obowi\0105zywania')
,p_column_type=>'STRING'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_column(
 p_id=>wwv_flow_api.id(52688454453847392)
,p_db_column_name=>'CENA'
,p_display_order=>4
,p_column_identifier=>'D'
,p_column_label=>'Cena'
,p_column_type=>'NUMBER'
,p_column_alignment=>'CENTER'
);
wwv_flow_api.create_worksheet_rpt(
 p_id=>wwv_flow_api.id(52690439887851677)
,p_application_user=>'APXWS_DEFAULT'
,p_report_seq=>10
,p_report_alias=>'526905'
,p_status=>'PUBLIC'
,p_is_default=>'Y'
,p_report_columns=>unistr('ROWID:RODZAJ_ULGI:OKRES_OBOWI\0104ZYWANIA:CENA')
);
wwv_flow_api.create_page_button(
 p_id=>wwv_flow_api.id(52688952025847392)
,p_button_sequence=>10
,p_button_plug_id=>wwv_flow_api.id(52686735632847391)
,p_button_name=>'Edycja'
,p_button_action=>'REDIRECT_PAGE'
,p_button_template_options=>'#DEFAULT#'
,p_button_template_id=>wwv_flow_api.id(28860955421942646)
,p_button_is_hot=>'Y'
,p_button_image_alt=>unistr('Wy\0142\0105cz edycje')
,p_button_position=>'BODY'
,p_button_redirect_url=>'f?p=&APP_ID.:9:&SESSION.::&DEBUG.:201::'
,p_grid_new_row=>'Y'
);
wwv_flow_api.component_end;
end;
/
